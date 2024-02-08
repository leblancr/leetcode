// Kotlin classes take constructor params in class signature
class RichestCustomerWealth1672(private val accounts: List<List<Int>>) {
    private var highestBalance = 0

    // init is like constructor but values passed in above in signature
    init {
        // Sum each account and find the highest balance
        for (row in accounts) {
            val sum = row.sum()
            highestBalance = if (sum > highestBalance) sum else highestBalance
        }
    }
    fun calculateRichestCustomerWealth(): Int {
        return highestBalance
    }
}
