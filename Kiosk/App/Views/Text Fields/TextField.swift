//
//  TextField.swift
//  Kiosk
//
//  Created by Laura Brown on 10/2/14.
//  Copyright (c) 2014 Artsy. All rights reserved.
//

import UIKit

public class TextField: UITextField {

    override public init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    override public init(){
        super.init()
        setup()
    }

    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    override public func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }

    func setup() {
        layer.cornerRadius = 0
        layer.masksToBounds = true
        layer.borderWidth = 1
        layer.borderColor = UIColor.artsyMediumGrey().CGColor
    }

    override public func textRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset( bounds , 10 , 10 )
    }

   override public func editingRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset( bounds , 10 , 10 )
    }
}

public class SerifTextField: TextField {
    override func setup() {
        font = UIFont.serifFontWithSize(16)
    }
}