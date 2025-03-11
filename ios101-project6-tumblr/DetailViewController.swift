//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by user268373 on 3/8/25.
//
import Nuke
import UIKit

class DetailViewController: UIViewController {
    
    
    
    
    
    
    
    @IBOutlet weak var posterImage: UIImageView!
    
    
    @IBOutlet weak var textView: UITextView!
    
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
            
        if let photo = post.photos.first {
            let url = photo.originalSize.url
                
            Nuke.loadImage(with: url, into: posterImage )
        }
            
        textView.text = post.caption.trimHTMLTags()
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
