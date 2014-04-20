complete <- function(directory, id = 1:332) {
  nobs= c()
  for (i in id){
    file.name = sprintf('%03i.csv',i)
    df = read.csv(paste(directory,file.name, sep='/'))
    completed.cases = df$Date[!(is.na(df$sulfate) | is.na(df$nitrate))] 
    nobs = c(nobs, length(completed.cases)) 
  }
  data.frame(id=id, nobs=nobs)
}