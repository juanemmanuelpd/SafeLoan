// License

// SPDX-License-Identifier: LGPL-3.0-only

// Version

pragma solidity 0.8.24;

// Contratc

    contract safe_loan {
    
    // Variables

    address internal owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address internal borrower_account;
    
    string name_lender;
    uint256 amount_lender;
    string asset_lender;
    uint256 months_lender;
    
    string name_borrower;
    string id_borrower;
    string personal_address_borrower;
    string email_borrower;
    uint256 phone_borrower;
   
    bool status = false;

    // Modifiers

    modifier permission(){
        if (msg.sender != owner) revert();
        _;       
    }

    modifier loan(){
        if(bytes(name_lender).length == 0 || amount_lender < 1000 || months_lender <= 1) revert("Loan Not Found. Waiting for some valid loan ;)");
        _;
    }


    // Events

    event Create_loan(string name_lender, uint256 amount_lender, uint256 months_lender);
    event Accept_loan(string name_borrower, string id_borrower, string personal_address_borrower, string email_borrower, uint256 phone_borrower);

    // External Functions

    function create_loan (string memory name_, uint256 amount_, string memory asset_, uint256 months_) public permission {
        name_lender = name_;
        amount_lender = amount_;
        months_lender = months_;
        asset_lender = asset_;
         if(bytes(name_lender).length == 0 || amount_lender < 1000 || months_lender <= 1) revert("Please make sure the amount is 1000 or more and the months are 2 or more ;)");
        emit Create_loan (name_lender, amount_lender, months_lender);
    }

    function view_loan (string memory put_yes_to_view_) public view loan returns (string memory view_name_, uint256 view_amount_, string memory view_asset_, uint256 view_months_, string memory message_){

        if ( keccak256(bytes(put_yes_to_view_)) == keccak256(bytes("yes")) || keccak256(bytes(put_yes_to_view_)) == keccak256(bytes("YES")) || keccak256(bytes(put_yes_to_view_)) == keccak256(bytes("Yes")) ){
            view_name_ = name_lender;
            view_amount_ = amount_lender;
            view_asset_ = asset_lender;
            view_months_ = months_lender;
            message_ = "If you are ready to accept this offer, please proceed to ACCEPT IT ;)";
        }
        return (view_name_,view_amount_, view_asset_, view_months_, message_);
    }

      function accept_loan (string memory name_, string memory id_, string memory personal_address_, uint256 phone_, string memory email_) public {
       name_borrower = name_;
       id_borrower = id_;
       personal_address_borrower = personal_address_;
       email_borrower = email_;
       phone_borrower = phone_; 
       borrower_account = msg.sender;
       emit Accept_loan (name_borrower, id_borrower, personal_address_borrower, email_borrower, phone_borrower);
    }

    function view_borrower (string memory put_yes_to_view_) public view returns (string memory view_name_, string memory view_id_, string memory view_personal_address_, string memory view_email_, uint256 view_phone_, string memory message_){

        if ( keccak256(bytes(put_yes_to_view_)) == keccak256(bytes("yes")) || keccak256(bytes(put_yes_to_view_)) == keccak256(bytes("YES")) || keccak256(bytes(put_yes_to_view_)) == keccak256(bytes("Yes")) ){
            view_name_ = name_borrower;
            view_id_ = id_borrower;
            view_personal_address_ = personal_address_borrower;
            view_email_ = email_borrower;
            view_phone_ = phone_borrower;
            message_ = "If you consider the borrower's information to be correct and wish to confirm the loan, please type \"Yes\" in the \"Confirm Loan\" box to create the contract and save it on the blockchain.";
        }
        return (view_name_, view_id_, view_personal_address_, view_email_, view_phone_, message_);
    }

    function confirm_loan (string memory put_yes_to_confirm_) public view returns (string memory message, address borrower_account_){
        if ( keccak256(bytes(put_yes_to_confirm_)) == keccak256(bytes("yes")) || keccak256(bytes(put_yes_to_confirm_)) == keccak256(bytes("YES")) || keccak256(bytes(put_yes_to_confirm_)) == keccak256(bytes("Yes")) ){
            message = "Done, loan approved and information registered in this contract. Finally, I leave you the address of the borrower on the ethereum blockchain. CODE IS LAW ;)";
        }
        borrower_account_ = borrower_account;
        return (message, borrower_account_);
    }

    // Internal Functions

    
    }