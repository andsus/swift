struct SumOfMultiples{
    static func  toLimit(_ upperbound: Int, inMultiples: [Int]) -> Int{
        guard upperbound > 1 else { return 0 }
        return (1..<upperbound).reduce(0){
            for f in inMultiples where f != 0 {  // neat trick from mentor to use where closure
                if ($1.isMultiple(of: f)){
                    return $0 + $1
                }
            }
            return $0
        }
    }
}