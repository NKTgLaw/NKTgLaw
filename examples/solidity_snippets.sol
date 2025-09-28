// Solidity: smart contract language for Ethereum
pragma solidity ^0.8.0;

contract NKTgLaw {
    function calculate() public pure returns (string memory) {
        uint x = 2;
        uint v = 3;
        uint m = 5;
        uint dm_dt = 1; // scaled by 10 to avoid decimals
        uint p = m * v;
        uint NKTg1 = x * p;
        uint NKTg2 = (dm_dt * p) / 10;
        return string(abi.encodePacked("p=", uint2str(p), " NKTg1=", uint2str(NKTg1), " NKTg2=", uint2str(NKTg2)));
    }

    function uint2str(uint _i) internal pure returns (string memory) {
        if (_i == 0) return "0";
        uint j = _i;
        uint len;
        while (j != 0) { len++; j /= 10; }
        bytes memory bstr = new bytes(len);
        uint k = len;
        while (_i != 0) {
            k--; bstr[k] = bytes1(uint8(48 + _i % 10)); _i /= 10;
        }
        return string(bstr);
    }
}
