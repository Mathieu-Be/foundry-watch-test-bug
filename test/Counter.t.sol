// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {TestBase} from "./TestBase.t.sol";

contract CounterTest is TestBase {
    function test_Increment() public {
        counter.increment();
        assertEq(counter.number(), INITIAL_NUMBER + 1);
    }

    function testFuzz_SetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }
}
