corr <- function(directory, threshold = 0) {
  cors=c()
  all.files = complete(directory)
  id = all.files$id[all.files$nobs > threshold]
  for (i in id){
    file.name = sprintf('%03i.csv',i)
    data = read.csv(paste(directory,file.name, sep='/'))
    cors = c(cors, cor(data$sulfate, data$nitrate, use='complete.obs') )
  }
  cors
}