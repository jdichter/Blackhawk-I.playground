//: Playground - noun: a place where people can play

import UIKit

let playersDictionary = [
    15:"Anisimov",
    11:"Desjadrins",
    81:"Hossa",
    88:"Kane",
    16:"Kruger",
    53:"Mashinter",
    72:"Panarin",
    14:"Panik",
    19:"Toews",
    51:"Campbell",
    52:"Gustafsson",
    4:"Hjalmarsson",
    2:"Keith",
    32:"Rozsival",
    7:"Seabrook",
    43:"Svedberg",
    57:"Riemsdyk",
    50:"Crawford",
    33:"Darling",
]

print("Displaying Players Dictionary")
for (number, name) in playersDictionary
{
    
    print("number: \(number)  Name: \(name)")
    
}

var name:[String] =
["Anisimov",
"Desjadrins",
"Hossa",
"Kane",
"Kruger",
"Mashinter",
"Panarin",
"Panik",
"Toews",
"Campbell",
"Gustafsson",
"Hjalmarsson",
"Keith",
"Rozsival",
"Seabrook",
"Svedberg",
"Riemsdyk",
"Crawford",
"Darling"]

for i in 0 ..< name.count
{
    print(name[i])
}

var age:[Int] = [28,29,37,27,26,27,24,25,28,37,24,29,32,37,31,25,24,31,27]

for i in 0 ..< age.count
{
    print(age[i])
}


var country:[String] = ["RUS","CAN","SVK","USA","SWE","CAN","RUS","SVK","CAN","CAN","SWE","SWE","CAN","CZE","CAN","SWE","USA","CAN","USA"]

for i in 0 ..< country.count
{
    print(country[i])
}

var height = [76,73,73,71,72,76,71,73,74,70,72,75,73,73,75,80,74,74,78]

var bday=[(5,24,1988),(7,27,1986),(1,12,1979),(11,19,1988),(5,27,1990),(9,20,1988),(10,30,1991),(2,7,1991),(4,29,1988),(5,23,1979),(3,14,1992),(6,6,1987),(7,16,1983),(9,3,1978),(4,20,1985),(5,24,1991),(7,24,1991),(12,31,1984),(12,22,1991)]


for i in 0 ..< height.count
{
    print(height[i])
}

func sortAge()
{
    for i in 0 ..< age.count
    {
        for j in 0 ..< age.count-1
        {
            if age[j]>age[j+1]
            {
                let ageTemp = age[j]
                age[j] = age[j+1]
                age[j+1] = ageTemp
                
                let heightTemp = height[j]
                height[j] = height[j+1]
                height[j+1] = heightTemp
                
                let countryTemp = country[j]
                country[j] = country[j+1]
                country[j+1] = countryTemp
                
                let nameTemp = name[j]
                name[j] = name[j+1]
                name[j+1] = nameTemp
                
            }
        }
        
    }
}


func sortCountry()
{
    for var i = 0; i < age.count; i+=1
    {
        for var j = 0; j < age.count-1; j+=1
        {
            if country[j]>country[j+1]
            {
                let ageTemp = age[j]
                age[j] = age[j+1]
                age[j+1] = ageTemp
                
                let heightTemp = height[j]
                height[j] = height[j+1]
                height[j+1] = heightTemp
                
                let countryTemp = country[j]
                country[j] = country[j+1]
                country[j+1] = countryTemp
                
                let nameTemp = name[j]
                name[j] = name[j+1]
                name[j+1] = nameTemp
                
            }
        }
        
    }
}


func printData()
{
    
    for i in 0 ..< name.count
    {
        print(name[i], age[i], country[i], height[i])
    }
    
}

func avgAge()->Float
{
    var sum:Float = 0
    for i in 0 ..< age.count
    {
        sum = sum + Float(age[i])
    }
    return sum/Float(age.count)
}

func bdMonth()->String
{
    var months:[Int]=[0,0,0,0,0,0,0,0,0,0,0,0]
    
    // populate frequency array
    for i in 0 ..< bday.count
    {
        months[bday[i].0-1]+=1
    }
    
    print("months ARRAY")
    print(months)
    print()
    
    var maxMonth = 0;
    var maxCount = months[0];
    
    for j in 1 ..< months.count
    {
        print("months[\(j)] = \(months[j]) maxMonth = \(maxMonth)")
        if months[j] > maxCount
        {
            print("NEW MAX is \(j) = \(months[j])")
            maxCount = months[j]
            maxMonth = j+1
        }
    }
    
    
    switch(maxMonth)
    {
    case 1 :  return "JAN"
    case 2 :  return "FEB"
    case 3 :  return "MAR"
    case 4 :  return "APR"
    case 5 :  return "MAY"
    case 6 :  return "JUN"
    case 7 :  return "JUL"
    case 8 :  return "AUG"
    case 9 :  return "SEP"
    case 10 :  return "OCT"
    case 11 :  return "NOV"
    case 12 :  return "DEC"
    default : return "LOL"
        
        
    }
    
    
    
}

func avgHeight()->Float
{
    var sum:Float = 0
    for i in 0 ..< height.count
    {
        sum = sum + Float(height[i])
    }
    return sum/Float(height.count)
}

for i in 0 ..< age.count
{
    print(age[i])
}

print("Players by AGE")
sortAge()
print()
printData()

print()
print("Players by COUNTRY")
sortCountry()
print()
printData()


let  averageAge = avgAge()
print()
print ("Average Age of Players is \(avgAge())")

let averageHeight = Int(avgHeight() + Float(0.5))
print()
print ("Average Height = \(averageHeight/12)'\(averageHeight%12)\"")

print()
print("Most Popular Birthday Month is: \(bdMonth())")



