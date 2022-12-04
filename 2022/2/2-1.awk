BEGIN {
    scores["A X"]=4;
    scores["A Y"]=8;
    scores["A Z"]=3;
    scores["B X"]=1;
    scores["B Y"]=5;
    scores["B Z"]=9;
    scores["C X"]=7;
    scores["C Y"]=2;
    scores["C Z"]=6;
}
acc += scores[$0]
END { print acc }

# A X (1 + 3 = 4)
# A Y (2 + 6 = 8)
# A Z (3 + 0 = 3)
# B X (1 + 0 = 1)
# B Y (2 + 3 = 5)
# B Z (3 + 6 = 9)
# C X (1 + 6 = 7)
# C Y (2 + 0 = 2)
# C Z (3 + 3 = 6)
