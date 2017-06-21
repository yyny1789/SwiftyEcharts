//
//  FunctionOrOthersSpec.swift
//  SwiftyEcharts
//
//  Created by Pluto Y on 20/06/2017.
//  Copyright © 2017 com.pluto-y. All rights reserved.
//

import Quick
import Nimble
@testable import SwiftyEcharts

class FunctionOrOthersSpec: QuickSpec {
    
    override func spec() {
        let errorJsonString = "null"
        let functionString = "function (idx) {return idx * 0.65;}"
        let floatValue: Float = 3.1415
        let integerValue: Int = 10
        describe("For FunctionOrOthers") {
            it(" needs to check the func which named 'obtainFunctionJsonString' ") {
                JsCache.removeAll()
                let functionCase = FunctionOrFloat.function(functionString)
                expect(functionCase.obtainFunctionJsonString(javascript: functionString)).to(equal("\(FunctionPrefix)0".jsonString))
                expect(JsCache.allJsStrings().count).to(equal(1))
                expect(JsCache.allJsStrings().first).to(equal("var \(FunctionPrefix)0 = \(functionString);"))
                
                expect(functionCase.obtainFunctionJsonString(javascript: "null")).to(equal(errorJsonString))
            }
        }
        
        describe("For FunctionOrFloat") {
            it(" needs to check the jsonString ") {
                let floatCase = FunctionOrFloat.value(floatValue)
                expect(floatCase.jsonString).to(equal(floatValue.jsonString))
                
                let functionCase = FunctionOrFloat.function(functionString)
                JsCache.removeAll()
                expect(functionCase.jsonString).to(equal("\(FunctionPrefix)0".jsonString))
                expect(JsCache.allJsStrings().count).to(equal(1))
                expect(JsCache.allJsStrings().first).to(equal("var \(FunctionPrefix)0 = \(functionString);"))
            }
            
            it(" needs to check the literal convertible ") {
                let floatLiteralCase: FunctionOrFloat = 3.1415
                let integerLieteralCase: FunctionOrFloat = 10
                
                expect(floatLiteralCase.jsonString).to(equal(floatValue.jsonString))
                expect(integerLieteralCase.jsonString).to(equal(Float(integerValue).jsonString))
            }
        }
        
        describe("For FunctionOrFloatOrPair") {
            let arrayLiteralValue: Point = [floatValue, 100%]
            
            it(" needs to check the jsonString ") {
                let floatCase = FunctionOrFloatOrPair.value(floatValue)
                expect(floatCase.jsonString).to(equal(floatValue.jsonString))
                
                let functionCase = FunctionOrFloatOrPair.function(functionString)
                JsCache.removeAll()
                expect(functionCase.jsonString).to(equal("\(FunctionPrefix)0".jsonString))
                expect(JsCache.allJsStrings().count).to(equal(1))
                expect(JsCache.allJsStrings().first).to(equal("var \(FunctionPrefix)0 = \(functionString);"))
                
                let pointCase = FunctionOrFloatOrPair.point(arrayLiteralValue)
                expect(pointCase.jsonString).to(equal(arrayLiteralValue.jsonString))
            }
            
            it(" need to check the literal convertible ") {
                let floatLiteralCase: FunctionOrFloatOrPair = 3.1415
                let integerLieteralCase: FunctionOrFloatOrPair = 10
                let errorArrayLiteralCase: FunctionOrFloatOrPair = [1]
                let arrayLiteralCase: FunctionOrFloatOrPair = [floatValue, 100%]
                
                expect(floatLiteralCase.jsonString).to(equal(floatValue.jsonString))
                expect(integerLieteralCase.jsonString).to(equal(Float(integerValue).jsonString))
                expect(arrayLiteralCase.jsonString).to(equal(arrayLiteralValue.jsonString))
                expect(errorArrayLiteralCase.jsonString).to(equal(errorJsonString))
            }
        }
    }

}
