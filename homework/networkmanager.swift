//
//  networkmanager.swift
//  homework
//
//  Created by Mac on 10/1/23.
//

import Foundation
class Network{
    func getbeer(comletion:@escaping ([Mems]) -> ()){
        let url = URL(string: "https://api.imgflip.com/get_memes")
        URLSession.shared.dataTask(with: url!) {(data,response,error) in
            if error == nil && data != nil{
                
                do{
                    let test = try JSONDecoder().decode([Mems].self ,from: data!)
                    DispatchQueue.main.async{
                        comletion(test)
                    }
//                    print(beers)
                    
                }catch{
                    print("error")
                }
            }
        }.resume()
        
    }
}
