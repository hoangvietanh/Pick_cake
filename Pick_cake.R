# De bai: co 2 hop banh, hop 1 co 400 banh tron, 200 banh vuong; hop 2 co 300 banh tron
# 300 banh vuong. Tinh xac suat de lay ngau nhien banh tron tu hop 1.
# note: khong tron lan 2 hop banh vao nhau


# Buoc 1 tao 2 hop banh, hop1 co 400 banh tron, 200 banh vuong; hop 2, 300 banh tron, 300 banh vuong
t1=rep("T1",400)
v1=rep("V1",200)
h1 = as.vector(c(t1,v1))
summary(h1)

t2=rep("T2",30)
v2=rep("V2",30)
h2=as.vector(c(t2,v2))
h2


# Buoc 2: PickBox
CakeBox = c("h1","h2")

# Buoc 3: Chon ngau nhien hop va banh
# Chon ngau nhien hop
PickBox = sample(CakeBox,1)
PickBox = eval(parse(text = PickBox))

# Chon ngau nhien banh
h_temp = sample(PickBox,1)



# Tao so lan lap
lap   = rep(1:10000) 
i     = 1

h3    = c()  # Ban dau: chua co gi, tao bien ket qua

for(i in lap){
  
  # Chon ngau nhien hop
  PickBox = sample(CakeBox,1)
  PickBox = eval(parse(text = PickBox))
  
  # Chon ngau nhien banh
  h_temp = sample(PickBox,1)
  
  # Lan i:
  h3    = c(h3, h_temp)
  
  i = i + 1
}

h3_table=table(h3)
barplot(h3_table)

h3_table=as.data.frame(h3_table)
t1_count=h3_table[1,2]
t1_ratio=t1_count/length(h3)
t1_ratio
