//
//  SecondViewController.swift
//  Various Components
//
//  Created by Ashwini shalke on 07/02/19.
//  Copyright © 2019 Ashwini shalke. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    let dismissButton : UIButton = {
        let dismiss = UIButton()
        dismiss.translatesAutoresizingMaskIntoConstraints = false
        dismiss.backgroundColor = UIColor.blue
       // dismiss.in
        return dismiss
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(dismissButton)
        layout()
        // Do any additional setup after loading the view.
    }
    
    func layout(){
        dismissButton.widthAnchor.constraint(equalToConstant: 343).isActive = true
        dismissButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
        dismissButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 300).isActive = true
        dismissButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
    }
    
    func dismissView(){
        dismiss(animated: true)
        
    }
    

    
}
