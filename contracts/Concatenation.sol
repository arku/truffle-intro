pragma solidity ^0.4.24;

contract Concatenation {
    function concatenate(string _str1, string _str2) public pure returns (string) {
        bytes memory byteStr1 = bytes(_str1);
        bytes memory byteStr2 = bytes(_str2);
        bytes memory byteArray = new bytes(byteStr1.length + byteStr2.length);

        for (uint i = 0; i < byteStr1.length; i++) {
            byteArray[i] = byteStr1[i];
        }
        for(uint j = 0; j < byteStr2.length; j++) {
            byteArray[i++] = byteStr2[j];
        }

        return string(byteArray);
    }
}
