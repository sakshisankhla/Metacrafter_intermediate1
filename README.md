# AgeVerification Contract

The AgeVerification is a smart contract which demonstrate how we can use error handling in solidity using 'require()', 'revert()' and 'assert()' statements

## Description

The AgeVerification contract is designed to check whether a user's age meets a minimum requirement. It showcases how to handle errors in Solidity using `require()`, `revert()`, and `assert()` statements. The minimum age is set to 18, and the contract includes three functions to verify the age using different error handling mechanisms.

## Getting Started

### Installing

1. clone the repository or download the file.
2. open the file or paste the code in a solidity-compatible development enviroment (for eg. remix).


### Executing program

* How to run the program using Remix

 1. open Remix-ide
 2. create a new file:
   - In the File Explorer on the left side, click the "+" button to create a new file.
   - Name the file `AgeVerification.sol`.
 3. copy and paste the code
```

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
```     
4. Complie and Contract:
-Click on the "Solidity Compiler" tab (second tab from the top in the left sidebar).
-Ensure the compiler version is set to a compatible version.
-Click the "Compile AgeVerification.sol" button.

5.Deploy the Contract:

-Click on the "Deploy & Run Transactions" tab (third tab from the top in the left sidebar).
-Ensure "JavaScript VM" is selected in the "Environment" dropdown. This uses a local blockchain for testing purposes.
-Ensure "AgeVerification" is selected in the "Contract" dropdown.
-Click the "Deploy" button.

6.Interact with the Contract:

-Once deployed, the contract will appear under "Deployed Contracts" at the bottom of the "Deploy & Run Transactions" tab.
 You can now interact with the contract functions.
 
-Click on the verifyAge(uint) function, input an age (e.g., 17), and click the "transact" button to see if the function succeeds or throws an error.
 Do the same for checkAge(uint) and validateAge(uint).
   
## Help

-Ensure you are using the correct Solidity compiler version.
-If a function call reverts, check the age parameter you are passing to ensure it meets the minimum age requirement.

## Authors
Sakshi Sankhala

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.
