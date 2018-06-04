var HDWalletProvider = require("truffle-hdwallet-provider");
var mnemonic = "";
var accessToken = "";

module.exports = {
    networks: {
        ropsten: {
            provider: function() {
                return new HDWalletProvider(
                    mnemonic,
                    "https://ropsten.infura.io/" + accessToken
                );
            },
            network_id: 3,
            gas: 4600000,
            gasPrice: 1000000
        }
    }
};
