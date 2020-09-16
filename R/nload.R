nload<-function(..., dependencies=T , update=T){
  pacc <- as.character(match.call(expand.dots = FALSE)[[2]])
  
  if (update==T | update=="auto"){
  updatematrix<-old.packages()
  }
  
  for (i in pacc){
    package <- as.character(i)
    
    if(update==T){
     if(any(updatematrix[,1]==i)) 
      install.packages(i)
    }
    
    ## Loads single package
    if(require(i,character.only = T)){
      print(paste(package, "package loaded correctly"))
    ## Downloads single package  
    } else {
      print(paste("trying to install required package", i))
      install.packages(i, dependencies = dependencies)
      if(require(i,character.only = T)){
        print(paste(i,"package installed and loaded"))
      } else {
        stop("could not install package", i)
      }
    }
  }
}
