//
//  SecondViewController.swift
//  Various Components
//
//  Created by Ashwini shalke on 07/02/19.
//  Copyright © 2019 Ashwini shalke. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    // Dismiss Button created programmatically
    let dismissButton : UIButton = {
        let dismiss = UIButton()
        dismiss.translatesAutoresizingMaskIntoConstraints = false
        dismiss.backgroundColor = UIColor.gray
        dismiss.setTitle("Dismiss", for: .normal)
        dismiss.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        dismiss.isEnabled = true
        dismiss.isUserInteractionEnabled = true
        return dismiss
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(dismissButton)
        layout()
        dismissButton.addTarget(self, action: #selector(dismiss_clicked), for: UIControlEvents.allTouchEvents)
        // Do any additional setup after loading the view
    }
    
    func layout(){
        dismissButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        dismissButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
        dismissButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 300).isActive = true
        dismissButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    // dismiss the current screen
    @objc func dismiss_clicked()
    {
        self.dismiss(animated: true, completion: nil)
    }
    
}
