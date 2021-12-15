// must O(log (m+n))

class Solution {
    public double findMedianSortedArrays(int[] nums1, int[] nums2) {
        int[] temp;
        if (nums1.length > nums2.length) {
            temp = nums1;
            nums1 = nums2;
            nums2 = temp;
        }
        
        int med = (num1.length + num2.length) / 2;

        int l = 0;
        int r = nums1.length - 1;

        while (l < r) {
            int i1 = (l + r) / 2;
            int i2 = med - i1;
            if (nums1[i1] > nums[i2]) {
                r = i1;
            } else {
                l = i1;
            }
        }
        // TODO

    }
}
