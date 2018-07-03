pragma solidity ^0.4.24;

contract Xor {
    function xor(uint8 a, uint8 b) public pure returns (uint8) {
        return (a + b) % 2; 
    }
}
