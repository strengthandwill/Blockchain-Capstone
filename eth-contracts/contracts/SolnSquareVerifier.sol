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
        bytes32 index;
        address addr;
        uint256 tokenId;
        bool isVerified;
    }


    // define an array of the above struct
    mapping(uint256 => Solution) solutions;


    // define a mapping to store unique solutions submitted
    mapping(bytes32 => bool) uniqueSolutions;


    // Create an event to emit when a solution is added
    event SolutionAdded(bytes32 index, address addr, uint256 tokenId);
    event Log(string message);
    event Log(uint[2] message);
    event Log(bool message);


    // Create a function to add the solutions to the array and emit the event
    function addSolution(
        uint[2] memory a, 
        uint[2] memory a_p, 
        uint[2][2] memory b, 
        uint[2] memory b_p, 
        uint[2] memory c, 
        uint[2] memory c_p,
        uint[2] memory h, 
        uint[2] memory k, 
        uint[2] memory input,                
        uint256 tokenId
    ) public {
        bytes32 index = keccak256(abi.encodePacked(a, a_p, b, b_p, c, c_p, h, k, input));
        require(!uniqueSolutions[index], "Solution must be unique");

        require(verifier.verifyTx(a, a_p, b, b_p, c, c_p, h, k, input), "Solution must be verified");
        
        Solution memory solution = Solution({
            index: index, 
            addr: msg.sender,
            tokenId: tokenId,
            isVerified: true
        });        
        solutions[tokenId] = solution;
        uniqueSolutions[index] = true;
        emit SolutionAdded(solution.index, solution.addr, solution.tokenId);
    }

    // Create a function to mint new NFT only after the solution has been verified
    //  - make sure the solution is unique (has not been used before)
    //  - make sure you handle metadata as well as tokenSuplly
    function mintToken(address to, uint256 tokenId) public returns (bool) {
        require(solutions[tokenId].isVerified, "Solution must be verified");
        require(solutions[tokenId].addr == to, "Token owner must be the owner");            
        
        super.mint(to, tokenId);        
    }
}


























