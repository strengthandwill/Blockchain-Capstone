const HDWalletProvider = require("truffle-hdwallet-provider");
const web3 = require("web3");
const MNEMONIC = "bronze hip catch clay ice note mystery inherit engine offer vintage happy";
const INFURA_KEY = "b45d1acd22264f47ae188fced8e20ef1";
const OWNER_ADDRESS = "0x92444Ff513042184E4585b23eD359454fB3E5527";
const CONTRACT_ADDRESS = "0xd8A1E0322C823087d91AaaCf290EA5341C208417";
const NETWORK = 'rinkeby';
const MINT_COUNT = 10;

if (!MNEMONIC || !INFURA_KEY || !OWNER_ADDRESS || !NETWORK) {
    console.error("Please set a mnemonic, infura key, owner, network, and contract address.")
    return
}

const CONTRACT_ABI = require('../build/contracts/SolnSquareVerifier.json').abi;

async function main() {
    const provider = new HDWalletProvider(MNEMONIC, `https://${NETWORK}.infura.io/v3/${INFURA_KEY}`)
    const web3Instance = new web3(provider);

    if (CONTRACT_ADDRESS) {
        const contract = new web3Instance.eth.Contract(
            CONTRACT_ABI,
            CONTRACT_ADDRESS
        );

        // Creatures issued directly to the owner.
        for (var i = 0; i < MINT_COUNT; i++) {
            let proof = require(`../../zokrates/code/square/proof${i}`);
            let tokenId = i + 1;
            console.log(`Minting NFT #${tokenId}`);
            try {
                await contract.methods.addSolution(
                    proof.proof.A,
                    proof.proof.A_p,
                    proof.proof.B,
                    proof.proof.B_p,
                    proof.proof.C,
                    proof.proof.C_p,
                    proof.proof.H,
                    proof.proof.K,
                    proof.input,                
                    tokenId                   
                ).send({ from: OWNER_ADDRESS });
            } catch (e) {
                console.log(e.message);
            }
                
            try {
                let result = await contract.methods.mintToken(
                    OWNER_ADDRESS,                                    
                    tokenId                    
                ).send({ from: OWNER_ADDRESS });    
                
                console.log("Minted creature. Transaction: " + result.transactionHash);
            } catch (e) {
                console.log(e.message);
            }
        }
    } else {
        console.error(
            "Add CONTRACT_ADDRESS to the environment variables"
        );
    }
}

main();