//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Zhenglong Wu on 10/03/2021.
//

import Foundation

class StateController: ObservableObject {
    
    @Published var divisions: [Division] = []
    
    init(){
        loadFromFile()
    }
    
    func getFilePath(fileName: String) -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let userPath = paths[0]
        let url = userPath.appendingPathComponent("\(fileName).json")
        return url
    }
    
    func loadFromFile() {
        
        // get url to the file you want to load from
        // let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        // let userPath = paths[0]
        // let url = userPath.appendingPathComponent("divisions.json")
        
        
        if let data = try? Data(contentsOf: getFilePath(fileName: "division")) {
            let decoder = JSONDecoder()
            if let loaded = try? decoder.decode([Division].self, from: data) {
                divisions = loaded
            }
        }
    }
    
    func saveToFile() {
        
        // create json encoder
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(divisions) {
            // take encoded objects and convert them into string
            if let json = String(data: encoded, encoding: .utf8) {
                // create file path
                let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
                let userPath = paths[0]
                let url = userPath.appendingPathComponent("divisions.json")
                do{
                    // write the json string to that file
                    try json.write(to: url, atomically: true, encoding: .utf8)
                }
                catch{
                    print(error.localizedDescription)
                }
            }
            else{
                print("unable to form json string")
            }
        }
    }
}
