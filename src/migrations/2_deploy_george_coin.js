const GeorgeCoin = artifacts.require('./GeorgeCoin.sol')

module.exports = (deployer) => {
    const initialSupply = 100000000e18
    deployer.deploy(GeorgeCoin, initialSupply)
}