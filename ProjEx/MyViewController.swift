//
//  MyViewController.swift
//  ProjEx
//
//  Created by SK Kim on 23/08/2019.
//  Copyright © 2019 skc4365. All rights reserved.
//

import UIKit

class MyViewController: UIViewController, UITabBarDelegate, UITableViewDataSource {
    
    
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //동영상 플에이창 ID:PlayID
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myReuseIdentifier", for: indexPath)
        
        // Configure the cell...
        
        return cell
    }
    
    

}
