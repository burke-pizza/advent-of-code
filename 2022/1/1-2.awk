#!/opt/homebrew/bin/gawk -f

NF { sums[acc] += $0 }
!NF { acc++ }
END {
    asort(sums);
    print sums[length(sums)] + sums[length(sums)-1] + sums[length(sums)-2]
}
