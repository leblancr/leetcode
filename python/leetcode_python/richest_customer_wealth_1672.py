class RichestCustomerWealth:
    accounts = []

    def __init__(self, accounts):
        accounts = accounts

    def calculate_richest_customer_wealth(self):
        rcw = max(map(sum, self.accounts))

        return rcw



