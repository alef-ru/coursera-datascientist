pollutantmean <- function(directory, pollutant, id = 1:332) {
  acc= c()
  for (i in id){
    file.name = sprintf('%03i.csv',i)
    df = read.csv(paste(directory,file.name, sep='/'))
    acc = if (pollutant == 'sulfate')
      c(acc, df$sulfate)
    else if (pollutant == 'nitrate')
      c(acc, df$nitrate)
    else 
      NA 
  }
  mean(acc, na.rm=T)
}