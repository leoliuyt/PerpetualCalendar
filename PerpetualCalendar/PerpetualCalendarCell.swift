//
//  PerpetualCalendarCell.swift
//  PerpetualCalendar
//
//  Created by leoliu on 2016/12/17.
//  Copyright © 2016年 LL. All rights reserved.
//

import UIKit
import YYText

class PerpetualCalendarCell: UICollectionViewCell {
    
    @IBOutlet weak var rightView: UIView!
    @IBOutlet weak var leftView: UIView!
    
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var calendarTop: UIView!
    @IBOutlet weak var bottomView: UIView!
    
    @IBOutlet weak var dayLeft: UIImageView!
    @IBOutlet weak var dayRight: UIImageView!
    
    @IBOutlet weak var weakday: UILabel!//星期天
    
    @IBOutlet weak var calendar: UILabel!//2016年12
    
    @IBOutlet weak var chineseCalendar: UILabel! //阴历
    
    @IBOutlet weak var saying: UILabel! //名言
    
    @IBOutlet weak var yiLabel: YYLabel!
    
    @IBOutlet weak var jiLabel: YYLabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        makeUI()
    }
    
    func makeUI() {
        self.topView.layer.borderColor = UIColor(colorLiteralRed: 149.0/255.0, green: 159.0/255.0, blue: 169.0/255.0, alpha: 1).cgColor
        self.topView.layer.borderWidth = 2.0
        
        self.calendarTop.layer.borderColor = UIColor(colorLiteralRed: 194.0/255.0, green: 206.0/255.0, blue: 215.0/255.0, alpha: 1).cgColor
        self.calendarTop.layer.borderWidth = 1.5
        
        self.bottomView.layer.borderColor = UIColor(colorLiteralRed: 194.0/255.0, green: 206.0/255.0, blue: 215.0/255.0, alpha: 1).cgColor
        self.bottomView.layer.borderWidth = 1.5
    }
}
