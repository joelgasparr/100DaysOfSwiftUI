//
//  ContentView.swift
//  WeSplit
//
//  Created by Joel Gaspar on 26/11/20.
//

import SwiftUI

struct ContentView: View {
   @State private var checkAmount = ""
   @State private var tipPercentage = 2
   @State private var numberOfPeople = ""
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var totalPerPerson: Double {
        let numberOfPeoples = Int(numberOfPeople) ?? 1
        let tipSelection = Double(tipPercentages[tipPercentage])
        let orderAmount = Double(checkAmount) ?? 0
       
        let tipValue = orderAmount / 100 * tipSelection
        let grandTotal = orderAmount + tipValue
        let amountPerPerson = grandTotal / Double(numberOfPeoples)

        
        return amountPerPerson
    }
    
    var totalAmount: Double {
        let totalAmount = Double(checkAmount) ?? 0
        let totalPercentages = Double(tipPercentages[tipPercentage])
        let tipValue = totalAmount / 100 * totalPercentages
      

        
        let finalTotal = totalAmount + tipValue
        
        
        return finalTotal
    }
    
    var  body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", text: $checkAmount)
                        .keyboardType(.decimalPad)
                    TextField("Number of people", text: $numberOfPeople)
                        .keyboardType(.numberPad)
                    
                }
                
                Section (header: Text("How much tip do you want to leave?")) {
                    Picker("Tip percentage", selection:
                            $tipPercentage) {
                        ForEach(0 ..< tipPercentages.count) {
                            Text("\(self.tipPercentages[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section (header: Text("Amount per person")) {
                    Text ("$\(totalPerPerson, specifier: "%.2f")")
                }
                
                Section (header: Text("Total")) {
                    Text ("$\(totalAmount, specifier: "%.2f")")
                }
            }
            .navigationBarTitle("We Split")
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
