//
//  NewsTableViewCell.swift
//  mobileProject
//
//  Created by İlkay Türe on 7.10.2022.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    var news = [Model] ()
    @IBOutlet weak var titleLabel: UILabel!    
    @IBOutlet weak var detailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        ferchingApiData(URL: "https://inshorts.deta.dev/news?category=science") { result in
            self.news = result
   
    }
       
    func ferchingApiData(URL url: String,completion: @escaping ([Model])-> Void) {
        let url = URL(string: url)
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url!)  { data, response, error in
                   if data != nil && error == nil {
          
        
           
                do {
                   let parsingData = try JSONDecoder().decode([Model].self, from: data!)
                    completion(parsingData) }
               catch {
                    print("parsing error")
               }
            }
        }
        dataTask.resume()
    }
      
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

