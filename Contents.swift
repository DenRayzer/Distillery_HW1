import UIKit

var list = [5,65,4,7,24,66,54,65,2]

// task 1
func bubbleSort( mas: inout[Int]) -> [Int]{
    for i in 1..<mas.count{
        var sorted = true
        for j in 0..<mas.count-i{
            if mas[j]>mas[j+1] {
                mas.swapAt(j, j+1)
                sorted = false
            }
        }
        if sorted {
            break
        }
    }
    return mas
}

bubbleSort(mas: &list)


// task 2
func wordsCount(s : String) -> Int{
  return  s.split(separator: " ").count
}

var t = " They are sometimes called horseshoe crabs (a name applied more specifically to the only extant family, Limulidae). They first appeared in the Hirnantian (Late Ordovician). Currently, there are only four living species. They are members of the order Xiphosura, which contains two suborders, Xiphosurida and Synziphosurina."

wordsCount(s: t)

func wordsCount2(s: String) -> Int {
    var count = 0
    for i in s {
        switch i {
        case Character(" "), Character("\n"), Character("\t"):
            count += 1
        default:
            break
        }
    }
    return count
}

wordsCount2(s: t)


// task 3
func target(mas: inout[Int], target: Int) -> (Int?,Int?) {
    for i in 0..<mas.count where mas[i]<target{
        for j in i+1..<mas.count where mas[j]<target{
            if mas[i]+mas[j]==target{
             return(i,j)
            }
        }

    }
     return (nil,nil)
}

var nums = [2,15,17,7]
print(target(mas: &nums, target: 9))

