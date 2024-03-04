// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract receiveEther{
    receive() external payable { }

    function getbalance() public view returns (uint) {
        return address(this).balance;
    }

}

contract SendEther{

    receive() external payable { }

    function sendViaSend( address payable _to, uint amount) public payable {

       bool sent = _to.send(amount);

       //we have created a variable sent with a boolean type

       require(sent, "failed to send ether");
       //the require returns an error message is the ether is not snet
       //the difference between transfer and send is that itb gives a response when the transaction is succesful or not

    }
}
