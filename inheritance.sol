pragma solidity ^0.4.24;

contract BankAccountGeneric
{
    string ownerName;
    address ownerAddress;
    string ownerPostalAddress;   
    string ownerPostCode;       

    uint public balance = 400;                 // savings in wei
    uint public interestRate = 2;            // savings interest rate in %
    
    constructor(uint startBalance, uint startInterest)
    public 
    {
        balance = startBalance;
        interestRate = startInterest;
    }
    
    function applyInterest()
    public
    {
        balance = balance + ( balance * interestRate / 100 );
    }
    
    //function anyoldthing();
}

contract BankCardWithPin
{
    uint public pinNumber;
}

contract BankAccountSavings is BankAccountGeneric(2000, 4), BankCardWithPin
{
    uint public monthsBeforeWithdrawal;  // minimum months before a withdrawal
}

contract BankAccountCurrent is BankAccountGeneric(2000, 5)
{
}
