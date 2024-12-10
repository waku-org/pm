pragma solidity ^0.8.0;

contract RLN {
    struct Member {
        address memberAddress;
        uint256 rateLimit;
        uint256 nullifier;
    }

    mapping(address => Member) public members;
    address[] public memberList;

    event MemberAdded(address indexed memberAddress, uint256 rateLimit, uint256 nullifier);
    event MemberRemoved(address indexed memberAddress);

    function addMember(address _memberAddress, uint256 _rateLimit, uint256 _nullifier) public {
        require(members[_memberAddress].memberAddress == address(0), "Member already exists");
        members[_memberAddress] = Member(_memberAddress, _rateLimit, _nullifier);
        memberList.push(_memberAddress);
        emit MemberAdded(_memberAddress, _rateLimit, _nullifier);
    }

    function removeMember(address _memberAddress) public {
        require(members[_memberAddress].memberAddress != address(0), "Member does not exist");
        delete members[_memberAddress];
        for (uint256 i = 0; i < memberList.length; i++) {
            if (memberList[i] == _memberAddress) {
                memberList[i] = memberList[memberList.length - 1];
                memberList.pop();
                break;
            }
        }
        emit MemberRemoved(_memberAddress);
    }

    function getMember(address _memberAddress) public view returns (Member memory) {
        require(members[_memberAddress].memberAddress != address(0), "Member does not exist");
        return members[_memberAddress];
    }

    function getAllMembers() public view returns (Member[] memory) {
        Member[] memory allMembers = new Member[](memberList.length);
        for (uint256 i = 0; i < memberList.length; i++) {
            allMembers[i] = members[memberList[i]];
        }
        return allMembers;
    }
}
