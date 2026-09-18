class Solution {
    public boolean isPalindrome(int x) {
        int origianlNum = x;
        int remainder;
        int reverseNum = 0;
        if(x<0) {
            return false;
        }
        while(x != 0) {
            remainder = x %10;
            reverseNum = reverseNum * 10 + remainder;
            x /= 10;
        }
        if(origianlNum == reverseNum){
            return true;
        }
        else {
            return false;
        }
    }
}