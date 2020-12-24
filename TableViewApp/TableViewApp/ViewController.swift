//
//  ViewController.swift
//  TableViewApp
//
//  Created by Илья Гайворонский on 18.12.2020.
//

import UIKit



class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let names = [
        "Шаурмечная", "Кружка", "Макдак",
        "Второе дыхание", "Шашлычная №1"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - table view data source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    } // число строк необходимое для работы с таблицей
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CustomTableViewCell
        cell.nameLabel?.text = names[indexPath.row]
        cell.imageOfPlace?.image = UIImage(named: names[indexPath.row])
        cell.imageOfPlace?.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace?.clipsToBounds = true
        return cell
    } // метод для работы с контентом ячейки
    
// MARK: - Table view delegate
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }


    


}

