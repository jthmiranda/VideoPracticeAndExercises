
func checkMultiple(first: Int, second: Int) -> Bool {
    
    if second.isMultiple(of: first) {
        return true
    }
    
    return false
}

let first = 0
let second = 20

checkMultiple(first: first, second: second)
