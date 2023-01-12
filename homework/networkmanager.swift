//
//  networkmanager.swift
//  homework
//
//  Created by Mac on 10/1/23.
//

import Foundation
class Network{
    func getbeer(comletion:@escaping ([Beer]) -> ()){
        let url = URL(string: "https://api.imgflip.com/get_memes")
        URLSession.shared.dataTask(with: url!) {(data,response,error) in
            if error == nil && data != nil{
                
                do{
                    let beers = try JSONDecoder().decode([Beer].self ,from: data!)
                    DispatchQueue.main.async{
                        comletion(beers)
                    }
//                    print(beers)
                    
                }catch{
                    print("error")
                }
            }
        }.resume()
        
    }
}
