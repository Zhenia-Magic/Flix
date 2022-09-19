//
//  MovieDetailsViewController.swift
//  Moviesta
//
//  Created by Евгения Барабаш on 17.09.2022.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    
    var movie: [String: Any]!

    @IBOutlet weak var movieTitle: UINavigationItem!
    @IBOutlet weak var moviePhoto: UIImageView!
    @IBOutlet weak var moviePoster: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    @IBOutlet weak var movieDate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let title = movie["title"] as! String
        let description = movie["overview"] as! String
        let releaseDate = movie["release_date"] as! String
        movieTitle.title = title
        movieTitleLabel.text = title
        movieTitleLabel.sizeToFit()
        movieDescription.text = description
        movieDescription.sizeToFit()
        movieDate.text = releaseDate
        
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterURL = URL(string: baseURL + posterPath)
        
        moviePoster.af.setImage(withURL: posterURL!)
        
        let backdropURL = "https://image.tmdb.org/t/p/w780"
        let backdropPath = movie["backdrop_path"] as! String
        let photoURL = URL(string: backdropURL + backdropPath)
        
        moviePhoto.af.setImage(withURL: photoURL!)
        // Do any additional setup after loading the view.
    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
