//
//  ViewController.swift
//  TestLayoutContainer
//
//  Created by Vladimir Inozemtsev on 20.03.2020.
//  Copyright © 2020 inozemtsev Vladimir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var layoutContainerView: LayoutContainerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let blueView = UIView()
        blueView.backgroundColor = .blue
        layoutContainerView.setContentView(view: blueView)
        layoutContainerView.setContentView(view: blueView)
        layoutContainerView.setContentView(view: blueView)
    }


}

