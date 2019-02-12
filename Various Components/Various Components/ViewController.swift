//
//  ViewController.swift
//  Various Components
//
//  Created by Ashwini shalke on 02/02/19.
//  Copyright © 2019 Ashwini shalke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // goToButton created programmatically
    let goToButton : UIButton = {
        let goTo = UIButton()
        goTo.translatesAutoresizingMaskIntoConstraints = false
        //goTo.titleLabel?.textColor = UIColor.blue
        goTo.setTitleColor(UIColor.blue, for: UIControlState.normal)
        //goTo.backgroundColor = UIColor.gray
        goTo.setTitle("Go_to_SecondViewController", for: .normal)
        goTo.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        goTo.isEnabled = true
        goTo.isUserInteractionEnabled = true
        return goTo
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(goToButton)
        
        //calling jump_secondViewController()
        goToButton.addTarget(self, action: #selector(jump_secondViewController), for: UIControlEvents.allTouchEvents)
        layout()
    }
    
    
    func layout(){
        goToButton.widthAnchor.constraint(equalToConstant: 250).isActive = true
        goToButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
        goToButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 400).isActive = true
        goToButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    
    // programmatically created seague
    @objc func jump_secondViewController()
    {
        //accessing ViewContoller using it StoryBoard ID
        let secondView:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController")
        
        self.present(secondView, animated: true, completion: nil)
    }

}

