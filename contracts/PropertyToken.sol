// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract FreshtateProperty is ERC20 {

    string public uri;

    constructor(
        string memory _name,
        string memory _symbol,
        string memory _uri,
        uint _totalSupply
    )
    ERC20(_name, _symbol) public {
        uri = _uri;
        _mint(msg.sender,_totalSupply);
    }

    function decimals() public view virtual override returns (uint8) {
        return 3;
    }
}