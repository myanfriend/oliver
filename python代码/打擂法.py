import time
def findBiggest(arr):
    biggest=arr[0]
    biggest_index=0
    for i in range(1,len(arr)):
        if(biggest<arr[i]):
            biggest=arr[i]
            biggest_index=i
    print("最大值为",arr[biggest_index])

arr=[2,23,4,34,45]
start=time.time()
findBiggest(arr)
end=time.time()-start
print(end)
