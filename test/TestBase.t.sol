// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract TestBase is Test {
    uint256 public constant INITIAL_NUMBER = 1;

    Counter public counter;

    function setUp() public {
        counter = new Counter();
        counter.setNumber(INITIAL_NUMBER);
    }
}
