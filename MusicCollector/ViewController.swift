//
//  ViewController.swift
//  MusicCollector
//
//  Created by Daniel Bonaparte on 3/10/17.
//  Copyright © 2017 bonapARTe. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var musics : [Music] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
    
    }

    override func viewWillAppear(_ animated: Bool) {
        let context = (UIApplication.shared.delegate as!
            AppDelegate).persistentContainer.viewContext
        do {
            musics = try context.fetch(Music.fetchRequest())
            print(musics)
        } catch {
        
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musics.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath:
        IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let music = self.musics[indexPath.row]
        cell.textLabel?.text = music.title
        return cell
    }

}

