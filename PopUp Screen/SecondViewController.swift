//
//  SecondViewController.swift
//  PopUp Screen
//
//  Created by Silicon Orchard Ltd on 2/23/17.
//  Copyright © 2017 Silicon Orchard Ltd. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var popUpViewBackground: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popUpViewBackground.layer.cornerRadius = 5.0
        popUpViewBackground.clipsToBounds = true
        
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        self.showAnimate()
    }
    
    func showAnimate(){
        
        self.view.transform = CGAffineTransform(scaleX: 1.3 , y: 1.3)
        self.view.alpha = 0.0
        UIView.animate(withDuration: 0.25, animations: {
            
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        })
    }
    
    @IBAction func gotItTapped(_ sender: UIButton) {
        
        removeAnimate()
    }
    
    func removeAnimate(){
        
        UIView.animate(withDuration: 0.25, animations: {
            
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0
        }, completion: {(finished : Bool) in
            
            if (finished){
                self.view.removeFromSuperview()
            }
        })
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
