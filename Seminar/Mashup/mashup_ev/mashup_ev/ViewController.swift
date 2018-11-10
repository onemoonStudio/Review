//
//  ViewController.swift
//  mashup_ev
//
//  Created by 김현태 on 10/11/2018.
//  Copyright © 2018 onemoon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var weakPurpleView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 3, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0, options: [.repeat,.autoreverse], animations: {
            self.topConstraint.constant = 200
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        // 그룹으로 만들어서 여러개를 동시에 진행할 수 있다.
        let group = CAAnimationGroup()
        group.animations = []
        group.duration = 2
        
        
        let frameAni = CABasicAnimation()
        frameAni.keyPath = "position"
        frameAni.fromValue = CGPoint(x: 0, y: 0)
        frameAni.toValue = CGPoint(x: 100, y: 100)
        frameAni.autoreverses = true
        frameAni.repeatCount = 2
        
        let myAnimation = CABasicAnimation()
        myAnimation.keyPath = "backgroundColor"
        myAnimation.fromValue = UIColor.red.cgColor
        myAnimation.toValue = UIColor.blue.cgColor
        myAnimation.duration = 3
        
        group.animations?.append(frameAni)
        group.animations?.append(myAnimation)
        
//        weakPurpleView.layer.add(myAnimation,forKey: "sss")
        weakPurpleView.layer.add(group,forKey: "sss")
        weakPurpleView.layer.backgroundColor = UIColor.red.cgColor
        
        
    }
}
