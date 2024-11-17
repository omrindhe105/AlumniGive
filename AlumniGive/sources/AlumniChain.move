module AlumniChain ::AlumniGive {
    use aptos_framework::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;

    /// Struct representing an alumni donation fund.
    struct AlumniFund has key, store {
        total_donated: u64, // Total amount donated to this fund
        target_goal: u64,   // Fundraising target goal
    }

    /// Function to create a new alumni donation fund.
    public entry fun create_alumni_fund(owner: &signer, goal: u64) {
        assert!(goal > 0, 0x1); // Ensure goal is a positive value
        move_to(owner, AlumniFund {
            total_donated: 0,
            target_goal: goal,
        });
    }

    /// Function to allow donations to a specific fund.
    public entry fun donate_to_fund(donor: &signer, fund_owner: address, amount: u64) acquires AlumniFund {
        assert!(amount > 0, 0x2); // Ensure donation amount is positive
        let fund = borrow_global_mut<AlumniFund>(fund_owner);

        // Transfer donation from donor to the fund owner
        let donation = coin::withdraw<AptosCoin>(donor, amount);
        coin::deposit<AptosCoin>(fund_owner, donation);

        // Update the total donations
        fund.total_donated = fund.total_donated + amount;
    }
}
