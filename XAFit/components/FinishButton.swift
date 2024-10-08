//
//  FinishButton.swift
//  XAFit
//
//  Created by Alejandro  Salinas Ramirez on 10/10/24.
//

import SwiftUI

struct FinishButton: View {
    @State var workoutsEnds : Bool = false
    @State var workouts : Int = 0
    func countingWorkout(){
        if workoutsEnds == true{
            workouts += 1
        }
    }
    
    var body: some View {
        Button( action: {
            workoutsEnds = true
            
            
        })
        {
            Text("Finish Workout")
            
        }
        .buttonStyle(.borderedProminent)
        .font(.largeTitle.bold())
        Text(String("Workouts : \(workouts)"))
            .font(.title.bold())
            .alert("Are you sure to end the session?", isPresented: $workoutsEnds){
                Button("Yes", action:countingWorkout)
                Button("Cancel", role: .cancel){}
            }
        
        
    }
}

#Preview {
    FinishButton()
}
