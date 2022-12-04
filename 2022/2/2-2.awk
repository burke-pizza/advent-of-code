BEGIN {
    scores["A X"]=3;
    scores["A Y"]=4;
    scores["A Z"]=8;
    scores["B X"]=1;
    scores["B Y"]=5;
    scores["B Z"]=9;
    scores["C X"]=2;
    scores["C Y"]=6;
    scores["C Z"]=7;
}
acc += scores[$0]
END { print acc }

# A X (3 + 0 = 3)
# A Y (1 + 3 = 4)
# A Z (2 + 6 = 8)
# B X (1 + 0 = 1)
# B Y (2 + 3 = 5)
# B Z (3 + 6 = 9)
# C X (2 + 0 = 2)
# C Y (3 + 3 = 6)
# C Z (1 + 6 = 7)
