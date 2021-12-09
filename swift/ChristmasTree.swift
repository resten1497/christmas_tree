import SwiftUI
//import PlaygroundSupport
import CoreGraphics

struct Tree : Shape {
    func path(in rect: CGRect) -> Path {
        let width = rect.width
        let treeWidth : CGFloat = 60
        let treeHeight : CGFloat  = 30
        let number = 3
        return Path { path in
            path.move(to: CGPoint(x: width/2, y: 0))
            for i in 1...number {
                path.addLine(to: CGPoint(x: width/2 + treeWidth + 20 * CGFloat(i-1), y: treeHeight * CGFloat(3*i)))
                path.addLine(to: CGPoint(x: width/2 + treeWidth / 2, y: treeHeight * CGFloat(3*i)))
            }
            path.move(to: CGPoint(x: width/2, y: 0))
            for i in 1...number {
                path.addLine(to: CGPoint(x: width/2 - treeWidth - 20 * CGFloat(i-1), y: treeHeight * CGFloat(3*i)))
                path.addLine(to: CGPoint(x: width/2 - treeWidth / 2, y: treeHeight * CGFloat(3*i)))
            }
            let endYpostion = treeHeight*CGFloat(3*number)
            path.addLine(to: CGPoint(x: width/2 - treeWidth / 2, y: endYpostion + 50))
            path.addLine(to: CGPoint(x: width/2 + treeWidth / 2, y: endYpostion + 50))
            path.addLine(to: CGPoint(x: width/2 + treeWidth / 2, y: endYpostion))
            
        }
    }
}

struct Content : View {
    var body : some View {
        VStack{
            Text("Merry Christmas")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Tree()
                .stroke(style:StrokeStyle(lineWidth: 7, lineCap: .round, lineJoin: .round))
                .fill(.white)
        }.frame(width:420,height:420)
            .background(LinearGradient(colors: [.black,.red,.red,.black], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}



//PlaygroundPage.current.setLiveView(Content())

