//
//  UserDataModel.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 28/09/24.
//

import Foundation

class UserDataModel : ObservableObject{
    
    @Published var weight: Double
    
    @Published var height: Double
    
    @Published var age: Double = 15
    
    
    
    @Published var gender: ProgramsandPhyscal.gender = .male
    
    init(weight: Double = 0, height: Double = 0, age: Double = 15 , gender: ProgramsandPhyscal.gender = .male ) {
        self.weight = weight
        self.height = height
        self.age = age
        self.gender = gender
        
    }
    
    
}
