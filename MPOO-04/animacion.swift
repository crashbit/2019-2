//: [Previous](@previous)

import UIKit
import PlaygroundSupport


let liveViewFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let liveView = UIView(frame: liveViewFrame)

liveView.backgroundColor = .red

let smallFrame = CGRect(x: 0, y: 0, width: 100, height: 100)
let square = UIView(frame: smallFrame)
square.backgroundColor = .purple

liveView.addSubview(square)

//
//UIView.animate(withDuration: 3.0) {
//    square.backgroundColor = .orange
//    square.frame = CGRect(x: 150, y: 150, width: 200, height: 200)
//}

//UIView.animate(withDuration: 3.0, animations: {
//    square.backgroundColor = .orange
//       square.frame = CGRect(x: 150, y: 150, width: 200, height: 200)
//}) { (_) in
//    UIView.animate(withDuration: 3.0, animations: {
//        square.backgroundColor = .purple
//        square.frame = smallFrame
//    })
//}
//

//UIView.animate(withDuration: 3.0, delay: 2.0, options: [.repeat, .curveEaseIn], animations: {
//        square.backgroundColor = .orange
//           square.frame = CGRect(x: 150, y: 150, width: 200, height: 200)
//}, completion: nil)
//
//UIView.animate(withDuration: 3.0) {
//    square.backgroundColor = .orange
//
//    let scaleTransform = CGAffineTransform(scaleX: 2.0, y: 2.0)
//
//    let rotateTransform = CGAffineTransform(rotationAngle: .pi)
//
//    let translateTranform = CGAffineTransform(translationX: 200, y: 200)
//
//    let comboTransform = scaleTransform.concatenating(rotateTransform).concatenating(translateTranform)
//
//    square.transform = comboTransform
//
//}

UIView.animate(withDuration: 3.0, animations: {
    square.backgroundColor = .orange
    
    let scaleTransform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    
    let rotateTransform = CGAffineTransform(rotationAngle: .pi)
    
    let translateTranform = CGAffineTransform(translationX: 200, y: 200)
    
    let comboTransform = scaleTransform.concatenating(rotateTransform).concatenating(translateTranform)
    
    square.transform = comboTransform
}) { (_) in
    UIView.animate(withDuration: 3.0, animations: {
        square.transform = CGAffineTransform.identity
    })
}




PlaygroundPage.current.liveView = liveView


//: [Next](@next)
