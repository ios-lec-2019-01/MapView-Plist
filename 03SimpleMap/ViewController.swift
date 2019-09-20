//
//  ViewController.swift
//  03SimpleMap
//
//  Created by dit03 on 2019. 9. 20..
//  Copyright © 2019년 201820028. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //35.166537 위도Latitude, 129.072061 경도longitude (학교)
        
        //중심점 설정
        let center = CLLocationCoordinate2D(latitude: 35.166537, longitude: 129.072061)
        
        //반경 설정
        //let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        
        //region 설정
        //let region = MKCoordinateRegion(center: center, span: span)
        //let region = MKCoordinateRegion(center: center, latitudinalMeters: 1000, longitudinalMeters: 1000)
        
        //MapView에 추가
        //mapView.setRegion(region, animated: true)
        
        //annotation set
        let ann = MKPointAnnotation()
        ann.coordinate = center
        ann.title = "동의과학대학교"
        ann.subtitle = "미래관"
        
        //2
        let ann2 = MKPointAnnotation()
        ann2.coordinate.latitude = 35.161167
        ann2.coordinate.longitude = 129.064525
        ann2.title = "토포필리아센트럴"
        ann2.subtitle = "우리집"
        
        //PointAnnotation add
        //mapView.addAnnotations([ann, ann2])
        //모든 핀을 다 보여줌
        mapView.showAnnotations([ann, ann2], animated: true)
        
        //35.161167, 129.064525 (우리집)
    }
    
    
    //mapType 변경
    @IBAction func standardBtn(_ sender: Any) {
        mapView.mapType = MKMapType.standard//기본지도로 변경
    }
    
    @IBAction func SatelliteBtn(_ sender: Any) {
        mapView.mapType = MKMapType.satellite//위성지도로 변경
    }
    
    @IBAction func HybridBtn(_ sender: Any) {
        mapView.mapType = MKMapType.hybrid//하이브리드지도로 변경
    }
    
}

