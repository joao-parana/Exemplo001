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
  
  @IBOutlet weak var name: UITextField!
  
  @IBOutlet weak var image: UIImageView!
    
  @IBAction func buttonTaped(sender: AnyObject) {
    println("Oi Mundo")
    myLabel.text = name.text.uppercaseString
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

