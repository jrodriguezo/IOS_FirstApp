//
//  ViewController.swift
//  FirstApp
//
//  Created by JESUS on 10/09/2018.
//  Copyright © 2018 UPM. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var holaButton: UIButton!
    
    @IBOutlet weak var mundoButton: UIButton!
    
    @IBOutlet weak var pdelsolButton: UIButton!
    @IBOutlet weak var sliderOptions: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        holaButton.layer.cornerRadius = 10
        holaButton.layer.shadowColor = UIColor.blue.cgColor
        holaButton.layer.shadowRadius = 5
        holaButton.layer.shadowOpacity = 1
        
        mundoButton.layer.cornerRadius = 10
        mundoButton.layer.shadowColor = UIColor.blue.cgColor
        mundoButton.layer.shadowRadius = 5
        mundoButton.layer.shadowOpacity = 1
        
        pdelsolButton.layer.cornerRadius = 10
        pdelsolButton.layer.shadowColor = UIColor.blue.cgColor
        pdelsolButton.layer.shadowRadius = 5
        pdelsolButton.layer.shadowOpacity = 1
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateHola(_ sender: UIButton) {
        msgLabel.text = "Hola"
        
        sliderOptions.setValue(0.5, animated: true)
        mapView.mapType = MKMapType.hybrid
        /* another form: mapView.mapType = MKMapType(rawValue: 2)!*/
        
        let center = CLLocationCoordinate2D(latitude: 40.689209, longitude: -74.044439)
        let span = MKCoordinateSpan(latitudeDelta: 0.002, longitudeDelta: 0.002)
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(reg, animated: true)
    }
    
    @IBAction func updateMundo(_ sender: UIButton) {
        msgLabel.text = "Mundo"
        mapView.mapType = MKMapType.satellite
        
        let center = CLLocationCoordinate2D(latitude: 40.452445, longitude: -3.726162)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(reg, animated: true)
        
    }
    
    @IBAction func updateAlpha(_ sender: UISlider) {
        msgLabel.alpha = CGFloat(sender.value)
    }
    
    @IBAction func updatePdelSol(_ sender: UIButton) {
        msgLabel.text = "Madrid-PdelSol"
        
        mapView.mapType = MKMapType.hybrid
        /* another form: mapView.mapType = MKMapType(rawValue: 2)!*/
        
        let center = CLLocationCoordinate2D(latitude: 40.4146500, longitude: -3.7004000)
        let span = MKCoordinateSpan(latitudeDelta: 0.0001, longitudeDelta: 0.0001)
        let reg = MKCoordinateRegion(center: center, span: span)
        
        mapView.setRegion(reg, animated: true)
    }
    
    
}

