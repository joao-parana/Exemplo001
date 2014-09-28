//
//  ViewController.swift
//  Exemplo001
//
//  Created by Joao Ferreira on 9/27/14.
//  Copyright (c) 2014 si. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var myLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    println("Oi Mundo")
    myLabel.text = "Funcionou"
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

