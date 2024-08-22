//SPDX-License-Identifier:MIT
 pragma solidity ^0.8.24;


import "./iperc20.sol";

interface iperc20metadata is iperc20 {

    function name() external view returns (string memory);

    function symbol() external view returns (string memory);

    function decimals() external view returns (uint8);
}
