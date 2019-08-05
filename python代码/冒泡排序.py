def bubbleSort(arr):
    for i in range (len(arr)-1):
        for j in range (len(arr)-i-1):
            if(arr[j]<arr[j+1]):
                arr[j],arr[j+1]=arr[j+1],arr[j]
        print("第%d轮"%(i+1),end="")
        print(arr)

    return arr


bubbleSort([2,5,3,1,6])