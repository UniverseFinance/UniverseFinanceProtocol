// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

import "./IUniswapV3Pool.sol";

interface IVault {

    function deposit(
        uint256,
        uint256,
        uint256,
        uint256
    ) external returns (
        uint256,
        uint256,
        uint256
    );

    function withdraw(
        uint256,
        uint256,
        uint256
    ) external returns (uint256, uint256);

    function getTotalAmounts() external view returns (uint256, uint256);

    function pool() external view returns (IUniswapV3Pool);

    function tickSpacing() external view returns (int24);

    function tickInfo() external view returns (int24, int24, int24);

    function rebalance(int24, int24, int24) external;

}
