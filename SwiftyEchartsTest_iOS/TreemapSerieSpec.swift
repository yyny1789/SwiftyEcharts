//
//  TreemapSerieSpec.swift
//  SwiftyEcharts
//
//  Created by Pluto Y on 20/08/2017.
//  Copyright © 2017 com.pluto-y. All rights reserved.
//

import Quick
import Nimble
@testable import SwiftyEcharts

class TreemapSerieSpec: QuickSpec {
    override func spec() {
        describe("For TreemapSerie.NodeClick") {
            let disableString = "false"
            let zoomToNodeString = "zoomToNode"
            let linkString = "link"
            
            let disableNodeClick = TreemapSerie.NodeClick.disable
            let zoomToNodeNodeClick = TreemapSerie.NodeClick.zoomToNode
            let linkNodeClick = TreemapSerie.NodeClick.link
            
            it("needs to check the enum case jsonString") {
                expect(disableNodeClick.jsonString).to(equal(disableString.jsonString))
                expect(zoomToNodeNodeClick.jsonString).to(equal(zoomToNodeString.jsonString))
                expect(linkNodeClick.jsonString).to(equal(linkString.jsonString))
            }
        }
        
        describe("For TreemapSerie.ColorMappingBy") {
            let valueString = "value"
            let indexString = "index"
            let idString = "id"
            
            let valueColorMappingBy = TreemapSerie.ColorMappingBy.value
            let indexColorMappingBy = TreemapSerie.ColorMappingBy.index
            let idColorMappingBy = TreemapSerie.ColorMappingBy.id
            
            it("needs to check the enum case jsonString") {
                expect(valueColorMappingBy.jsonString).to(equal(valueString.jsonString))
                expect(indexColorMappingBy.jsonString).to(equal(indexString.jsonString))
                expect(idColorMappingBy.jsonString).to(equal(idString.jsonString))
            }
        }
    }
}
