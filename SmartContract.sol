pragma solidity ^0.6.4;

contract SmartContract {
  mapping (bytes32 => uint256) public likesReceived;
  bytes32[] public postList;

  constructor(bytes32[] memory postNames) public {
    postList = postNames;
  }

  function totalLikesFor(bytes32 post) view public returns (uint256) {
    return likesReceived[post];
  }

  function likePost(bytes32 post) public {
    likesReceived[post] += 1;
  }
}
