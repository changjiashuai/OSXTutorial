//
//  CJSOutlineViewController.swift
//  OSXTutorial
//
//  Created by CJS on 15/10/14.
//  Copyright © 2015年 CJS. All rights reserved.
//

import Cocoa

class CJSOutlineViewController: NSViewController {

    @IBOutlet weak var outlineView: NSOutlineView!
    var folderImage: NSImage?
    var urlImage: NSImage?
    var dragNodesArray: Array<BaseNode> = []
    var contents: Array<BaseNode> = []
    var iconViewController: CJSIconViewController?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        iconViewController = self.storyboard!.instantiateControllerWithIdentifier("IconViewController") as? CJSIconViewController
        iconViewController!.view.translatesAutoresizingMaskIntoConstraints = false
        
        outlineView.enclosingScrollView?.verticalScroller?.floatValue = 0.0
        outlineView.enclosingScrollView?.contentView.scrollToPoint(NSPoint(x: 0,y: 0))
        outlineView.selectionHighlightStyle = NSTableViewSelectionHighlightStyle.SourceList
    }
    
}
