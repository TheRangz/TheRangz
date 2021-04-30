pragma  solidity ^0.5.13;

contract sendMoney{
    
    uint public balanceReceived;
    function receiveMoney () public payable {
        balanceReceived += msg.value;
        
    }
    
   function getBalance() public view returns (uint){
        return address(this).balance;
    }
    
   function withdrawMoney() public {
        address payable to = msg.sender;
        to.transfer(this.getBalance());
    }

    function withdrawMoneyTo(address payable _to) public {
        _to.transfer(this.getBalance());
    } 
    
}


/*
Address MyAddress = "0xabcx"
Myaddress.balance = balance in Wei
Myaddress.transfer(amountinWei)

A function cannot receive ether unless marked as payable*/
