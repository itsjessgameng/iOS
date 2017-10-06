//
//  CalculatorBrain.swift
//  jhuaAssignment3
//
//  Created by Jessica Hua on 1/28/17.
//  Copyright © 2017 DePaul University. All rights reserved.
//

import Foundation

class CalculatorBrain {
    
    // accumulates the result
    private var accumulator = 0.0
    
    // sets the operation
    func setOperand(_ operand: Double) {
        accumulator = operand
    }
    
    // dictionary of possible operations
    private var operations: Dictionary<String, Operation> = [
        "+" : Operation.binaryOperation({$0 + $1}),
        "-" : Operation.binaryOperation({$0 - $1}),
        "×" : Operation.binaryOperation({$0 * $1}),
        "÷" : Operation.binaryOperation({$0 / $1}),
        "=" : Operation.equals
    ]
    
    private enum Operation {
        case binaryOperation ((Double, Double) -> Double)
        case equals
    }
    
    // calculates the math expression
    func performOperation(_ symbol: String) {
        if let operation = operations[symbol] {
            switch operation {
            case.binaryOperation(let function): executePending()
            pending = pendingInfo(binaryFunction: function, firstOperand: accumulator)
            case.equals: executePending()
            }
        }
    }
    
    // allows you to keep typing a longer expression without having to repeatedly hit enter 
    private func executePending() {
        if pending != nil {
            accumulator = pending!.binaryFunction(pending!.firstOperand, accumulator)
            pending = nil
        }
    }
    
    private var pending: pendingInfo?
    
    private struct pendingInfo {
        var binaryFunction: (Double, Double) -> Double
        var firstOperand: Double
    }
    
    // result of operation
    var result: Double{
        // makes it a read-only property
        get {
            return accumulator
        }
    }
    
}
