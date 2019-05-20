func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
  var record = [Int: Int]()
  var i = 0
  while i < nums.count {
    let diff = target - nums[i]
    if let diffIndex = record[diff] {
      return [i, diffIndex]
    }
    record[nums[i]] = i
    i += 1
  }
  return []
}
