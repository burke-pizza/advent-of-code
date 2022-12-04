BEGIN { FS = "," }
{
    split($1, first, "-");
    split($2, second, "-");
    if (first[1] >= second[1] && first[1] <= second[2]) { acc++; next; }
    if (first[2] >= second[1] && first[2] <= second[2]) { acc++; next; }
    if (second[1] >= first[1] && second[1] <= first[2]) { acc++; next; }
    if (second[2] >= first[1] && second[2] <= first[2])   acc++;
}
END { print acc }
