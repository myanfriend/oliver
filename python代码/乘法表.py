# def mutil_table():
#     """
#    9*9乘法表
#     """
#     i=1
#
#     sum=0
#     while i<=9:
#         j = 1
#         while j<=i:
#             sum=i*j
#             print("%d*%d=%d"%(j,i,sum),end=(" "))
#             j+=1
#         print("")
#         i+=1

def mutil_table():
    for i in range(1,10):
        for j in range(1,i+1):
            print("%d*%d=%2d"%(j,i,i*j),end="\t")

        print("")


# mutil_table()
mutil_table()