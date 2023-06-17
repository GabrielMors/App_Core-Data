//
//  ViewController.swift
//  AppCoreData
//
//  Created by Gabriel Mors  on 16/06/23.
//

import UIKit

class ViewController: UIViewController {

    var screen: Screen?
    
    override func loadView() {
        screen = Screen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
    
}

