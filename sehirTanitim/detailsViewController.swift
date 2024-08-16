//
//  detailsViewController.swift
//  sehirTanitim
//
//  Created by Mürşide Gökçe on 16.08.2024.
//

import UIKit

class detailsViewController: UIViewController {
    
    @IBOutlet weak var labelbolge: UILabel!
    @IBOutlet weak var labelsehir: UILabel!
    @IBOutlet weak var resim: UIImageView!
    
    var secilenSehir : Sehir? // optional geledebilir gelmeyedebilir. initializ etmeye gerek olmaz böylece
    override func viewDidLoad() {
        super.viewDidLoad()
        labelsehir.text=secilenSehir?.isim
        labelbolge.text=secilenSehir?.bolge
        resim.image=secilenSehir?.gorsel

    }
    

    

}
