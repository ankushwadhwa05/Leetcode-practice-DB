class Solution:
    def numberOfEmployeesWhoMetTarget(self, hours: List[int], target: int) -> int:
        sum=0
        for i in hours:
            if i>=target:
                sum+=1
            else:
                i+=1
        return sum

        