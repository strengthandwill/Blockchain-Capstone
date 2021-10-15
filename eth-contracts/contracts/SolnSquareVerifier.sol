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
        uint[2]  a;
        uint[2]  a_p;
        uint[2][2]  b;
        uint[2]  b_p;
        uint[2]  c;
        uint[2]  c_p;
        uint[2]  h;
        uint[2]  k;
        uint[2]  input;
        address to;
        uint256 tokenId;
    }


    // define an array of the above struct
    mapping(bytes32 => Solution) solutions;


    // define a mapping to store unique solutions submitted
    mapping(bytes32 => bool) uniqueSolutions;


    // Create an event to emit when a solution is added
    event SolutionAdded(address to, uint256 tokenId);



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
        address to, 
        uint256 tokenId
    ) public returns (bool) {

        Solution memory solution = Solution({
            a: a, 
            a_p: a_p, 
            b: b, 
            b_p: b_p, 
            c: c, 
            c_p: c_p,
            h: h, 
            k: k, 
            input: input, 
            to: to, 
            tokenId: tokenId
        });

        bytes32 key = keccak256(abi.encodePacked(
            a, 
            a_p, 
            b, 
            b_p, 
            c, 
            c_p,
            h, 
            k, 
            input, 
            to, 
            tokenId
        ));

        solutions[key] = solution;
        uniqueSolutions[key] = true;
        emit SolutionAdded(to, tokenId);

        return true;
    }

    // Create a function to mint new NFT only after the solution has been verified
    //  - make sure the solution is unique (has not been used before)
    //  - make sure you handle metadata as well as tokenSuplly
    function mintVerified(
        bytes32 key,
        address to, 
        uint256 tokenId
    ) public returns (bool) {

        require(!uniqueSolutions[key], "Solution must be unique");

        Solution memory solution = solutions[key];

        if(verifier.verifyTx(
            solution.a, 
            solution.a_p, 
            solution.b, 
            solution.b_p, 
            solution.c, 
            solution.c_p,
            solution.h, 
            solution.k, 
            solution.input
        )) {
            super.mint(to, tokenId);
            return true;
        } else {
            return false;
        }
    }
}


























