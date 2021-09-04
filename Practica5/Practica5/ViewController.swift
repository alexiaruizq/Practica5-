//
//  ViewController.swift
//  Practica5
//
//  Created by Alexia Ruiz Quiroz on 03/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var sldTemp: UISlider!
    @IBOutlet weak var txtTemp: UILabel!
    @IBOutlet weak var btnCaptura: UIButton!
    @IBOutlet weak var imgResultado: UIImageView!
    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var btnNuevo: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgResultado.isHidden = true
        lblResultado.isHidden = true
        btnNuevo.isHidden = true
        btnCaptura.isEnabled = true
        sldTemp.isEnabled = true
    }

    @IBAction func doChangeTemp(_ sender: Any) {
        txtTemp.text = "\(String(format: "%.1f", sldTemp.value))C°"
        if sldTemp.value >= 38.0 {
            txtTemp.textColor = UIColor.red
        } else {
            txtTemp.textColor = UIColor.black
        }
    }
    
    @IBAction func doTapCapturar(_ sender: Any) {
        if sldTemp.value >= 38.0 {
            imgResultado.image = UIImage(named: "rechazo")
            lblResultado.text = "Ingreso NO autorizado para \(txtNombre.text!)"
        } else {
            imgResultado.image = UIImage(named: "aceptado")
            lblResultado.text = "Ingreso autorizado para \(txtNombre.text!)"
        }
        imgResultado.isHidden = false
        lblResultado.isHidden = false
        btnNuevo.isHidden = false
        btnCaptura.isEnabled = false
        sldTemp.isEnabled = false
        
    }
    
    @IBAction func doTapCapturarNuevo(_ sender: Any) {
        imgResultado.isHidden = true
        lblResultado.isHidden = true
        btnNuevo.isHidden = true
        btnCaptura.isEnabled = true
        sldTemp.isEnabled = true
    }
    
}

