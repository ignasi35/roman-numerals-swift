
import Cocoa

var str = "Hello, playground"


    func toRoman0( acc :String , i :Int ) -> String {
        if(i==0) {
            return acc
        } else if (i >= 1000) {
            return toRoman0(acc+"M", i-1000)
        } else if (i >= 900) {
            return toRoman0(acc+"CM", i-900)
        }else if (i >= 500) {
            return toRoman0(acc+"D", i-500)
        }else if (i >= 400) {
            return toRoman0(acc+"CD", i-400)
        }else if (i >= 100) {
            return toRoman0(acc+"C", i-100)
        }else if (i >= 90) {
            return toRoman0(acc+"XC", i-90)
        }else if (i >= 50) {
            return toRoman0(acc+"L", i-50)
        }else if (i >= 40) {
            return toRoman0(acc+"XL", i-40)
        }else if (i >= 10) {
            return toRoman0(acc+"X", i-10)
        }else if (i >= 9) {
            return toRoman0(acc+"IX", i-9)
        }else if (i >= 5) {
            return toRoman0(acc+"V", i-5)
        }else if (i >= 4) {
            return toRoman0(acc+"IV", i-4)
        }else {
            return toRoman0(acc+"I", i-1)
        }
    }

func toRoman(i:Int) -> String {
    return toRoman0("", i)
}

println ("Hello, playground")

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




