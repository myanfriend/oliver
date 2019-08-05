# 循环法
def jitutonglong_01(tou,jiao):
    ji = 0
    while True:       #无限循环
        tu = tou - ji
        if 2 * ji + 4 * tu == jiao:
            print("鸡有：%d只"%ji)
            print("兔有：%d只"%tu)
            break       #退出循环
        ji += 1         #等于ji=ji+1

jitutonglong_01(35,94)
