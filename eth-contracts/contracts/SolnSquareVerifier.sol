pragma solidity >=0.4.21 <0.6.0;

import "./ERC721Mintable.sol";
import "./Verifier.sol";

// define a contract call to the zokrates generated solidity contract <Verifier> or <renamedVerifier>
contract SquareVerifier is Verifier { }



// define another contract named SolnSquareVerifier that inherits from your ERC721Mintable class
contract SolnSquareVerifier is ERC721Mintable {
    SquareVerifier public verifier;

    constructor(address verifierAddress) ERC721Mintable() public{
        verifier = SquareVerifier(verifierAddress);
    }

    // define a solutions struct that can hold an index & an address
    struct Solution {
        uint256 index;
        address addr;        
    }


    // define an array of the above struct
    Solution[] solutions;


    // define a mapping to store unique solutions submitted
    mapping(bytes32 => bool) uniqueSolutions;


    // Create an event to emit when a solution is added
    event SolutionAdded(uint256 index, address addr);
    event Log(string message);
    event Log(uint[2] message);
    event Log(bool message);


    // Create a function to add the solutions to the array and emit the event
    function addSolution(
        bytes32 key, 
        uint256 index,
        address addr        
    ) public {

        Solution memory solution = Solution({
            index: index, 
            addr: addr
        });
        solutions.push(solution);
        uniqueSolutions[key] = true;
        emit SolutionAdded(index, addr);
    }

    // Create a function to mint new NFT only after the solution has been verified
    //  - make sure the solution is unique (has not been used before)
    //  - make sure you handle metadata as well as tokenSuplly
    function mintToken(
        uint[2] memory a, 
        uint[2] memory a_p, 
        uint[2][2] memory b, 
        uint[2] memory b_p, 
        uint[2] memory c, 
        uint[2] memory c_p,
        uint[2] memory h, 
        uint[2] memory k, 
        uint[2] memory input,
        uint256 index,
        address addr  
    ) public returns (bool) {
        bytes32 key = getKey(a, a_p, b, b_p, c, c_p, h, k, input);

        require(!uniqueSolutions[key], "Solution must be unique");
        require(verifier.verifyTx(a, a_p, b, b_p, c, c_p, h, k, input), "Solution must be verified");

        super.mint(addr, index);
        addSolution(key, index, addr);        
    }

    // Get key of solution
    function getKey(
        uint[2] memory a, 
        uint[2] memory a_p, 
        uint[2][2] memory b, 
        uint[2] memory b_p, 
        uint[2] memory c, 
        uint[2] memory c_p,
        uint[2] memory h, 
        uint[2] memory k, 
        uint[2] memory input
    ) pure public returns (bytes32) {

        return keccak256(abi.encodePacked(
            a, 
            a_p, 
            b, 
            b_p, 
            c, 
            c_p,
            h, 
            k, 
            input            
        ));
    }

    // Check if solution is added or not
    function isSolution(bytes32 key) view public returns (bool) {
        return uniqueSolutions[key];
    }
}


























