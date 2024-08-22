//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/utils/Strings.sol";
import "./perc20.sol";

contract perc20sample is perc20 { 

    constructor() perc20("SECRET", "SEC") {}

    function mint100tokens() public {
        _mint(_msgSender(), 100*10**18);
   }

    function balanceOf(address account) public view override returns (uint256) {
    require(msg.sender == account, "PERC20Sample: msg.sender != account");
        return _balances[account];

    }

    function allowance(address owner, address spender) public view virtual override returns (uint256) {
       
        require(msg.sender == spender, "PERC20Sample: msg.sender != account");

        return _allowances[owner][spender];

    }
}
