nload<-function(..., dependencies=T , updatecheck=T){
  pacc <- as.character(match.call(expand.dots = FALSE)[[2]])
  updatelist<-utils::old.packages()[,1]
  for (i in pacc){
    package <- as.character(i)
    # if(updates==T & any(updatelist==package)){
    #
    #   print(paste("trying to update required package", i))
    #   install.packages(i, dependencies = dependencies)
    #
    #   if(require(i,character.only = T)){
    #     print(paste(i,"package installed and loaded"))
    #   } else {
    #     stop("could not install package", i)
    #   }
    #
    # }else{
    if(updatecheck==T & any(updatelist==package)){
      message(paste("Your version of", package, "is outdated"))
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

