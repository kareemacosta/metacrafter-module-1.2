pragma solidity ^0.8.0;

contract Example {
    // State variable to store some data
    uint256 public data;

    // View function to retrieve the stored data
    function getData() public view returns (uint256) {
        return data;
    }

    // Pure function to calculate something based on the stored data
    function calculate() public pure returns (uint256) {
        return data * 2;
    }

    // Payable function to update the stored data
    function updateData(uint256 _newData) public payable {
        require(msg.value > 0, "You must send some Ether to update the data.");
        data = _newData;
    }
}
