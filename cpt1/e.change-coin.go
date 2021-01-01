// p27 找零，递归 + 动态规划
package main

import "fmt"

func recursive(n int) int {
	var (
		fn func(n, kinds int) int
		fd = map[int]int{
			1: 1,
			2: 5,
			3: 10,
			4: 25,
			5: 50}
	)
	fn = func(n, kinds int) int {
		if n == 0 {
			return 1
		}
		if n < 0 || kinds == 0 {
			return 0
		}
		return fn(n, kinds-1) + fn(n-fd[kinds], kinds)
	}
	return fn(n, 5)
}

func iter(n int) int {
	var (
		kinds = []int{1, 5, 10, 25, 50}
		dp    = make([][]int, len(kinds))
	)
	for i := range dp {
		dp[i] = make([]int, n+1)
	}
	for i := 0; i < len(kinds); i++ {
		dp[i][0] = 1
	}
	for i := 0; i*kinds[0] <= n; i++ {
		dp[0][i*kinds[0]] = 1
	}
	for i := 1; i < len(kinds); i++ {
		for j := 1; j <= n; j++ {
			dp[i][j] = dp[i-1][j]
			if j-kinds[i] >= 0 {
				dp[i][j] += dp[i][j-kinds[i]]
			}
		}
	}
	return dp[len(kinds)-1][n]
}

func main() {
	fmt.Println(recursive(1000))
	fmt.Println(iter(1000))
}
