var ERC721Mintable = artifacts.require('ERC721Mintable');

contract('TestERC721Mintable', accounts => {

    const account_one = accounts[0];
    const account_two = accounts[1];

    describe('match erc721 spec', function () {
        beforeEach(async function () { 
            this.contract = await ERC721Mintable.new({from: account_one});

            // mint multiple tokens
            this.contract.mint(account_one, 1, {from: account_one});
            this.contract.mint(account_one, 2, {from: account_one});
            this.contract.mint(account_two, 3, {from: account_one});            
        })

        it('should return total supply', async function () { 
            let result = await this.contract.totalSupply.call();
            assert.equal(result, 3, "Total supply should be 3");
        })

        it('should get token balance', async function () {
            let result = await this.contract.balanceOf.call(account_one);
            assert.equal(result, 2, "Total supply should be 2");            
        })

        // token uri should be complete i.e: https://s3-us-west-2.amazonaws.com/udacity-blockchain/capstone/1
        it('should return token uri', async function () { 
            let result = await this.contract.tokenURI.call(1);
            assert.equal(result, "https://s3-us-west-2.amazonaws.com/udacity-blockchain/capstone/1", "Invalid token uri");  
        })

        it('should transfer token from one owner to another', async function () {                     
            let tokenId = 1;
            let owner = await this.contract.ownerOf.call(tokenId);
            await this.contract.transferFrom(account_one, account_two, tokenId, {from: account_one});
            let newOwner = await this.contract.ownerOf.call(tokenId);
            assert.equal(owner, account_one, "Owner should be account one");
            assert.equal(newOwner, account_two, "New owner should be account two");
        })
    });

    describe('have ownership properties', function () {
        beforeEach(async function () { 
            this.contract = await ERC721Mintable.new({from: account_one});
        })

        it('should fail when minting when address is not contract owner', async function () { 
            let revert = false;
            try {
                await this.contract.mint(account_one, 4, {from: account_two});
            } catch (e) {
                revert = true;
            }
            assert.equal(revert, true, "Minting should fail when address is not contract owner");
            
        })

        it('should return contract owner', async function () { 
            let result = await this.contract.contractOwner.call();
            assert.equal(result, account_one, "Should return contract owner");
        })
    });
})