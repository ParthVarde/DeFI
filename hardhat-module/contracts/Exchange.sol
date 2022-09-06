//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Exchange is ERC20 {
    address public cryptoDevTokenAddres;

    constructor(address _CryptoDevAddress) ERC20("CryptoDev LP Token", "CDLP") {
        require(_CryptoDevAddress != address(0), "Token address passed is a null address");
        cryptoDevTokenAddres = _CryptoDevAddress;
    }

    function getReserve() public view returns(uint) {
        return ERC20(cryptoDevTokenAddres).balanceof(address(this));
    }

    
}