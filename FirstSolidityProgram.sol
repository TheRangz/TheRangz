http://remix.ethereum.org/#optimize=false&runs=200&evmVersion=null&version=soljson-v0.5.17+commit.d19bba13.js


pragma  solidity    ^0.5.13;

contract WorkingwithVariables {
    uint256 public myUint;
    
    function setMyUints(uint _myUint) public{
        myUint = _myUint;
    }
    
    bool public MyBool;
    
    function serMyBools(bool _myBool) public{
        MyBool = _myBool;
    }
    
    uint8 public myUint8;
    
    function MyIncrement() public{
        myUint8++;
    }
    
    function MyDecrement() public{
        myUint8--;
    }
    
    address public MyAddress;
    
    function setAddress(address _address) public {
        MyAddress = _address;
    }
    
    function getBalanceOfAddress() public view returns(uint) {
            return MyAddress.balance;
    
    }
    
    string public myString = 'hellooo world !!';
    function SetmyString(string memory _myString) public{
        myString = _myString;
    }
}
