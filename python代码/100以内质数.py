def zhishu():
    for i in range(2, 101):
        counter = True
        for j in range(1, i):
            if (i % j == 0) and (j != 1) and (j != i):
                counter = False
                break
        if (counter == True):
            print(i, end=" ")

zhishu()