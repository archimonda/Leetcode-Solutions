/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

/**
 执行用时 : 72 ms, 在Add Two Numbers的Swift提交中击败了93.53% 的用户
 内存消耗 : 21.5 MB, 在Add Two Numbers的Swift提交中击败了5.14% 的用户
 
 1. 使用flag标识当前是否需要进位
 2. 共同遍历两个链表，取两个结点和flag的和，并重设flag
 3. 处理比较长的链表
 4. 最终处理flag
 */
func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
  var flag = 0
  var p = l1
  var q = l2
  var dummy = ListNode(-1)
  var rear = dummy
  while p != nil && q != nil {
    let val = p!.val + q!.val + flag
    let newNode = ListNode(val % 10)
    flag = val / 10
    rear.next = newNode
    rear = newNode
    p = p!.next
    q = q!.next
  }
  while p != nil {
    print(p!.val)
    let val = p!.val + flag
    let newNode = ListNode(val % 10)
    flag = val / 10
    rear.next = newNode
    rear = newNode
    p = p!.next
  }
  
  while q != nil {
    let val = q!.val + flag
    let newNode = ListNode(val % 10)
    flag = val / 10
    rear.next = newNode
    rear = newNode
    q = q!.next
  }
  if flag != 0 {
    rear.next = ListNode(1)
  }
  return dummy.next
}
