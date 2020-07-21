//
//  ViewController.swift
//  Patricia-Lavadia_COMP2125-Sec001_Lab04
//
//  Created by Patricia Anjelica Lavadia on 2020-07-21.
//  Copyright © 2020 Patricia Anjelica Lavadia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    let movieTitle = ["Ever After", "Devils Prada", "Legally Blonde", "Crazy Rich Asians"]
   let director = ["Andy Tennant", "David Frankel", "Robert Luketic", "Jon M. Chu"]
    let screenTime = ["121", "109", "96", "121"]
    let releaseYear = ["1998", "2006", "2001", "2018"]
    let image = ["1", "2", "3", "4"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return movieTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let tempCell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        tempCell.MovieLabel.text = movieTitle[indexPath.row]
        tempCell.ReleaseYearLabel.text = releaseYear[indexPath.row]
        tempCell.MovieImage.image = UIImage(named: image[indexPath.row] + ".jpg" )
        
        return tempCell;
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC:MovieViewController = self.storyboard?.instantiateViewController(withIdentifier: "MovieViewController") as! MovieViewController
       // assign the values to the local variable declared in ProductDetailViewController Class
        detailVC.movieString = movieTitle[indexPath.row]
        detailVC.directorString = director[indexPath.row]
        detailVC.runtimeString = screenTime[indexPath.row]
        detailVC.thumbnail = UIImage(named: image[indexPath.row] + ".jpg" )!
        // make it navigate to ProductDetailViewController
        self.navigationController?.pushViewController(detailVC, animated: true)
    }

}

