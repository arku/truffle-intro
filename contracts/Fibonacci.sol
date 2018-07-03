pragma solidity ^0.4.24;

contract Fibonacci {
    function fibonacci(uint _index) public pure returns (uint) {
        if (_index == 0) {
            return 0;
        }

        uint[] memory fibonaccis = new uint[](_index + 1);
        fibonaccis[0] = 0;
        fibonaccis[1] = 1;
        for (uint i = 2; i <= _index; i++) {
            fibonaccis[i] = fibonaccis[i - 1] + fibonaccis[i - 2];
        }

        return fibonaccis[_index];
    }
}
