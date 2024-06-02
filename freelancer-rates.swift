let workingDays = 22.0
let workHours = 8.0

func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate) * workHours
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let monthlyRate = Double(hourlyRate) * workingDays * workHours
  let discountTotal = (discount / 100) * monthlyRate
  return (monthlyRate - discountTotal).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let hourlyRateFee = Double(hourlyRate) - ((discount / 100) * Double(hourlyRate))
  let feePerDay = hourlyRateFee * workHours
  return (budget / feePerDay).rounded(.down)
}

// thanks ameliacitradewi from github!
