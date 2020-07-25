deposit_contract.json:
	solc --optimize --optimize-runs=500000 --combined-json=bin,abi deposit_contract.sol openzeppelin-contracts/=./openzeppelin-contracts/contracts/ > deposit_contract.json

