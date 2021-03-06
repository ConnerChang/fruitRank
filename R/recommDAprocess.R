recommDAfilter <- function(age, gender, pregnant){
    if (age == "1-") return(recommDA[1,-(1:3)])
    if (age == "1-3") return(recommDA[2,-(1:3)])
    if (age == "4-9") {
        if (gender == "m") {
            return(recommDA[3,-(1:3)])
        }else{
            return(recommDA[4,-(1:3)])
        }
    }

    if (gender == "m") {
        result <- recommDA[which(recommDA$ageRange == age &
                                     recommDA$gender == gender), -(1:3)]
    }else{
        result <- recommDA[which(recommDA$ageRange == age &
                                     recommDA$gender == gender &
                                     recommDA$pregnant == pregnant), -(1:3)]
    }
    return(result)
}
