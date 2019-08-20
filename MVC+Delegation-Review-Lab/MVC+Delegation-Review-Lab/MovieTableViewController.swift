//
//  MovieTableViewController.swift
//  MVC+Delegation-Review-Lab
//
//  Created by Levi Davis on 8/19/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class MovieTableViewController: UITableViewController, SizeDelegate {
    
    var currentFontSize: CGFloat = 17

    func getFontSize(fontSize: CGFloat) {
        currentFontSize = fontSize
        tableView.reloadData()
    }
    
    let movieData = Movie.allMovies
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        let movie = movieData[indexPath.row]
        cell.textLabel?.text = movie.name
        cell.textLabel?.font = UIFont.systemFont(ofSize: currentFontSize)
        cell.detailTextLabel?.text = "\(movie.year)"
        cell.detailTextLabel?.font = UIFont.systemFont(ofSize: currentFontSize - 2.0)
        cell.imageView?.image = UIImage(named: movie.posterImageName)
        
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? TextSizeSliderViewController else {return}
        settingsVC.delegate = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

//         self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
}
