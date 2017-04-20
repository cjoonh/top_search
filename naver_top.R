text=readLines("http://www.naver.com/")
Encoding(text)="UTF-8"
text_sub=text[434:553]
L=10 # 필요한 순위 변수 설정(1~20)
text_sub2<-rep(0,L)
for(n in 1:L){
  start_p=gregexpr(text_sub[(n*6)], pattern=">")[[1]][1]+1
  end_p=gregexpr(text_sub[(n*6)], pattern="<")[[1]][2]-1
  text_sub2[n]=substr(text_sub[(n*6)], start_p, end_p)}
text_sub2