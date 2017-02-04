//
//  ViewController.swift
//  teste1
//
//  Created by ROBSON NUNES DE SOUZA on 04/02/17.
//  Copyright © 2017 ROBSON NUNES DE SOUZA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let abc: abcView = abcView.instanceFromNib()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        abc.frame = CGRect(x: 10, y: 50, width: 300, height: 100)
//        abc.frame.origin.y = 0
        abc.backgroundColor = .green
        abc.titleLabel.text = " xxxxxxx "
        
        self.view.addSubview(abc)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1, animations: {
            self.abc.frame.origin.y = 100

        }) { (finished) in
            print("acabou")
            self.fadeIn(completion: {
                print("Acabou fadeIn")
                self.fadeOut(completion: { 
                    print("Fade out acabou")
                })
            })
        }
    }
    
    // robson inseriu aqui
    
    func fadeIn(completion: (()-> Void)?) {
        UIView.animate(withDuration: 1, animations: {
            self.abc.alpha = 0.0
            
        }) { (finished) in
            completion?()
        }
    }
    
    func fadeOut(completion: (()-> Void)?) {
        UIView.animate(withDuration: 1, animations: {
            self.abc.alpha = 1
            
        }) { (finished) in
            completion?()
        }
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

