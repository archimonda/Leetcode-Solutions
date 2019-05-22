func isPalindrome(_ x: Int) -> Bool {
  func reverseInt(_ x: Int) -> Int {
    var remain = x
    var result = 0
    while remain > 0 {
      result = result * 10 + remain % 10
      remain /= 10
    }
    return result
  }
  
  if x < 0 || x != reverseInt(x) {
    return false
  }
  return true
}
