
class Node {
    private var value: String
    private var leftChild: Node?
    private var rightChild: Node?
    
    private func depthMeasure() -> Int {
        var depth: Int = 0
        var cursor: Node? = leftChild
        print(cursor ?? "nil")
        while (cursor != nil) {
            cursor = cursor?.leftChild
            depth += 1
        }
        return depth
    }
    private func pow(_ num1: Int, _ num2: Int) -> Int {
        if (num2 == 0) { return 1 }
        if (num2 == 1) { return num1 }
        return num1 * pow(num1, num2 - 1)
    }
    func draw(_ i : Int) {
        let depth : Int = depthMeasure()
        var index = i
        for i in 0...depth {
            for _ in stride(from: (pow(2,depth)/2+2) , through: (pow(2, i)-1), by: -1) {
                print(" ", terminator:"")
            }
            for _ in stride(from: 0, through: (pow(2, i) - 1), by: 1) {
                if (christmasTree[index]?.value == nil) {
                    continue
                }
                print("\((christmasTree[index]?.value)!) ", terminator:"")
                index += 1
            }
            print("")
        }
        for _ in 1...2 {
            for _ in 1...depth {
                print("  ", terminator:"")
            }
            print("줄기")
        }
    }
    init(_ leftChild: Node?,_ value: String,_ rightChild: Node?) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}

let christmasChar: [String?] = [nil,"*","C","h","r","i","s","t","m","a","s"," ","T","r","e","e"]
var christmasTree = [Node?](repeating: nil, count: 16)

    
for i in stride(from: 15,to: 0,by: -1) {
    var left: Node?
    var right: Node?
    if (i < 8) {
        left = christmasTree[i * 2]
        right = christmasTree[i * 2 + 1]
    }
    christmasTree[i] = Node(left, christmasChar[i]!, right)
}
var rootTree = christmasTree[1]
rootTree?.draw(1)

