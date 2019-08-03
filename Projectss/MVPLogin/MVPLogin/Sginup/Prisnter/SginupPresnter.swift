//
//  SginupPresnter.swift
//  MVPLogin
//
//  Created by Maged on 8/3/19.
//  Copyright © 2019 Be Solutions - Maged Mohammed. All rights reserved.
//

import Foundation
protocol SginupPresnter: class {
    func sginup(name:String,email:String,password:String)
    //    func error(status:Int,message:String)
}

class SginupPresnterImplamntation: SginupPresnter {
    var sginupView:SginupView!
    
    init(view:SginupView) {
        sginupView = view
    }
    func sginup(name: String, email: String, password: String) {
        guard password.count >= 8 else{
            self.sginupView.showAlert(message: "Error your Password is less thin 8", status: 0)
            print("Error your Password is less thin 8")
            return
        }
        self.sginupView.showAlert(message: "Welcome To SwiftyCamp", status: 1)
    }
    
    
    
    
}
