//
//  GaugeSerieSpec.swift
//  SwiftyEcharts
//
//  Created by Pluto Y on 13/07/2017.
//  Copyright © 2017 com.pluto-y. All rights reserved.
//

import Quick
import Nimble
@testable import SwiftyEcharts

class GaugeSerieSpec: QuickSpec {
    override func spec() {
        let showAxisTickValue = false
        let splitNumberAxisTickValue: UInt8 = 20
        let lengthAxisTickValue: LengthValue = 20%
        let lineStyleAxisTickValue = LineStyle(
            .width(8)
        )
        
        let axisTick = GaugeSerie.AxisTick()
        axisTick.show = showAxisTickValue
        axisTick.splitNumber = splitNumberAxisTickValue
        axisTick.length = lengthAxisTickValue
        axisTick.lineStyle = lineStyleAxisTickValue
        
        describe("For GaugeSerie.AxisTick") {
            it("needs to check the jsonString") {
                let resultDic: [String: Jsonable] = [
                    "show": showAxisTickValue,
                    "splitNumber": splitNumberAxisTickValue,
                    "length": lengthAxisTickValue,
                    "lineStyle": lineStyleAxisTickValue
                ]

                expect(axisTick.jsonString).to(equal(resultDic.jsonString))
            }

            it("needs to check the Enumable") {
                let axisTickByEnums = GaugeSerie.AxisTick(
                    .show(showAxisTickValue),
                    .splitNumber(splitNumberAxisTickValue),
                    .length(lengthAxisTickValue),
                    .lineStyle(lineStyleAxisTickValue)
                )
                
                expect(axisTickByEnums.jsonString).to(equal(axisTick.jsonString))
            }
        }
        
        let showAxisLabelValue = true
        let distanceAxisLabelValue: Float = 0.5
        let formatterAxisLabelValue = Formatter.string("{value} ml")
        let textStyleAxisLabelValue = TextStyle(
            .color("#fff"),
            .fontSize(16)
        )
        let colorAxisLabelValue = Color.hexColor("#5a5a5a")
        
        let axisLabel = GaugeSerie.AxisLabel()
        axisLabel.show = showAxisLabelValue
        axisLabel.distance = distanceAxisLabelValue
        axisLabel.formatter = formatterAxisLabelValue
        axisLabel.textStyle = textStyleAxisLabelValue
        axisLabel.color = colorAxisLabelValue
        
        describe("For GaugeSerie.AxisLabel") {
            it("needs to check the jsonString") {
                let resutlDic: [String: Jsonable] = [
                    "show": showAxisLabelValue,
                    "distance": distanceAxisLabelValue,
                    "formatter": formatterAxisLabelValue,
                    "textStyle": textStyleAxisLabelValue,
                    "color": colorAxisLabelValue
                ]
                
                expect(axisLabel.jsonString).to(equal(resutlDic.jsonString))
            }
            
            it("needs to check the Enumable") {
                let axisLabelByEnums = GaugeSerie.AxisLabel(
                    .show(showAxisLabelValue),
                    .distance(distanceAxisLabelValue),
                    .formatter(formatterAxisLabelValue),
                    .textStyle(textStyleAxisLabelValue),
                    .color(colorAxisLabelValue)
                )
                
                expect(axisLabelByEnums.jsonString).to(equal(axisLabel.jsonString))
            }
        }
    }
}
