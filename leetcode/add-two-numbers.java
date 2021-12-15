/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode() {}
 *     ListNode(int val) { this.val = val; }
 *     ListNode(int val, ListNode next) { this.val = val; this.next = next; }
 * }
 */
class Solution {
    public ListNode addTwoNumbers(ListNode l1, ListNode l2) {
        ListNode ans = new ListNode();
        ListNode cur = ans;
        int carry = 0;

        while (l1 != null || l2 != null) {
            int sum = carry
                + (l1 != null ? l1.val : 0)
                + (l2 != null ? l2.val : 0);
            if (sum > 9) {
                sum -= 10;
                carry = 1;
            } else carry = 0;
            cur.next = new ListNode(sum);
            cur = cur.next;

            if (l1 != null) l1 = l1.next;
            if (l2 != null) l2 = l2.next;
        }

        if (carry == 1) cur.next = new ListNode(1);

        return ans.next;
    }
}