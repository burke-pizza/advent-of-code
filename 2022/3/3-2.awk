BEGIN {
    split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ",alpha,"");
}
{
    first=$0; getline;
    second=$0; getline;
    third=$0;
    for (i in alpha) {
        if (first ~ alpha[i] && second ~ alpha[i] && third ~ alpha[i]) acc += i;
    }
}
END { print acc }
