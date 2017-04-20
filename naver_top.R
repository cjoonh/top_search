#2017-04-20 최준혁 작
#네이버 실시간 상위 검색어 출력 함수입니다
#L=필요한 순위 변수 입력(1~20)

navertop <- function(L) {
text=readLines("http://www.naver.com/")
Encoding(text)="UTF-8"
text_sub=text[434:553]
navertop_text<-rep(0,L)
for(n in 1:L){
  start_p=gregexpr(text_sub[(n*6)], pattern=">")[[1]][1]+1
  end_p=gregexpr(text_sub[(n*6)], pattern="<")[[1]][2]-1
  navertop_text[n]=substr(text_sub[(n*6)], start_p, end_p)}
return(navertop_text)
}