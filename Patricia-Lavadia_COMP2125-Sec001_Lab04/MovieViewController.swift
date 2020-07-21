//
//  MovieViewController.swift
//  Patricia-Lavadia_COMP2125-Sec001_Lab04
//
//  Created by Patricia Anjelica Lavadia on 2020-07-21.
//  Copyright © 2020 Patricia Anjelica Lavadia. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {

    @IBOutlet weak var LMovie: UILabel!
    @IBOutlet weak var LDirector: UILabel!
    @IBOutlet weak var LRuntime: UILabel!
    @IBOutlet weak var MovieImage: UIImageView!
    
    var movieString:String!
    var directorString:String!
    var runtimeString:String!
    var thumbnail:UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LMovie.text = "Movie: " + movieString
        LDirector.text = "Director: " + directorString
        LRuntime.text = "Runtime: " + runtimeString + " min"
        MovieImage.image = thumbnail
    }
}
