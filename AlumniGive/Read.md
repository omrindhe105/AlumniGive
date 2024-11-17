# **AlumniGive: Blockchain-Based Alumni Donation Fund**

## **Introduction**

AlumniGive is a decentralized platform designed to simplify and secure the process of alumni donations using blockchain technology. Built on the Aptos blockchain, the smart contract facilitates the creation of donation funds and contributions in Aptos (APT) tokens.  

By leveraging blockchain’s transparency and immutability, AlumniGive ensures that every transaction is recorded on-chain, allowing donors to trust that their contributions are securely handled.

---

## **Vision**

The vision of AlumniGive is to create a trust-driven ecosystem where alumni can give back to their alma mater with complete transparency and efficiency. We aim to strengthen the connection between alumni and their educational institutions by fostering accountability and building trust.

The project aspires to become the go-to solution for transparent fundraising in the educational sector, ensuring impactful use of alumni contributions.

---

## **Future Goals**

1. **Advanced Features**:
   - Support for multiple fundraising campaigns by the same owner.
   - Allow fund owners to define milestones and sub-goals.

2. **Transparency & Reporting**:
   - Develop a blockchain-based dashboard to display live statistics on funds raised, goals, and remaining targets.
   - Automate reporting for donors and fund owners.

3. **Reward Mechanisms**:
   - Gamify donations with badges, NFTs, or leaderboards to encourage greater participation.
   - Introduce tier-based rewards for contributors.

4. **Multi-Currency Support**:
   - Extend support for other cryptocurrencies beyond Aptos (APT).
   - Integrate with fiat payment systems for hybrid donations.

5. **Institutional Collaborations**:
   - Partner with universities to integrate the platform into alumni portals.
   - Enable customized campaigns for scholarships, infrastructure, or community projects.

6. **Mobile App Development**:
   - Build a mobile app for seamless fund creation and donation tracking.

---

## **Deployed Address**

The smart contract has been deployed on the Aptos blockchain at the following address:  
**`0x7a51642d97ed7704e80aca33b3329e7b633019c7b97cf01e4c5181bb4cf9f956`**

You can interact with the contract using the Aptos CLI or blockchain explorers.

---

## **How to Interact**

### **Prerequisites**:
- Install the [Aptos CLI](https://aptos.dev) and set up your Aptos wallet.
- Fund your wallet with APT tokens.

### **Available Functions**:
1. **Create an Alumni Fund**:
   - This function allows a user to create a donation fund with a specified goal.  
   ```bash
   aptos move run \
     --function-id '0x7a51642d97ed7704e80aca33b3329e7b633019c7b97cf01e4c5181bb4cf9f956::AlumniGive::create_alumni_fund' \
     --args u64:<goal>
   ```

2. **Donate to a Fund**:
   - Donors can contribute Aptos tokens to an existing fund owned by a specific address.  
   ```bash

   aptos move run \
     --function-id '0x7a51642d97ed7704e80aca33b3329e7b633019c7b97cf01e4c5181bb4cf9f956::AlumniGive::donate_to_fund' \
     --args address:<fund_owner_address> u64:<amount>
   ```

---

## **Contract Address**
The deployed contract address for **AlumniGive** is:  
**`0x7a51642d97ed7704e80aca33b3329e7b633019c7b97cf01e4c5181bb4cf9f956`**

You can explore the contract using Aptos-compatible blockchain explorers.

---

## **Contributors**
**Developer**: *Om Rindhe*  
**Contact**: rindheom43@gmail.com 



