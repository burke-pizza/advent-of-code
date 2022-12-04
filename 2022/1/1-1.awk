#!/usr/bin/awk -f

NF { acc += $0 }
!NF {
    if (acc > record) { record = acc; }
    acc = 0;
}
END { print record }
