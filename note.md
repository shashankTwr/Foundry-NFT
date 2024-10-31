20:18:25 - NFTs: IPFS
20:22:01 - NFTs: Hosting on IPFS
20:25:30 - NFTs: Using IPFS
20:32:00 - NFTs: Basic NFT: Deploy Script
20:33:24 - NFTs: Basic NFT: Tests
20:43:31 - NFTs: Basic NFT: Interactions
20:46:23 - NFTs: Basic NFT: Testnet Demo
20:52:33 - NFTs: The issue with IPFS & HTTPS Metadata NFTs
         - Ranking of "NFT Metadata Decentralisation" SVG> IPFS>>> HTTPS
20:56:31 - NFTs: What is an SVG?
21:03:54 - NFTs: SVG NFT: Introduction
21:08:04 - NFTs: Encoding the NFT
21:24:41 - NFTs: Flipping the Mood
21:26:43 - NFTs: SVG NFT: Deploy Script
21:43:47 - NFTs: Debugging practice & some notes
21:49:29 - NFTs: SVG NFT: Anvil Demo
21:54:59 - NFTs: Filecoin & Arweave
21:55:52 - Advanced: EVM Opcodes, Encoding and Calling
21:56:44 - abi.encode & abi.encodePacked
22:19:07 - Introducing to encoding function calls directly
22:24:54 - Quick Encoding Recap
22:26:51 - Encoding function calls directly
22:41:19 - NFTs: Verifying Metamask transaction
22:49:05 - NFTs: Recap

## NFT

1. Non fungible token  deployed on a smart contract platform
2. ERC-721 standard v/s ERC-20


## IPFS

1. Our code -> hash and gets a unique hash
2. same hashing algorithm and we can get unique output on our node
3. persistence of data on nodes 
4. IPFS cannot do smart contract it is decentralised storage
5. IPFS gateway v/s IPFS local node v/s IPFS desktop

## Strings compare

1. String comparison is not possible only primitive type comparison exists in solidity
2. abi.encodePacked
3. keccak256


## Why not IPFS??

## Why SVG?? 
1. Scalable vector graphics ie scalable
2. we can convert svg to uri
3. base64 encoding of example.svg


## encoded happy svg
data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI1MDAiIGhlaWdodD0iNTAwIj4KPHRleHQgeD0iMCIgeT0iMTUiIGZpbGw9IiNkYjAwMDAiPiBoaSEgeW91IGRlY29kZWQgdGhpcyA8L3RleHQ+Cjwvc3ZnPg==


## base64 sad svg
base64 -i [filename]


## script

// script for minting the MintMoodNFT
// script for flipping the moodNFT


## Advanced Section 

1. Abi.encode and abi.encodePacked
2. globally available methods and units 
    1. abi.encodePacked
    2. msg.sender and other such globally available


## opcodes

1. evm.codes 
2. opcode stuff is how we read the data 

## staticcall and call

1. call: How we call functions to change the state of the blockchain
2. staticcall: low level we do our view or pure function calls and potnetially don't change the state of blockchain

## Function signature wrt contract

1. Single Contract cannot have 2 conflicting function signature
```
cast sig "funcSig()"
```

2.  verify Calldata 
```
cast --calldata-decode <SIG> <CALLDATA>
```

## check transaction

1. Check the address(read the function)
2. check the function selector
3. Decode the calldata 

## Fire

1. Joinfire.xyz and decoding transaction
2. transaction can be malicious