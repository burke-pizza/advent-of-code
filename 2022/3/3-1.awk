BEGIN {
    split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ",alpha,"");
}
{
    first=substr($0, 1, length($0)/2);
    second=substr($0, (length($0)/2)+1);
    for (i in alpha) {
        if (first ~ alpha[i] && second ~ alpha[i]) acc += i;
    }
}
END { print acc }
