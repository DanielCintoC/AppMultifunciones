//
//  ThirdViewController.swift
//  Coding
//
//  Created by daniel cinto conde on 28/11/18.
//  Copyright © 2018 daniel cinto conde. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var families: [String] = []
    var fonts: [String: [String]] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        families = UIFont.familyNames.sorted( by: { return $0 < $1 } )
        
        for fam in families {
            fonts[fam] = UIFont.fontNames(forFamilyName: fam)
        }
        
    }
    
    // MARK: - Métodos del protocolo UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Cuantas filas vas a tener en cada sección
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.families.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FontFamilyCell", for: indexPath)
        let fontFamily = self.families[indexPath.row]
        cell.textLabel?.text = fontFamily
        cell.textLabel?.font = UIFont(name: fontFamily, size: 20.0)
        return cell
    }
    
    //MARK: - Métodos del protocolo de UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let row = indexPath.row
        let fontFamily = self.families[row]
        let familyFonts = fonts[fontFamily]!
        
    }

}
