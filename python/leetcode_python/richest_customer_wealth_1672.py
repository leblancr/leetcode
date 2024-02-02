class RichestCustomerWealth:
    numbers = []

    def __init__(self, accounts):
        self.accounts = accounts

    def calculate_richest_customer_wealth(self):
        rcw = max(map(sum, self.accounts))

        return rcw



