pragma solidity ^0.6.0;

abstract contract Scheduler {
    // Schedule a contract call.
    function scheduleCall(
        address contract_address, // The contract address to be called in future.
        uint256 value, // How much native token to send alone with the call.
        uint256 gas_limit, // The gas limit for the call. Corresponding fee will be reserved upfront and refunded after call.
        uint256 storage_limit, // The storage limit for the call. Corresponding fee will be reserved upfront and refunded after call.
        uint256 min_delay, // Minimum number of blocks before the scheduled call will be called.
        bytes memory input_data // The input data to the call.
    )
    virtual
    public
    returns (uint256, uint256); // Returns a task id that can be used to cancel or reschedule call.
}