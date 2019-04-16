//
//  NavigationView.swift
//  CoreaFlamencoIOS
//
//  Created by Yun Song on 11/04/2019.
//  Copyright © 2019 Yun Song. All rights reserved.
//

import UIKit

class NavigationView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    private func commonInit(){
        let view = Bundle.main.loadNibNamed("NavigationView", owner: self, options: nil)?.first as! UIView
        
        view.frame = self.bounds
    
        self.addSubview(view)
        
    }
}
