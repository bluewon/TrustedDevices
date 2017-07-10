//
//  Cell.swift
//  TrustedDevices
//
//  Created by Quan Tran on 7/7/17.
//  Copyright © 2017 Quan Tran. All rights reserved.
//

import UIKit
class CellDevice: UITableViewCell {
    var viewLineTraling1: UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0, green: 0.5490196078, blue: 0.8705882353, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false

        return v

    }()
    var imgDevice1: UIImageView = {
        let i = UIImageView(image: UIImage(named: "Device"))
        i.contentMode = .scaleAspectFit
        i.translatesAutoresizingMaskIntoConstraints = false
        return i
    }()
    var lblNameDevice1 : UILabel = {
        let l = UILabel()
        l.font = UIFont(name: "OpenSans-Regular.ttf", size: 13.6)
        // ??? : Get data from Array
        l.textColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        l.textAlignment = .left
        l.adjustsFontSizeToFitWidth = true
        l.adjustsFontForContentSizeCategory = true
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    var lblTimeSetting1: UILabel = {
        let l = UILabel()
        l.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        l.layer.opacity = 0.3
        l.font = UIFont(name: "OpenSans-Regular", size: 10)
        l.textAlignment = .center

        l.adjustsFontForContentSizeCategory = true
        l.adjustsFontSizeToFitWidth = true
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)


        let heightSC = UIScreen.main.bounds.height
        let widthSC = UIScreen.main.bounds.width
        self.addSubview(self.viewLineTraling1)
        self.viewLineTraling1.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -0.00934375*widthSC).isActive = true
        self.viewLineTraling1.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        self.viewLineTraling1.widthAnchor.constraint(equalToConstant: 0.5).isActive = true
        self.viewLineTraling1.heightAnchor.constraint(equalToConstant: 0.079225*heightSC).isActive = true

        self.addSubview(self.lblNameDevice1)

        self.lblNameDevice1.topAnchor.constraint(equalTo: self.topAnchor, constant: 0.02253*heightSC).isActive = true
        self.lblNameDevice1.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0.13334375*widthSC).isActive = true
        self.lblNameDevice1.heightAnchor.constraint(equalToConstant: 0.0282*heightSC).isActive = true
        self.lblNameDevice1.widthAnchor.constraint(equalToConstant: 0.5*widthSC).isActive = true



        self.addSubview(self.imgDevice1)

        self.imgDevice1.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        self.imgDevice1.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0.04*widthSC).isActive = true
        self.imgDevice1.widthAnchor.constraint(equalToConstant: 0.03065625*widthSC).isActive = true
        self.imgDevice1.heightAnchor.constraint(equalToConstant: 0.03005*heightSC).isActive = true


        self.addSubview(self.lblTimeSetting1)

        self.lblTimeSetting1.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -0.026*heightSC).isActive = true
        self.lblTimeSetting1.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0.13334375*widthSC).isActive = true
        self.lblTimeSetting1.heightAnchor.constraint(equalToConstant: 0.025*heightSC).isActive = true
        self.lblTimeSetting1.widthAnchor.constraint(equalToConstant: 0.65*widthSC).isActive = true



    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        if selected{
            lblTimeSetting1.textColor = #colorLiteral(red: 0.003921568627, green: 0.6392156863, blue: 0.4549019608, alpha: 1)
            lblNameDevice1.textColor =  #colorLiteral(red: 0.003921568627, green: 0.6392156863, blue: 0.4549019608, alpha: 1)
            imgDevice1.image = #imageLiteral(resourceName: "IsSelected_Device")
        }else{
            lblTimeSetting1.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            lblNameDevice1.textColor =  #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            imgDevice1.image = #imageLiteral(resourceName: "Device")
        }
        
    }
}
