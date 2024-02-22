class RichestCustomerWealth
    accounts = []

    def initialize(accounts)
        @accounts = accounts
    end

    # @accounts.map { |account| account.sum } iterates over each element in @accounts,
    # calculates the sum of each sub-array, and returns an array containing the sums.
    # .max is then called on the resulting array to find the maximum sum among all sub-arrays.
    def calculate_richest_customer_wealth()
        rcw = @accounts.map { |account| account.sum }.max

        return rcw
    end
end

