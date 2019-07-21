def mutil_table():

    i=1

    sum=0
    while i<=9:
        j = 1
        while j<=i:
            sum=i*j
            print("%d*%d=%d"%(j,i,sum),end=(" "))
            j+=1
        print("")
        i+=1

mutil_table()