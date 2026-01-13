#q1 - pyramid pattern
n=5
j=n-1

for i in 1..n do
    tmp = (i*2)-1
    puts (" " * j) + ("*" * tmp)
    j-=1
end




#q2 --- fibonacci
n=10
a=0
b=1
res=0


for i in 1..n do
    print "#{res} "
    a=b
    b=res
    res=a+b
end






# q3 --- remove duplicates (not solved)

# test = 'i love ruby on rails'
# res = "".join(set(test))

# print(res)

# ------------------------------




#q4 --- return second largest element

# arr = [99,1,47,33,11,19,7,313,5,3]
# arr.sort()
# print(arr)
# print(arr[-2])

# --------------------------------






#q5 --- merge two arrays like below

# a = [1,2,3]
# b = ['a','b','c']

# # 1,a,2,b,3,c

# a.insert(1,b[0])
# a.insert(3,b[1])
# a.insert(5,b[2])
# print(a)
