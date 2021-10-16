var Verifier = artifacts.require('Verifier');
var SolnSquareVerifier = artifacts.require('SolnSquareVerifier');

contract('SolnSquareVerifier', accounts => {

    const account_one = accounts[0];
    const account_two = accounts[1];


    describe('SolnSquareVerifier Test', function () {
        beforeEach(async function () {
            this.verifier = await Verifier.new({ from: account_one });
            this.contract = await SolnSquareVerifier.new(this.verifier.address, { from: account_one });
        })

        // Test if a new solution can be added for contract - SolnSquareVerifier
        it('Test if a new solution can be added for contract', async function () {  
            for (let i=0; i<10; i++) {
                let proof = require(`../../zokrates/code/square/proof${i}`);
                let tokenId = i;            
                
                let result= await this.contract.addSolution(
                    proof.proof.A,
                    proof.proof.A_p,
                    proof.proof.B,
                    proof.proof.B_p,
                    proof.proof.C,
                    proof.proof.C_p,
                    proof.proof.H,
                    proof.proof.K,
                    proof.input,                
                    tokenId,  
                    { from: account_one });
                assert.equal(result.logs.length, 1, "Should emit only 1 event");            
                assert.equal(result.logs[0].event, "SolutionAdded", "SolutionAdded event should be emitted");            
            }
        });


        // Test if an ERC721 token can be minted for contract - SolnSquareVerifier
        it('Test if an ERC721 token can be minted for contract', async function () {
            for (let i=0; i<10; i++) {
                let proof = require(`../../zokrates/code/square/proof${i}`);
                let tokenId = i;
                let beforeResult = (await this.contract.totalSupply.call()).toNumber();

                await this.contract.addSolution(
                    proof.proof.A,
                    proof.proof.A_p,
                    proof.proof.B,
                    proof.proof.B_p,
                    proof.proof.C,
                    proof.proof.C_p,
                    proof.proof.H,
                    proof.proof.K,
                    proof.input,                
                    tokenId,  
                    { from: account_one });
                
                await this.contract.mintToken(
                    account_one,                                    
                    tokenId,                    
                    { from: account_one }
                );            
                let afterResult = (await this.contract.totalSupply.call()).toNumber();

                assert.equal(afterResult, beforeResult + 1, "A token should be minted");
            }
        });  
    });    
});
