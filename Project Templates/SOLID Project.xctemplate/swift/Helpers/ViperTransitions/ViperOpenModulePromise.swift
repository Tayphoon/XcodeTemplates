//
//  ViperOpenModulePromise.swift
//  Stolichki
//
//  Created by Tayphoon on 04/01/2018.
//  Copyright © 2018 Inostudio. All rights reserved.
//

import Foundation

typealias PostLinkActionBlock = () -> Void
typealias ViperModuleLinkBlock = (_ moduleInput: ViperModuleInput?) -> ViperModuleOutput?

class ViperOpenModulePromise {
    
    private var linkBlockWasSet: Bool = false
    private var moduleInputWasSet: Bool = false
    private var linkBlock: ViperModuleLinkBlock?

    var moduleInput : ViperModuleInput? {
        didSet {
            moduleInputWasSet = true
            tryPerformLink()
        }
    }
    
    var postLinkActionBlock: PostLinkActionBlock? {
        didSet {
            linkBlockWasSet = true
            tryPerformLink()
        }
    }

    func thenChainUsingBlock(linkBlock: @escaping ViperModuleLinkBlock) -> Void {
        self.linkBlock = linkBlock
        linkBlockWasSet = true
        tryPerformLink()
    }
    
    private func tryPerformLink() -> Void {
        if moduleInputWasSet && linkBlockWasSet {
            performLink()
        }
    }
    
    private func performLink() -> Void {
        if let linkBlockHandler = linkBlock {
            if let moduleOutput = linkBlockHandler(self.moduleInput) {
                self.moduleInput?.setModuleOutput(moduleOutput)
            }
            postLinkActionBlock?();
        }
    }
}
