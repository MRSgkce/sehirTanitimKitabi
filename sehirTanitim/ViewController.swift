//
//  ViewController.swift
//  sehirTanitim
//
//  Created by Mürşide Gökçe on 16.08.2024.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var sehirDizisi = [ Sehir ]()
    var secilmisSehir : Sehir?
    @IBOutlet weak var tablo: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tablo.delegate=self
        tablo.dataSource=self
        
        let istanbul = Sehir(isim: "istanbul", bolge: "marmara", gorsel: UIImage(named: "istanbul")!)
        let ankara = Sehir(isim: "ankara", bolge: "iç anadolu", gorsel: UIImage(named: "ankara")!)
        let van = Sehir(isim: "van", bolge: "dogu", gorsel: UIImage(named: "van")!)
        let antalya = Sehir(isim: "antalya", bolge: "akdeniz", gorsel: UIImage(named: "antalya")!)
        
        sehirDizisi = [istanbul,ankara,van,antalya]
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sehirDizisi.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = sehirDizisi[ indexPath.row].isim
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { //segue ile diğer ekrana geçmek için

        secilmisSehir = sehirDizisi[indexPath.row]
        performSegue(withIdentifier: "todetails", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "todetails"{
            let destinationvc = segue.destination as! detailsViewController
            destinationvc.secilenSehir = secilmisSehir
            
            
        }
    }


}

