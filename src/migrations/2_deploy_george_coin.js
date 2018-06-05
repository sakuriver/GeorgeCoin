const GeorgeCoin = artifacts.require('./GeorgeCoin.sol')

module.exports = (deployer) => {
    const initialSupply = 100000e18
    const initialTokenRate = new web3.BigNumber(500)
    deployer.deploy(GeorgeCoin, initialSupply, initialTokenRate, {
        gas: 2000000
    })
}