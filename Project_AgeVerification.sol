// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 < 0.9.0;

contract AgeVerification {
    uint constant minAge = 18;

    function verifyAge(uint age) public pure {
        require(age >= minAge, "Age must be at least 18");
    }

    function checkAge(uint age) public pure {
        if (age < minAge) {
            revert("Age less than 18, access denied");
        }
    }

    function validateAge(uint age) public pure {
        assert(age >= minAge);
    }
}

