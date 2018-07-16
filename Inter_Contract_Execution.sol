pragma solidity ^0.4.1;
contract C1 {
    
    uint x;
    
    constructor()
    public
    {
        x = 10;
    }
    
    function setX(uint _x) 
    public
    returns(bool) {
        x = _x;
        return true;
    }
    
    function getX() 
    public
    view  
    returns(uint) {
        return x;
    }
}

contract C2 {
    
    function f2(address addrC1) 
    public 
    view
    returns(uint)
    {
        C1 contractOne;             // declare variable of type C1
        contractOne = C1(addrC1);   // cast addrC1 to be of type C1, will fail if addrC1 not correct type
        
        uint x = contractOne.getX();   // call the .getX() function of C1
        return x;                      // return the value we got above
    }
    
}
