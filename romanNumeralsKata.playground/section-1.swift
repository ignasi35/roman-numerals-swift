
import Cocoa

let mappingList : (Int, String)[] = [
    (1000,"M"), (900,"CM"),
    (500,"D"), (400,"CD"),
    (100,"C"), (90,"XC"),
    (50,"L"), (40,"XL"),
    (10,"X"), (9,"IX"),
    (5,"V"), (4,"IV"),
    (1,"I")
]


func toRoman( i :Int ) -> String {
    let z :(Int , String) = (i,"")
    
    func combiner( acc:(Int, String) , mapper:(Int, String)) -> (Int, String)  {
        let n :Int = acc.0 - mapper.0*(acc.0/mapper.0) ;
        var figures = ""
        for x in 0..(acc.0/mapper.0) {
            figures += mapper.1
        }
        let s : String =  acc.1 + figures ;
        return ( n , s ) ;
    } ;
    
    return mappingList.reduce( z , combiner).1 ;
}

toRoman(1) == "I"
toRoman(2) == "II"
toRoman(3) == "III"
toRoman(5) == "V"
toRoman(10) == "X"
toRoman(50) == "L"
toRoman(100) == "C"
toRoman(500) == "D"
toRoman(1000) == "M"

toRoman(600) == "DC"
toRoman(637) == "DCXXXVII"

toRoman(4) == "IV"
toRoman(9) == "IX"
toRoman(40) == "XL"
toRoman(90) == "XC"
toRoman(400) == "CD"
toRoman(900) == "CM"




