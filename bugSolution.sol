```solidity
function transfer(address to, uint amount) public {
  require(balanceOf[msg.sender] >= amount, "Insufficient balance");
  uint oldBalance = balanceOf[msg.sender];
  balanceOf[msg.sender] -= amount;
  balanceOf[to] += amount;
  require(balanceOf[msg.sender] == oldBalance - amount, "Transfer failed");
  emit Transfer(msg.sender, to, amount);
}
```