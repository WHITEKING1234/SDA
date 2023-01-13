//
//  ViewController.swift
//  homework
//
//  Created by Mac on 10/1/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var network = Network()
    var mem1:[Mems] = []
    
    
    
    
    
    var mem2 = UITableView()
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //            self.mem = reloadData()
        
        mem2.register(UITableViewCell.self, forCellReuseIdentifier: "let_cell")
        mem2.dataSource = self
        
        //        network.ggetmem { memslist in
        //            self.mem1 = memslis
        mems()
        network.getbeer { Memslist in
                self.mem1 = Memslist
            self.mem2.reloadData()
        }
            
            
            
            // Do any additional setup after loading the view.
            
        }
        func mems(){
            view.addSubview(mem2)
            mem2.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.top.equalToSuperview()
                make.bottom.equalToSuperview()
                make.left.equalToSuperview()
                make.right.equalToSuperview()
            }
        }
    }

            extension ViewController: UITableViewDataSource{
                func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                    return mem1.count
                    
                }
                
                
                func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                    let cell = tableView.dequeueReusableCell(withIdentifier: "let_cell", for: indexPath)
                    cell.textLabel?.text = mem1[indexPath.row].name
                    return cell
                }
            }
   
