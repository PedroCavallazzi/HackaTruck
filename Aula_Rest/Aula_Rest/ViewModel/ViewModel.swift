//
//  VIewModel.swift
//  Aula_Rest
//
//  Created by Turma01-9 on 05/04/24.
//

import Foundation

class ViewModel: ObservableObject{

    @Published var chars : [HaPo] = []
    
    func fetch(){
        guard let url = URL(string: "https://hp-api.onrender.com/api/characters/students") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do{
                let parsed = try JSONDecoder().decode([HaPo].self, from: data)
                DispatchQueue.main.async{
                    self?.chars = parsed
                }
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}
