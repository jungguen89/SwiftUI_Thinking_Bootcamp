var nums = [10, 20, 30, 40, 50]
nums.replaceSubrange(1...3, with: repeatElement(1, count: 5))
print(nums)
// Prints "[10, 1, 1, 1, 1, 1, 50]"
