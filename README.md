# Reentrancy Vulnerability in Solidity

This repository demonstrates a common reentrancy vulnerability in Solidity smart contracts and its solution.

The `bug.sol` file contains a vulnerable `transfer` function. A malicious contract can exploit this vulnerability by recursively calling the `transfer` function before the state is updated, resulting in an incorrect balance.

The `bugSolution.sol` file provides a secure implementation of the `transfer` function using the Checks-Effects-Interactions pattern.