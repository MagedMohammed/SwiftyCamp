//
//  ViewController.swift
//  7
//
//  Created by Maged on 7/27/19.
//  Copyright © 2019 Be Solutions - Maged Mohammed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dataLa: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func passData(input:String){
        self.dataLa.text = input
    }
    @IBAction func go(_ sender: UIButton) {
    }
    
   @IBAction func goBack(_ segue:UIStoryboardSegue){
        let controller = segue.source as? ViewController2
        let text = controller?.textData.text ?? ""
        self.dataLa.text = text
    }

    
}

