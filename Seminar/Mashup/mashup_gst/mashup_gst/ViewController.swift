//
//  ViewController.swift
//  mashup_gst
//
//  Created by 김현태 on 10/11/2018.
//  Copyright © 2018 onemoon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var panGesture: UIPanGestureRecognizer!
    // user interaction true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

extension UIViewController{
    @IBAction func panGesureAction(_ recognizer: UIPanGestureRecognizer){
        let translation = recognizer.translation(in: self.view)
        // 움직이는 범위를 지정해준다. 
        
        if let movingView = recognizer.view{
            movingView.center = CGPoint(x: movingView.center.x + translation.x , y: movingView.center.y + translation.y)
            
            recognizer.setTranslation(.zero, in: self.view)
        }
    }
    
    @IBAction func pinchAction(_ recognizer: UIPinchGestureRecognizer){
        if let movingView = recognizer.view{
            movingView.transform = movingView.transform.scaledBy(x: recognizer.scale, y: recognizer.scale)
            
            recognizer.scale = 1;
        }
    }
    
    @IBAction func rotateGestureAction(_ recognizer: UIRotationGestureRecognizer) {
        if let movingView = recognizer.view{
            movingView.transform = movingView.transform.rotated(by: recognizer.rotation)
            
            recognizer.rotation = 0
        }
    }
    
    // user Interaction 이 꺼져있는 경우가 많음
    // label 올리기
    @IBAction func tapGestureAction(_ sender: UITapGestureRecognizer){
        let ac = UIAlertController(title: nil, message: "hello", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "ok", style: .cancel , handler: nil))
        
        present(ac,animated: true)
    }
}


class TestEx{
    func twiceValue(_ input: Int) -> Int {
        return 0 
    }
}
