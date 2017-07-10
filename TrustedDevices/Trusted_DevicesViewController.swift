//
//  Trusted_DevicesViewController.swift
//  TrustedDevices
//
//  Created Quan Tran on 7/6/17.
//  Copyright © 2017 Quan Tran. All rights reserved.
//

import UIKit


class Trusted_DevicesViewController: UIViewController, Trusted_DevicesViewProtocol, UITableViewDataSource, UITableViewDelegate {

    // MARK: - DECLARE
    // !!! : Variable of Pattern Design

	var presenter: Trusted_DevicesPresenterProtocol?
    // !!! : Other Variable
    let heightSC = UIScreen.main.bounds.height
    let widthSC = UIScreen.main.bounds.width
    var flag = false
    // !!! : Object in View
    let arrDevice:[Device] = [Device.init(nameDevice: "Samsung Galaxy S6", timeSetting: "(Last logged in 11 May 2016 at 02:38 am)"),Device.init(nameDevice: "Long’s Iphone", timeSetting: "(Last logged in 16 May 2016 at 09:38 am)"),Device.init(nameDevice: "Nhan’s HTC", timeSetting: "(Last logged in 16 May 2016 at 08:30 am)"),Device.init(nameDevice: "Manh’s Samsung", timeSetting: "(Last logged in 25 May 2016 at 10:08 am)")]
    // !!!:     Navigation
    let imgBG = UIImageView(image: UIImage(named: "BG"))
    let imgBack = UIImageView(image: UIImage(named: "Shape"))
    let lblTitleNav = UILabel()

    // !!!:     View Main Device
    let viewMainDevice = UIView()
    let lblMainDevice = UILabel()

        // !!! :    ViewDevice
    let viewDevice = UIView()
    let viewLineTraling = UIView()
    let imgDevice = UIImageView(image: UIImage(named: "IsSelected_Device"))
    let lblNameDevice = UILabel()
    let lblTimeSetting = UILabel()

    let viewBehindMainDevice = UIView()
    let lblYes = UILabel()
    let lblNo = UILabel()

    


    // !!! :    View TRUSTED DEVICES
    let viewTrustedDevices = UIView()
    let lblTitleViewTrustedDevices = UILabel()

    // !!! :    TableView Device
    let viewBotTbv = UIView()
    let tbvDevices = UITableView()


    // MARK: - LIFE CYCLE


    override func viewDidLoad() {
        super.viewDidLoad()
        // !!!:     Navigation
        setupImgBG()
        setupImgBack()
        setuplblTitleNav()
        // !!!:     View Main Device

        setupViewMainDevice()
        //setupViewBehind()
        setupLblMainDevice()


        // !!! :    ViewDevice
        setupViewDevice()
        setupViewLineTraling()
        setupImgDevice()
        setuplblNameDevice()
        setuplblTimeSetting()

        // !!! :    View TRUSTED DEVICES
        setupViewTrustedDevices()
        setupLblTitleViewTrustedDevices()

        // !!! :    TableView Device

        setupTbvDevices()
        setupviewBotTbv()
        self.tbvDevices.reloadData()
        viewBotTbv.layoutIfNeeded()

    }
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true

        
    }



    // MARK: - FUNC SETUP


    // !!!:     Navigation

    func setupImgBG(){
        view.addSubview(imgBG)
        imgBG.translatesAutoresizingMaskIntoConstraints = false
        imgBG.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imgBG.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imgBG.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        imgBG.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
    }
    func setupImgBack(){
        imgBG.addSubview(imgBack)
        imgBG.contentMode = .scaleAspectFit
        imgBack.translatesAutoresizingMaskIntoConstraints = false
        imgBack.topAnchor.constraint(equalTo: imgBG.topAnchor, constant: 0.04507/2*heightSC).isActive = true
        imgBack.leftAnchor.constraint(equalTo: imgBG.leftAnchor, constant: 0.0853125/2*widthSC).isActive = true
        imgBack.widthAnchor.constraint(equalToConstant: 0.032/2*widthSC).isActive = true
        imgBack.heightAnchor.constraint(equalToConstant: 0.04327/2*heightSC).isActive = true
    }
    func setuplblTitleNav(){
        imgBG.addSubview(lblTitleNav)
        lblTitleNav.font = UIFont(name: "OpenSans-Regular", size: 12.8)
        lblTitleNav.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        lblTitleNav.textAlignment = .center
        lblTitleNav.adjustsFontSizeToFitWidth = true
        lblTitleNav.text = "TRUSTED DEVICE"
        lblTitleNav.translatesAutoresizingMaskIntoConstraints = false

        lblTitleNav.topAnchor.constraint(equalTo: imgBG.topAnchor, constant: 0.036056/2*heightSC).isActive = true
        lblTitleNav.centerXAnchor.constraint(equalTo: imgBG.centerXAnchor).isActive = true
        lblTitleNav.heightAnchor.constraint(equalToConstant: 0.0528/2*heightSC).isActive = true
        lblTitleNav.widthAnchor.constraint(equalToConstant: 0.696875/2*widthSC).isActive = true
    }

    // !!!:     View Main Device

    func setupViewMainDevice(){
        imgBG.addSubview(viewMainDevice)
        viewMainDevice.layer.opacity = 0.9
        viewMainDevice.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        viewMainDevice.translatesAutoresizingMaskIntoConstraints = false
        viewMainDevice.centerXAnchor.constraint(equalTo: imgBG.centerXAnchor).isActive = true
        viewMainDevice.topAnchor.constraint(equalTo: imgBG.topAnchor, constant: 0.0661*heightSC).isActive = true
        viewMainDevice.heightAnchor.constraint(equalToConstant: 0.0901407*heightSC).isActive = true         //0.0901408 -> 0.0901407
        viewMainDevice.widthAnchor.constraint(equalTo: imgBG.widthAnchor, multiplier: 1).isActive = true


    }
    func setupLblMainDevice(){
        viewMainDevice.addSubview(lblMainDevice)
        lblMainDevice.textColor = #colorLiteral(red: 0, green: 0.5490196078, blue: 0.8705882353, alpha: 1)
        lblMainDevice.font = UIFont(name: "OpenSans-Regular", size: 11.95)
        lblMainDevice.textAlignment = .left
        lblMainDevice.text = "MAIN DEVICE"
        lblMainDevice.adjustsFontForContentSizeCategory = true
        lblMainDevice.adjustsFontSizeToFitWidth = true
        lblMainDevice.translatesAutoresizingMaskIntoConstraints = false
        lblMainDevice.leftAnchor.constraint(equalTo: viewMainDevice.leftAnchor, constant: 0.04*widthSC).isActive = true
        lblMainDevice.topAnchor.constraint(equalTo: viewMainDevice.topAnchor, constant: 0.046567*heightSC).isActive = true
        lblMainDevice.widthAnchor.constraint(equalToConstant: 0.24375*widthSC).isActive = true
        lblMainDevice.heightAnchor.constraint(equalToConstant: 0.026408*heightSC).isActive = true
    }

    // !!! :    ViewDevice

    func setupViewDevice(){
        imgBG.addSubview(viewDevice)
        viewDevice.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        viewDevice.translatesAutoresizingMaskIntoConstraints = false
        viewDevice.topAnchor.constraint(equalTo: viewMainDevice.bottomAnchor).isActive = true
        viewDevice.leftAnchor.constraint(equalTo: viewMainDevice.leftAnchor).isActive = true
        viewDevice.heightAnchor.constraint(equalToConstant: 0.10817*heightSC).isActive = true
        viewDevice.widthAnchor.constraint(equalToConstant: 0.98665625*widthSC).isActive = true

//        let pan = UIScreenEdgePanGestureRecognizer(target: self, action: #selector(translate))
//        pan.edges = .right
//        viewDevice.addGestureRecognizer(pan)
    }

    //func error
    func setupViewBehind(){
        imgBG.addSubview(viewBehindMainDevice)
        viewBehindMainDevice.translatesAutoresizingMaskIntoConstraints = false
        viewBehindMainDevice.backgroundColor = UIColor.clear
        viewBehindMainDevice.topAnchor.constraint(equalTo: imgBG.topAnchor, constant: 0.0661*heightSC).isActive = true
        viewBehindMainDevice.rightAnchor.constraint(equalTo: imgBG.rightAnchor).isActive = true
        viewBehindMainDevice.heightAnchor.constraint(equalToConstant: 0.0901407*heightSC).isActive = true
        viewBehindMainDevice.leftAnchor.constraint(equalTo: viewDevice.rightAnchor).isActive = true

        
        let viewCenter = UIView()
        viewBehindMainDevice.addSubview(viewCenter)
        viewCenter.translatesAutoresizingMaskIntoConstraints = false
        viewCenter.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        viewCenter.centerXAnchor.constraint(equalTo: viewBehindMainDevice.centerXAnchor).isActive = true
        viewCenter.centerYAnchor.constraint(equalTo: viewBehindMainDevice.centerYAnchor).isActive = true
        viewCenter.heightAnchor.constraint(equalToConstant: 0.079137*heightSC).isActive = true
        viewCenter.widthAnchor.constraint(equalToConstant: 0.5).isActive = true
    }
    func setupViewLineTraling(){
        viewDevice.addSubview(viewLineTraling)
        viewLineTraling.backgroundColor = #colorLiteral(red: 0, green: 0.5490196078, blue: 0.8705882353, alpha: 1)
        viewLineTraling.translatesAutoresizingMaskIntoConstraints = false
        viewLineTraling.rightAnchor.constraint(equalTo: viewDevice.rightAnchor, constant: -0.00934375*widthSC).isActive = true
        viewLineTraling.centerYAnchor.constraint(equalTo: viewDevice.centerYAnchor).isActive = true
        viewLineTraling.widthAnchor.constraint(equalToConstant: 0.5).isActive = true
        viewLineTraling.heightAnchor.constraint(equalToConstant: 0.079225*heightSC).isActive = true
    }
    func setupImgDevice(){
        viewDevice.addSubview(imgDevice)
        imgDevice.contentMode = .scaleAspectFit
        imgDevice.translatesAutoresizingMaskIntoConstraints = false
        imgDevice.centerYAnchor.constraint(equalTo: viewDevice.centerYAnchor).isActive = true
        imgDevice.leftAnchor.constraint(equalTo: viewDevice.leftAnchor, constant: 0.04*widthSC).isActive = true
        imgDevice.widthAnchor.constraint(equalToConstant: 0.03065625*widthSC).isActive = true
        imgDevice.heightAnchor.constraint(equalToConstant: 0.03005*heightSC).isActive = true
    }
    func setuplblNameDevice(){
        viewDevice.addSubview(lblNameDevice)
        lblNameDevice.font = UIFont(name: "OpenSans-Regular.ttf", size: 13.6)

        lblNameDevice.text = "Samsung Galaxy S6"          // ??? : Get data from Array
        lblNameDevice.textColor = #colorLiteral(red: 0.003921568627, green: 0.6392156863, blue: 0.4549019608, alpha: 1)

        lblNameDevice.textAlignment = .left
        //lblNameDevice.adjustsFontForContentSizeCategory = true
        lblNameDevice.translatesAutoresizingMaskIntoConstraints = false
        lblNameDevice.topAnchor.constraint(equalTo: viewDevice.topAnchor, constant: 0.02253*heightSC).isActive = true
        lblNameDevice.leftAnchor.constraint(equalTo: viewDevice.leftAnchor, constant: 0.13334375*widthSC).isActive = true
        lblNameDevice.heightAnchor.constraint(equalToConstant: 0.0282*heightSC).isActive = true
        lblNameDevice.widthAnchor.constraint(equalToConstant: 0.5*widthSC).isActive = true
    }
    func setuplblTimeSetting(){
        viewDevice.addSubview(lblTimeSetting)
        lblTimeSetting.textColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        lblTimeSetting.layer.opacity = 0.3
        lblTimeSetting.font = UIFont(name: "OpenSans-Regular", size: 10.24)
        lblTimeSetting.textAlignment = .left
        lblTimeSetting.text = "(Last logged in 16 May 2016 at 09:38 am)"          // ??? : Get data from Array

        lblTimeSetting.adjustsFontForContentSizeCategory = true
        lblTimeSetting.adjustsFontSizeToFitWidth = true
        lblTimeSetting.translatesAutoresizingMaskIntoConstraints = false
        lblTimeSetting.bottomAnchor.constraint(equalTo: viewDevice.bottomAnchor, constant: -0.026*heightSC).isActive = true
        lblTimeSetting.leftAnchor.constraint(equalTo: viewDevice.leftAnchor, constant: 0.13334375*widthSC).isActive = true
        lblTimeSetting.heightAnchor.constraint(equalToConstant: 0.025*heightSC).isActive = true
        lblTimeSetting.widthAnchor.constraint(equalToConstant: 0.65*widthSC).isActive = true
    }

    func setupLblYes(){
        viewBehindMainDevice.addSubview(lblYes)
        lblYes.textColor = #colorLiteral(red: 0.9607843137, green: 0.6509803922, blue: 0.137254902, alpha: 1)
        lblYes.translatesAutoresizingMaskIntoConstraints = false
        lblYes.topAnchor.constraint(equalTo: viewBehindMainDevice.topAnchor, constant: 0.036*heightSC).isActive = true
        lblYes.leftAnchor.constraint(equalTo: viewDevice.leftAnchor, constant: 0.07559*widthSC).isActive = true
        lblYes.widthAnchor.constraint(equalToConstant: 0.078125*widthSC).isActive = true
        lblYes.heightAnchor.constraint(equalToConstant: 0.03169*heightSC).isActive = true
    }
    func setupLblNo(){
        viewBehindMainDevice.addSubview(lblNo)
        lblNo.translatesAutoresizingMaskIntoConstraints = false
        lblNo.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        lblNo.topAnchor.constraint(equalTo: lblYes.topAnchor).isActive = true
        lblNo.rightAnchor.constraint(equalTo: viewBehindMainDevice.rightAnchor, constant: -0.07984375*widthSC ).isActive = true
        lblNo.heightAnchor.constraint(equalTo: lblYes.heightAnchor).isActive = true
        lblNo.widthAnchor.constraint(equalToConstant: 0.065625*widthSC).isActive = true
    }
    


    // !!! :    View TRUSTED DEVICES

    func setupViewTrustedDevices(){
        imgBG.addSubview(viewTrustedDevices)
        viewTrustedDevices.layer.opacity = 0.9
        viewTrustedDevices.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        viewTrustedDevices.translatesAutoresizingMaskIntoConstraints = false
        viewTrustedDevices.topAnchor.constraint(equalTo: viewDevice.bottomAnchor, constant: 0.5).isActive = true
        viewTrustedDevices.leftAnchor.constraint(equalTo: imgBG.leftAnchor).isActive = true
        viewTrustedDevices.heightAnchor.constraint(equalTo: viewMainDevice.heightAnchor).isActive = true
        viewTrustedDevices.widthAnchor.constraint(equalTo: viewMainDevice.widthAnchor).isActive = true
    }
    func setupLblTitleViewTrustedDevices(){
        viewTrustedDevices.addSubview(lblTitleViewTrustedDevices)
        lblTitleViewTrustedDevices.font = UIFont(name: "OpenSans-Regular", size: 11.95)
        lblTitleViewTrustedDevices.text = "TRUSTED DEVICES"
        lblTitleViewTrustedDevices.textAlignment = .left
        lblTitleViewTrustedDevices.textColor = #colorLiteral(red: 0, green: 0.5490196078, blue: 0.8705882353, alpha: 1)
        lblTitleViewTrustedDevices.adjustsFontSizeToFitWidth = true
        lblTitleViewTrustedDevices.adjustsFontForContentSizeCategory = true
        lblTitleViewTrustedDevices.translatesAutoresizingMaskIntoConstraints = false

        lblTitleViewTrustedDevices.topAnchor.constraint(equalTo: viewTrustedDevices.topAnchor, constant: 0.046567*heightSC).isActive = true
        lblTitleViewTrustedDevices.leftAnchor.constraint(equalTo: viewTrustedDevices.leftAnchor, constant: 0.04*widthSC).isActive = true
        lblTitleViewTrustedDevices.widthAnchor.constraint(equalToConstant: 0.34375*widthSC).isActive = true
        lblTitleViewTrustedDevices.heightAnchor.constraint(equalToConstant: 0.026408*heightSC).isActive = true
    }

    // !!! :    TableView  Devices


    func setupTbvDevices(){
        view.addSubview(tbvDevices)
        tbvDevices.translatesAutoresizingMaskIntoConstraints = false
        tbvDevices.backgroundColor = UIColor.clear
        let c = CGFloat(arrDevice.count - 1)*(0.10817*heightSC)
        tbvDevices.topAnchor.constraint(equalTo: viewTrustedDevices.bottomAnchor, constant: 0).isActive = true
        tbvDevices.leftAnchor.constraint(equalTo: imgBG.leftAnchor, constant: 0).isActive = true
        tbvDevices.heightAnchor.constraint(equalToConstant: c).isActive = true
        tbvDevices.rightAnchor.constraint(equalTo: imgBG.rightAnchor, constant: -0.01334375*widthSC).isActive = true

        tbvDevices.register(CellDevice.self, forCellReuseIdentifier: "cell")

        tbvDevices.delegate = self
        tbvDevices.dataSource = self
        tbvDevices.isScrollEnabled = true
        //tbvDevices.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 0)


    }
    func setupviewBotTbv(){
        imgBG.addSubview(viewBotTbv)
        viewBotTbv.translatesAutoresizingMaskIntoConstraints = false
        viewBotTbv.topAnchor.constraint(equalTo: tbvDevices.bottomAnchor, constant: 0.5).isActive = true
        viewBotTbv.centerXAnchor.constraint(equalTo: imgBG.centerXAnchor).isActive = true
        viewBotTbv.bottomAnchor.constraint(equalTo: imgBG.bottomAnchor).isActive = true
        viewBotTbv.widthAnchor.constraint(equalTo: imgBG.widthAnchor).isActive = true

        viewBotTbv.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        viewBotTbv.layer.opacity = 0.9
    }
    // MARK: - OTHER FUNC 
    func translate(){
        //0.45334375
        let tran = CATransform3DTranslate(CATransform3DIdentity, -0.45334375*widthSC, 0, 0)
        UIView.transition(with: viewDevice, duration: 1, options: UIViewAnimationOptions.curveEaseIn, animations: {
            self.viewDevice.layer.transform = tran
            if self.viewDevice.layer.frame.maxX == 0.77465625*self.widthSC{
                self.setupLblYes()
                self.setupLblNo()
            }
        }, completion: nil)
    }


    // MARK: - EXTENSION TABLEVIEW



    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrDevice.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CellDevice
        cell.lblNameDevice1.text = arrDevice[indexPath.row].nameDevice
        cell.lblTimeSetting1.text = arrDevice[indexPath.row].timeSetting
        cell.selectionStyle = .blue

        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  0.10817*heightSC
    }


    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let yesAction = UITableViewRowAction(style: UITableViewRowActionStyle.normal, title: "Yes") { (action, indexPath) in
            print("Yes")
        }
        let noAction = UITableViewRowAction(style: UITableViewRowActionStyle.normal, title: "No") { (action, indexPath) in
            print("No")
        }
        yesAction.backgroundColor = UIColor.clear
        noAction.backgroundColor = UIColor.clear
        return [yesAction,noAction]
    }

}

















