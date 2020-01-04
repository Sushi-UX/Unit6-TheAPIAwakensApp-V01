//
//  ViewController.swift
//  The API Awakens
//
//  Created by Raymond Choy on 1/3/20.
//  Copyright © 2020 thechoygroup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var selectedType: SelectedType?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: Actions

    @IBAction func categorySelected(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            selectedType = SelectedType.characters
        case 1:
            selectedType = SelectedType.vehicles
        case 2:
            selectedType = SelectedType.starships
        default:
            break
        }
        performSegue(withIdentifier: "goToDetailView", sender: (Any).self)
    }
    
    // pass selected type through to detail view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is DetailViewController {
            let destinationViewController = segue.destination as? DetailViewController
            destinationViewController?.selectedCategory = selectedType
        }
    }
}

