pollutantmean <- function(directory, pollutant, id = 1:332) {
  all.observation= c()
  for (i in id){
    file.name = sprintf('%03i.csv',i)
    df = read.csv(paste(directory,file.name, sep='/'))
    all.observation = if (pollutant == 'sulfate')
      c(all.observation, df$sulfate)
    else if (pollutant == 'nitrate')
      c(all.observation, df$nitrate)
    else 
      NA 
  }
  mean(all.observation, na.rm=T)
}