//
//  ThirdViewController.swift
//  Day3IOS
//
//  Created by Ankita Pabbi on 2019-07-02.
//  Copyright © 2019 Ankita Pabbi. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Third"
        navigationController?.hidesBarsOnTap = true
        //navigationController?.navigationItem.hidesBackButton = true
        //navigationItem.hidesBackButton = true
       hideBack()
        
        // Do any additional setup after loading the view.
    }
    
    func hideBack()
    {
        self.navigationItem.hidesBackButton = true
        
        let buttonHome = UIBarButtonItem(title: "Home", style: UIBarButtonItem.Style.plain, target: self, action: #selector(ThirdViewController.goToHome))
        
        self.navigationItem.leftBarButtonItem = buttonHome
    }
    
    @objc func goToHome() {
        // this is done using index
        //self.navigationController?.popToViewController((navigationController?.viewControllers[1])!, animated: true)
        navigationController?.popToRootViewController(animated: true)
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
