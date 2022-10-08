//
//  NewsTableViewController.swift
//  mobileProject
//
//  Created by İlkay Türe on 7.10.2022.
//

import UIKit

class NewsTableViewController: UITableViewController {

    var news = [Model] ()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        }
       
    
 

    // MARK: - Table view data source

   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 25
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        let news = news[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell")
        
      
        return cell!
    }
    
}

  

    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    
    



