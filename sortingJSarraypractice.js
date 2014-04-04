
//sample data I created to work with
var employees=[]
  employees[0]={name:"George", age:32, retiredate:"March 12, 2014"}
  employees[1]={name:"Edward", age:17, retiredate:"June 2, 2023"}
  employees[2]={name:"Christine", age:58, retiredate:"December 20, 2036"}
  employees[3]={name:"Sarah", age:62, retiredate:"April 30, 2020"}


//sorts employees by age
console.log("sorting by age..")
employees.sort(function(a, b){
 return a.age-b.age
})


//sorts employees by name
console.log("now by name!")
employees.sort(function(a, b){
 var nameA=a.name.toLowerCase(), nameB=b.name.toLowerCase()
 if (nameA < nameB) //sort string ascending
 return -1
 if (nameA > nameB)
  return 1
 return 0 //default return value (no sorting)
}) 


// sorts employees by retire date
console.log("now by retire date!")
employees.sort(function(a,b){
    
    var dateA=new Date(a.retiredate), dateB=new Date(b.retiredate)
    return dateA-dateB

})