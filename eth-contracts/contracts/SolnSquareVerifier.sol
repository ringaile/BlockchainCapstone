pragma solidity >=0.4.21 <0.6.0;

// TODO define a contract call to the zokrates generated solidity contract <Verifier> or <renamedVerifier>
import "./Verifier.sol";
import "./ERC721Mintable.sol";

// TODO define another contract named SolnSquareVerifier that inherits from your ERC721Mintable class
contract SolnSquareVerifier is ERC721Mintable{

	// TODO define a solutions struct that can hold an index & an address
	struct Solution {
    	uint256 id;
		address solutionAddress;
	}

	// TODO define an array of the above struct
	Solution[] solutions;

	// TODO define a mapping to store unique solutions submitted
	mapping(string => Solution) private solutionsSubmitted;

	// TODO Create an event to emit when a solution is added
	event solutionAdded(address solutionAddress);

	// TODO Create a function to add the solutions to the array and emit the event
	function addSolution(address _solutionAddress, uint256 _id, string memory key) public {
        Solution memory sol = Solution({id: _id, solutionAddress: _solutionAddress});
        solutionsSubmitted[key] = sol;
        solutions.push(sol);
        emit solutionAdded(_solutionAddress);
    }

    // TODO Create a function to mint new NFT only after the solution has been verified
	//  - make sure the solution is unique (has not been used before)
	//  - make sure you handle metadata as well as tokenSuplly

}

  


























