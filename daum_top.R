#2017-04-20 daum.net(1~10)

daum_top <- function(L) {
  text=readLines("http://www.daum.net/")
  Encoding(text)="UTF-8"
  text_sub=text[1874:2026]
  daum_text<-rep(0,L)
  for(n in 1:L){
    start_p=gregexpr(text_sub[(n*12)], pattern=">")[[1]][2]+1
    end_p=gregexpr(text_sub[(n*12)], pattern="<")[[1]][3]-1
    daum_text[n]=substr(text_sub[(n*12)], start_p, end_p)}
return(daum_text)
}
