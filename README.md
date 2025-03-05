# Safe Loan

## Overview

📃 Safe Loan is a smart contract created in Solidity for the Ethereum blockchain. Its function is to record the information of a loan between two users (lender and borrower). 

🔒 Implementing a smart contract for your loan ensures that you have the support of the blockchain as a method of storing confidential information, which is not exposed to manipulation and will always be available to consult in case of non-compliance by any of the users mentioned in this contract. 

⚠️ Disclaimer: The function of this smart contract is only to create a backup of the information of both users involved in the loan. In no way will any retention or deduction be made on the assets of either of them as a guarantee method. 

## Features

* Create Loan - The lender deploys the contract and only the lender can create the loan for the borrower to use.
* View Loan - The borrower accesses this contract to view the loan offer created by the lender.
* Accept Loan - The borrower accepts the loan by entering his personal information to be validated by the lender.
* View Borrower - The lender reviews the information provided by the borrower.
* Confirm Loan - The lender confirms the borrower's information and with this the loan is REGISTERED in the blockchain.

## Technical details

* Integrated Development Environment - Remix (Ethereum IDE)
* Solidity Compiler Version - 0.8.24

## Deploying the contract

1. Open Remix IDE. Available at https://remix.ethereum.org
2. Go to the "File explorer" tab and create a new file with the .sol extension in the "Contracts" folder
3. Copy the SafeLoan.sol code and paste it into the .sol file you created
4. Go to the "Solidity compiler" tab and select version 0.8.24
5. Change the value of the variable "address internal owner" to your address, which you can find in "Deploy and run transactions" > "Account".
6. Compile the code by pressing CTRL + S if you are on Windows, or COMMAND + S if you are on Mac OS
7. If you have no errors, go to the "Deploy and run transactions" tab. In the "Environment" part select "Remix VM (Cancun)" and finally click on "Deploy" to deploy the smart contract.

## How to use

1. Create Loan - The lender enters their name, the amount to be loaned, the type of asset, and the number of months in which the debt must be repaid.
2. View Loan - The borrower will see the loan offer created by the lender to verify that the information is correct.
3. Accept Loan - Once the borrower verifies the information, they can accept the loan offer by entering their required personal information.
4. View Borrower - The lender verifies the personal information provided by the borrower in order to have a backup of it on the blockchain in the event of default by the borrower within the agreed period or amount.
5. Confirm Loan - Once the lender carefully verifies all the information, they can proceed to confirm the loan between the two by writing "Yes" in the corresponding box. Once the loan has been confirmed, the lender will be sent the borrower's address on the Ethereum blockchain.

CODE IS LAW! 
   
