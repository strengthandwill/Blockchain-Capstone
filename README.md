# Udacity Blockchain Capstone

The capstone will build upon the knowledge you have gained in the course in order to build a decentralized housing product. 



# Setup the application

1. Go to solidity project and install dependencies
    ```
    npm install
    ```
2. Create .env for environment variables
    ```
    INFURA_KEY = <your_infura_key>
    MNEMONIC = <your_mnemonic_key>
    ```



# Test the application

1. Start Ganache on port 8585
2. Goto directory eth-contracts
    ```
    cd eth-contracts
    ```
3. Compile contracts
    ```
    truffle compile
    ```
4. Migrate contracts
    ```
    truffle migrate --reset
    ```    
5. Run tests truffle test . All tests must pass
    ```
    truffle test
    ```
    ![](/images/tests.png)



# Deploy the application
1. Migrate to rinkeby network
    ```
    truffle migrate --network rinkeby --reset
    ```
2. Run minting script in order to mint 10 tokens
    ```
    node script/mint.js
    ```



# Contract Address

* ERC721Mintable: [0x9748519d18273EF5182ef7f8b01bb07AeB949A75](https://rinkeby.etherscan.io/address/0x9748519d18273EF5182ef7f8b01bb07AeB949A75)
* SquareVerifier: [0x02aF8Be2C2840e4E6c693f71Aaa6A8a2fC05D418](https://rinkeby.etherscan.io/address/0x02aF8Be2C2840e4E6c693f71Aaa6A8a2fC05D418)
* SolnSquareVerifier: [0xc8980a5fe65267b29561F29Bcf273Dea3F55d76A](https://rinkeby.etherscan.io/address/0xc8980a5fe65267b29561F29Bcf273Dea3F55d76A)



# Opensea
* Storefront: [udacity-boyraxnpft](https://testnets.opensea.io/collection/udacity-boyraxnpft)
* Asset #1: [0xd8a1e0322c823087d91aaacf290ea5341c208417/1](https://testnets.opensea.io/assets/0xd8a1e0322c823087d91aaacf290ea5341c208417/1)
    * Sold Txn: [0xd0f522efe063b0c9c940a5c927d8b2aeeb0bd5039d76d39e9960c3cd095ee2c0](https://rinkeby.etherscan.io/tx/0xd0f522efe063b0c9c940a5c927d8b2aeeb0bd5039d76d39e9960c3cd095ee2c0)
* Asset #2: [0xd8a1e0322c823087d91aaacf290ea5341c208417/2](https://testnets.opensea.io/assets/0xd8a1e0322c823087d91aaacf290ea5341c208417/2)
    * Sold Txn: [0x4bd1a07ecb0d50b6ef525a086e7f312e21b032f1ebf05fc96f71c08ab11d20c3](https://rinkeby.etherscan.io/tx/0x4bd1a07ecb0d50b6ef525a086e7f312e21b032f1ebf05fc96f71c08ab11d20c3)
* Asset #3: [0xd8a1e0322c823087d91aaacf290ea5341c208417/3](https://testnets.opensea.io/assets/0xd8a1e0322c823087d91aaacf290ea5341c208417/3)
    * Sold Txn: [0x11a490e0bf1a58b582fa2d79c2c5cd709f4adea4329bd202719d706a219749a6](https://rinkeby.etherscan.io/tx/0x11a490e0bf1a58b582fa2d79c2c5cd709f4adea4329bd202719d706a219749a6)
* Asset #4: [0xd8a1e0322c823087d91aaacf290ea5341c208417/4](https://testnets.opensea.io/assets/0xd8a1e0322c823087d91aaacf290ea5341c208417/4)
    * Sold Txn: [0x58760b5c3e94ac7a98d9699e30f1011ec597947b9cba1386788e4902bf7f9494](https://rinkeby.etherscan.io/tx/0x58760b5c3e94ac7a98d9699e30f1011ec597947b9cba1386788e4902bf7f9494)
* Asset #5: [0xd8a1e0322c823087d91aaacf290ea5341c208417/5](https://testnets.opensea.io/assets/0xd8a1e0322c823087d91aaacf290ea5341c208417/5)
    * Sold Tx: [0x5b1192c2880fc029698216de7c0df54c1ff911872284776c20a7e9fc823499bd](https://rinkeby.etherscan.io/tx/0x5b1192c2880fc029698216de7c0df54c1ff911872284776c20a7e9fc823499bd)
* Asset #6: [0xd8a1e0322c823087d91aaacf290ea5341c208417/6](https://testnets.opensea.io/assets/0xd8a1e0322c823087d91aaacf290ea5341c208417/6)
* Asset #7: [0xd8a1e0322c823087d91aaacf290ea5341c208417/7](https://testnets.opensea.io/assets/0xd8a1e0322c823087d91aaacf290ea5341c208417/7)
* Asset #8: [0xd8a1e0322c823087d91aaacf290ea5341c208417/8](https://testnets.opensea.io/assets/0xd8a1e0322c823087d91aaacf290ea5341c208417/8)
* Asset #9: [0xd8a1e0322c823087d91aaacf290ea5341c208417/9](https://testnets.opensea.io/assets/0xd8a1e0322c823087d91aaacf290ea5341c208417/9)
* Asset #10: [0xd8a1e0322c823087d91aaacf290ea5341c208417/10](https://testnets.opensea.io/assets/0xd8a1e0322c823087d91aaacf290ea5341c208417/10)

# ABIs

## ERC721Mintable

```
[
    {
    "constant": true,
    "inputs": [
        {
        "name": "interfaceId",
        "type": "bytes4"
        }
    ],
    "name": "supportsInterface",
    "outputs": [
        {
        "name": "",
        "type": "bool"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0x01ffc9a7"
    },
    {
    "constant": true,
    "inputs": [],
    "name": "name",
    "outputs": [
        {
        "name": "",
        "type": "string"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0x06fdde03"
    },
    {
    "constant": true,
    "inputs": [
        {
        "name": "tokenId",
        "type": "uint256"
        }
    ],
    "name": "getApproved",
    "outputs": [
        {
        "name": "",
        "type": "address"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0x081812fc"
    },
    {
    "constant": false,
    "inputs": [
        {
        "name": "to",
        "type": "address"
        },
        {
        "name": "tokenId",
        "type": "uint256"
        }
    ],
    "name": "approve",
    "outputs": [],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "function",
    "signature": "0x095ea7b3"
    },
    {
    "constant": false,
    "inputs": [
        {
        "name": "value",
        "type": "bool"
        }
    ],
    "name": "setPaused",
    "outputs": [],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "function",
    "signature": "0x16c38b3c"
    },
    {
    "constant": true,
    "inputs": [],
    "name": "totalSupply",
    "outputs": [
        {
        "name": "",
        "type": "uint256"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0x18160ddd"
    },
    {
    "constant": false,
    "inputs": [
        {
        "name": "from",
        "type": "address"
        },
        {
        "name": "to",
        "type": "address"
        },
        {
        "name": "tokenId",
        "type": "uint256"
        }
    ],
    "name": "transferFrom",
    "outputs": [],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "function",
    "signature": "0x23b872dd"
    },
    {
    "constant": false,
    "inputs": [
        {
        "name": "_myid",
        "type": "bytes32"
        },
        {
        "name": "_result",
        "type": "string"
        }
    ],
    "name": "__callback",
    "outputs": [],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "function",
    "signature": "0x27dc297e"
    },
    {
    "constant": true,
    "inputs": [
        {
        "name": "owner",
        "type": "address"
        },
        {
        "name": "index",
        "type": "uint256"
        }
    ],
    "name": "tokenOfOwnerByIndex",
    "outputs": [
        {
        "name": "",
        "type": "uint256"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0x2f745c59"
    },
    {
    "constant": false,
    "inputs": [
        {
        "name": "_myid",
        "type": "bytes32"
        },
        {
        "name": "_result",
        "type": "string"
        },
        {
        "name": "_proof",
        "type": "bytes"
        }
    ],
    "name": "__callback",
    "outputs": [],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "function",
    "signature": "0x38bbfa50"
    },
    {
    "constant": false,
    "inputs": [
        {
        "name": "from",
        "type": "address"
        },
        {
        "name": "to",
        "type": "address"
        },
        {
        "name": "tokenId",
        "type": "uint256"
        }
    ],
    "name": "safeTransferFrom",
    "outputs": [],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "function",
    "signature": "0x42842e0e"
    },
    {
    "constant": true,
    "inputs": [
        {
        "name": "index",
        "type": "uint256"
        }
    ],
    "name": "tokenByIndex",
    "outputs": [
        {
        "name": "",
        "type": "uint256"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0x4f6ccce7"
    },
    {
    "constant": true,
    "inputs": [
        {
        "name": "tokenId",
        "type": "uint256"
        }
    ],
    "name": "ownerOf",
    "outputs": [
        {
        "name": "",
        "type": "address"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0x6352211e"
    },
    {
    "constant": true,
    "inputs": [
        {
        "name": "owner",
        "type": "address"
        }
    ],
    "name": "balanceOf",
    "outputs": [
        {
        "name": "",
        "type": "uint256"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0x70a08231"
    },
    {
    "constant": true,
    "inputs": [],
    "name": "symbol",
    "outputs": [
        {
        "name": "",
        "type": "string"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0x95d89b41"
    },
    {
    "constant": false,
    "inputs": [
        {
        "name": "to",
        "type": "address"
        },
        {
        "name": "approved",
        "type": "bool"
        }
    ],
    "name": "setApprovalForAll",
    "outputs": [],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "function",
    "signature": "0xa22cb465"
    },
    {
    "constant": false,
    "inputs": [
        {
        "name": "from",
        "type": "address"
        },
        {
        "name": "to",
        "type": "address"
        },
        {
        "name": "tokenId",
        "type": "uint256"
        },
        {
        "name": "_data",
        "type": "bytes"
        }
    ],
    "name": "safeTransferFrom",
    "outputs": [],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "function",
    "signature": "0xb88d4fde"
    },
    {
    "constant": true,
    "inputs": [
        {
        "name": "tokenId",
        "type": "uint256"
        }
    ],
    "name": "tokenURI",
    "outputs": [
        {
        "name": "",
        "type": "string"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0xc87b56dd"
    },
    {
    "constant": true,
    "inputs": [],
    "name": "contractOwner",
    "outputs": [
        {
        "name": "",
        "type": "address"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0xce606ee0"
    },
    {
    "constant": true,
    "inputs": [],
    "name": "baseTokenURI",
    "outputs": [
        {
        "name": "",
        "type": "string"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0xd547cfb7"
    },
    {
    "constant": true,
    "inputs": [
        {
        "name": "owner",
        "type": "address"
        },
        {
        "name": "operator",
        "type": "address"
        }
    ],
    "name": "isApprovedForAll",
    "outputs": [
        {
        "name": "",
        "type": "bool"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0xe985e9c5"
    },
    {
    "constant": false,
    "inputs": [
        {
        "name": "newOwner",
        "type": "address"
        }
    ],
    "name": "transferOwnership",
    "outputs": [],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "function",
    "signature": "0xf2fde38b"
    },
    {
    "inputs": [],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "constructor",
    "signature": "constructor"
    },
    {
    "anonymous": false,
    "inputs": [
        {
        "indexed": true,
        "name": "from",
        "type": "address"
        },
        {
        "indexed": true,
        "name": "to",
        "type": "address"
        },
        {
        "indexed": true,
        "name": "tokenId",
        "type": "uint256"
        }
    ],
    "name": "Transfer",
    "type": "event",
    "signature": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef"
    },
    {
    "anonymous": false,
    "inputs": [
        {
        "indexed": true,
        "name": "owner",
        "type": "address"
        },
        {
        "indexed": true,
        "name": "approved",
        "type": "address"
        },
        {
        "indexed": true,
        "name": "tokenId",
        "type": "uint256"
        }
    ],
    "name": "Approval",
    "type": "event",
    "signature": "0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925"
    },
    {
    "anonymous": false,
    "inputs": [
        {
        "indexed": true,
        "name": "owner",
        "type": "address"
        },
        {
        "indexed": true,
        "name": "operator",
        "type": "address"
        },
        {
        "indexed": false,
        "name": "approved",
        "type": "bool"
        }
    ],
    "name": "ApprovalForAll",
    "type": "event",
    "signature": "0x17307eab39ab6107e8899845ad3d59bd9653f200f220920489ca2b5937696c31"
    },
    {
    "anonymous": false,
    "inputs": [
        {
        "indexed": false,
        "name": "caller",
        "type": "address"
        }
    ],
    "name": "Paused",
    "type": "event",
    "signature": "0x62e78cea01bee320cd4e420270b5ea74000d11b0c9f74754ebdbfc544b05a258"
    },
    {
    "anonymous": false,
    "inputs": [
        {
        "indexed": false,
        "name": "caller",
        "type": "address"
        }
    ],
    "name": "Unpaused",
    "type": "event",
    "signature": "0x5db9ee0a495bf2e6ff9c91a7834c1ba4fdd244a5e8aa4e537bd38aeae4b073aa"
    },
    {
    "anonymous": false,
    "inputs": [
        {
        "indexed": false,
        "name": "owner",
        "type": "address"
        },
        {
        "indexed": false,
        "name": "newOwner",
        "type": "address"
        }
    ],
    "name": "OwnershipTransferred",
    "type": "event",
    "signature": "0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0"
    },
    {
    "constant": false,
    "inputs": [
        {
        "name": "to",
        "type": "address"
        },
        {
        "name": "tokenId",
        "type": "uint256"
        }
    ],
    "name": "mint",
    "outputs": [
        {
        "name": "",
        "type": "bool"
        }
    ],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "function",
    "signature": "0x40c10f19"
    }
]
```



## SquareVerifier

```
[
    {
    "constant": false,
    "inputs": [
        {
        "name": "a",
        "type": "uint256[2]"
        },
        {
        "name": "a_p",
        "type": "uint256[2]"
        },
        {
        "name": "b",
        "type": "uint256[2][2]"
        },
        {
        "name": "b_p",
        "type": "uint256[2]"
        },
        {
        "name": "c",
        "type": "uint256[2]"
        },
        {
        "name": "c_p",
        "type": "uint256[2]"
        },
        {
        "name": "h",
        "type": "uint256[2]"
        },
        {
        "name": "k",
        "type": "uint256[2]"
        },
        {
        "name": "input",
        "type": "uint256[2]"
        }
    ],
    "name": "verifyTx",
    "outputs": [
        {
        "name": "r",
        "type": "bool"
        }
    ],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "function",
    "signature": "0xfe01ff62"
    },
    {
    "anonymous": false,
    "inputs": [
        {
        "indexed": false,
        "name": "s",
        "type": "string"
        }
    ],
    "name": "Verified",
    "type": "event",
    "signature": "0x3f3cfdb26fb5f9f1786ab4f1a1f9cd4c0b5e726cbdfc26e495261731aad44e39"
    }
]
```



## SolnSquareVerifier

```
[
    {
    "constant": true,
    "inputs": [
        {
        "name": "interfaceId",
        "type": "bytes4"
        }
    ],
    "name": "supportsInterface",
    "outputs": [
        {
        "name": "",
        "type": "bool"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0x01ffc9a7"
    },
    {
    "constant": true,
    "inputs": [],
    "name": "name",
    "outputs": [
        {
        "name": "",
        "type": "string"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0x06fdde03"
    },
    {
    "constant": true,
    "inputs": [
        {
        "name": "tokenId",
        "type": "uint256"
        }
    ],
    "name": "getApproved",
    "outputs": [
        {
        "name": "",
        "type": "address"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0x081812fc"
    },
    {
    "constant": false,
    "inputs": [
        {
        "name": "to",
        "type": "address"
        },
        {
        "name": "tokenId",
        "type": "uint256"
        }
    ],
    "name": "approve",
    "outputs": [],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "function",
    "signature": "0x095ea7b3"
    },
    {
    "constant": false,
    "inputs": [
        {
        "name": "value",
        "type": "bool"
        }
    ],
    "name": "setPaused",
    "outputs": [],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "function",
    "signature": "0x16c38b3c"
    },
    {
    "constant": true,
    "inputs": [],
    "name": "totalSupply",
    "outputs": [
        {
        "name": "",
        "type": "uint256"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0x18160ddd"
    },
    {
    "constant": false,
    "inputs": [
        {
        "name": "from",
        "type": "address"
        },
        {
        "name": "to",
        "type": "address"
        },
        {
        "name": "tokenId",
        "type": "uint256"
        }
    ],
    "name": "transferFrom",
    "outputs": [],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "function",
    "signature": "0x23b872dd"
    },
    {
    "constant": false,
    "inputs": [
        {
        "name": "_myid",
        "type": "bytes32"
        },
        {
        "name": "_result",
        "type": "string"
        }
    ],
    "name": "__callback",
    "outputs": [],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "function",
    "signature": "0x27dc297e"
    },
    {
    "constant": true,
    "inputs": [],
    "name": "verifier",
    "outputs": [
        {
        "name": "",
        "type": "address"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0x2b7ac3f3"
    },
    {
    "constant": true,
    "inputs": [
        {
        "name": "owner",
        "type": "address"
        },
        {
        "name": "index",
        "type": "uint256"
        }
    ],
    "name": "tokenOfOwnerByIndex",
    "outputs": [
        {
        "name": "",
        "type": "uint256"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0x2f745c59"
    },
    {
    "constant": false,
    "inputs": [
        {
        "name": "_myid",
        "type": "bytes32"
        },
        {
        "name": "_result",
        "type": "string"
        },
        {
        "name": "_proof",
        "type": "bytes"
        }
    ],
    "name": "__callback",
    "outputs": [],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "function",
    "signature": "0x38bbfa50"
    },
    {
    "constant": false,
    "inputs": [
        {
        "name": "to",
        "type": "address"
        },
        {
        "name": "tokenId",
        "type": "uint256"
        }
    ],
    "name": "mint",
    "outputs": [
        {
        "name": "",
        "type": "bool"
        }
    ],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "function",
    "signature": "0x40c10f19"
    },
    {
    "constant": false,
    "inputs": [
        {
        "name": "from",
        "type": "address"
        },
        {
        "name": "to",
        "type": "address"
        },
        {
        "name": "tokenId",
        "type": "uint256"
        }
    ],
    "name": "safeTransferFrom",
    "outputs": [],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "function",
    "signature": "0x42842e0e"
    },
    {
    "constant": true,
    "inputs": [
        {
        "name": "index",
        "type": "uint256"
        }
    ],
    "name": "tokenByIndex",
    "outputs": [
        {
        "name": "",
        "type": "uint256"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0x4f6ccce7"
    },
    {
    "constant": true,
    "inputs": [
        {
        "name": "tokenId",
        "type": "uint256"
        }
    ],
    "name": "ownerOf",
    "outputs": [
        {
        "name": "",
        "type": "address"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0x6352211e"
    },
    {
    "constant": true,
    "inputs": [
        {
        "name": "owner",
        "type": "address"
        }
    ],
    "name": "balanceOf",
    "outputs": [
        {
        "name": "",
        "type": "uint256"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0x70a08231"
    },
    {
    "constant": true,
    "inputs": [],
    "name": "symbol",
    "outputs": [
        {
        "name": "",
        "type": "string"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0x95d89b41"
    },
    {
    "constant": false,
    "inputs": [
        {
        "name": "to",
        "type": "address"
        },
        {
        "name": "approved",
        "type": "bool"
        }
    ],
    "name": "setApprovalForAll",
    "outputs": [],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "function",
    "signature": "0xa22cb465"
    },
    {
    "constant": false,
    "inputs": [
        {
        "name": "from",
        "type": "address"
        },
        {
        "name": "to",
        "type": "address"
        },
        {
        "name": "tokenId",
        "type": "uint256"
        },
        {
        "name": "_data",
        "type": "bytes"
        }
    ],
    "name": "safeTransferFrom",
    "outputs": [],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "function",
    "signature": "0xb88d4fde"
    },
    {
    "constant": true,
    "inputs": [
        {
        "name": "tokenId",
        "type": "uint256"
        }
    ],
    "name": "tokenURI",
    "outputs": [
        {
        "name": "",
        "type": "string"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0xc87b56dd"
    },
    {
    "constant": true,
    "inputs": [],
    "name": "contractOwner",
    "outputs": [
        {
        "name": "",
        "type": "address"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0xce606ee0"
    },
    {
    "constant": true,
    "inputs": [],
    "name": "baseTokenURI",
    "outputs": [
        {
        "name": "",
        "type": "string"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0xd547cfb7"
    },
    {
    "constant": true,
    "inputs": [
        {
        "name": "owner",
        "type": "address"
        },
        {
        "name": "operator",
        "type": "address"
        }
    ],
    "name": "isApprovedForAll",
    "outputs": [
        {
        "name": "",
        "type": "bool"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0xe985e9c5"
    },
    {
    "constant": false,
    "inputs": [
        {
        "name": "newOwner",
        "type": "address"
        }
    ],
    "name": "transferOwnership",
    "outputs": [],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "function",
    "signature": "0xf2fde38b"
    },
    {
    "inputs": [
        {
        "name": "verifierAddress",
        "type": "address"
        }
    ],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "constructor",
    "signature": "constructor"
    },
    {
    "anonymous": false,
    "inputs": [
        {
        "indexed": false,
        "name": "index",
        "type": "uint256"
        },
        {
        "indexed": false,
        "name": "addr",
        "type": "address"
        }
    ],
    "name": "SolutionAdded",
    "type": "event",
    "signature": "0x078793128cefb19aac38a33f9e5df39f67716907f6d747e8065545699e0b2b8d"
    },
    {
    "anonymous": false,
    "inputs": [
        {
        "indexed": false,
        "name": "message",
        "type": "string"
        }
    ],
    "name": "Log",
    "type": "event",
    "signature": "0xcf34ef537ac33ee1ac626ca1587a0a7e8e51561e5514f8cb36afa1c5102b3bab"
    },
    {
    "anonymous": false,
    "inputs": [
        {
        "indexed": false,
        "name": "message",
        "type": "uint256[2]"
        }
    ],
    "name": "Log",
    "type": "event",
    "signature": "0x63a6e089c18baf5c4f77865170bf6dce5d53fd25a87036dc6727f9a1ba1f4b3a"
    },
    {
    "anonymous": false,
    "inputs": [
        {
        "indexed": false,
        "name": "message",
        "type": "bool"
        }
    ],
    "name": "Log",
    "type": "event",
    "signature": "0x47f8c0417b311dcdb6348ff8ce66cad6024dedecfc28f969dd137de9c735012a"
    },
    {
    "anonymous": false,
    "inputs": [
        {
        "indexed": true,
        "name": "from",
        "type": "address"
        },
        {
        "indexed": true,
        "name": "to",
        "type": "address"
        },
        {
        "indexed": true,
        "name": "tokenId",
        "type": "uint256"
        }
    ],
    "name": "Transfer",
    "type": "event",
    "signature": "0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef"
    },
    {
    "anonymous": false,
    "inputs": [
        {
        "indexed": true,
        "name": "owner",
        "type": "address"
        },
        {
        "indexed": true,
        "name": "approved",
        "type": "address"
        },
        {
        "indexed": true,
        "name": "tokenId",
        "type": "uint256"
        }
    ],
    "name": "Approval",
    "type": "event",
    "signature": "0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925"
    },
    {
    "anonymous": false,
    "inputs": [
        {
        "indexed": true,
        "name": "owner",
        "type": "address"
        },
        {
        "indexed": true,
        "name": "operator",
        "type": "address"
        },
        {
        "indexed": false,
        "name": "approved",
        "type": "bool"
        }
    ],
    "name": "ApprovalForAll",
    "type": "event",
    "signature": "0x17307eab39ab6107e8899845ad3d59bd9653f200f220920489ca2b5937696c31"
    },
    {
    "anonymous": false,
    "inputs": [
        {
        "indexed": false,
        "name": "caller",
        "type": "address"
        }
    ],
    "name": "Paused",
    "type": "event",
    "signature": "0x62e78cea01bee320cd4e420270b5ea74000d11b0c9f74754ebdbfc544b05a258"
    },
    {
    "anonymous": false,
    "inputs": [
        {
        "indexed": false,
        "name": "caller",
        "type": "address"
        }
    ],
    "name": "Unpaused",
    "type": "event",
    "signature": "0x5db9ee0a495bf2e6ff9c91a7834c1ba4fdd244a5e8aa4e537bd38aeae4b073aa"
    },
    {
    "anonymous": false,
    "inputs": [
        {
        "indexed": false,
        "name": "owner",
        "type": "address"
        },
        {
        "indexed": false,
        "name": "newOwner",
        "type": "address"
        }
    ],
    "name": "OwnershipTransferred",
    "type": "event",
    "signature": "0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0"
    },
    {
    "constant": false,
    "inputs": [
        {
        "name": "key",
        "type": "bytes32"
        },
        {
        "name": "index",
        "type": "uint256"
        },
        {
        "name": "addr",
        "type": "address"
        }
    ],
    "name": "addSolution",
    "outputs": [],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "function",
    "signature": "0x4f8bd9b6"
    },
    {
    "constant": false,
    "inputs": [
        {
        "name": "a",
        "type": "uint256[2]"
        },
        {
        "name": "a_p",
        "type": "uint256[2]"
        },
        {
        "name": "b",
        "type": "uint256[2][2]"
        },
        {
        "name": "b_p",
        "type": "uint256[2]"
        },
        {
        "name": "c",
        "type": "uint256[2]"
        },
        {
        "name": "c_p",
        "type": "uint256[2]"
        },
        {
        "name": "h",
        "type": "uint256[2]"
        },
        {
        "name": "k",
        "type": "uint256[2]"
        },
        {
        "name": "input",
        "type": "uint256[2]"
        },
        {
        "name": "index",
        "type": "uint256"
        },
        {
        "name": "addr",
        "type": "address"
        }
    ],
    "name": "mintToken",
    "outputs": [
        {
        "name": "",
        "type": "bool"
        }
    ],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "function",
    "signature": "0xd3882697"
    },
    {
    "constant": true,
    "inputs": [
        {
        "name": "a",
        "type": "uint256[2]"
        },
        {
        "name": "a_p",
        "type": "uint256[2]"
        },
        {
        "name": "b",
        "type": "uint256[2][2]"
        },
        {
        "name": "b_p",
        "type": "uint256[2]"
        },
        {
        "name": "c",
        "type": "uint256[2]"
        },
        {
        "name": "c_p",
        "type": "uint256[2]"
        },
        {
        "name": "h",
        "type": "uint256[2]"
        },
        {
        "name": "k",
        "type": "uint256[2]"
        },
        {
        "name": "input",
        "type": "uint256[2]"
        }
    ],
    "name": "getKey",
    "outputs": [
        {
        "name": "",
        "type": "bytes32"
        }
    ],
    "payable": false,
    "stateMutability": "pure",
    "type": "function",
    "signature": "0x0bda53b3"
    },
    {
    "constant": true,
    "inputs": [
        {
        "name": "key",
        "type": "bytes32"
        }
    ],
    "name": "isSolution",
    "outputs": [
        {
        "name": "",
        "type": "bool"
        }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function",
    "signature": "0x4775a855"
    }
]
```


# Project Resources

* [Remix - Solidity IDE](https://remix.ethereum.org/)
* [Visual Studio Code](https://code.visualstudio.com/)
* [Truffle Framework](https://truffleframework.com/)
* [Ganache - One Click Blockchain](https://truffleframework.com/ganache)
* [Open Zeppelin ](https://openzeppelin.org/)
* [Interactive zero knowledge 3-colorability demonstration](http://web.mit.edu/~ezyang/Public/graph/svg.html)
* [Docker](https://docs.docker.com/install/)
* [ZoKrates](https://github.com/Zokrates/ZoKrates)