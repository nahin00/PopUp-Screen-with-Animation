//
//  ViewController.swift
//  PopUp Screen
//
//  Created by Silicon Orchard Ltd on 2/23/17.
//  Copyright © 2017 Silicon Orchard Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func openSecondVC(_ sender: UIButton) {
        
        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.addChildViewController(secondVC)
        
        secondVC.view.frame = self.view.frame
        self.view.addSubview(secondVC.view)
        
        secondVC.didMove(toParentViewController: self)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
}

