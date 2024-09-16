//
//  ContentView.swift
//  Course List
//
//  Created by Martin on 2024/09/15.
//

import SwiftUI

struct ContentView: View {
    
    @State var courses: [Course] = []
    
    var body: some View {
        if courses.count == 0 {
            VStack {
                ProgressView()
                    .padding(.bottom, 10)
                Text("We're out grabbing the courses...")
            }
                .onAppear {
                    getCourses()
                }
        } else {
            List(courses) { course in
                Text(course.title)
                
            }
        }
    }
    
    func getCourses() {
        if let apiURL = URL(string: "https://zappycode.com/api/courses?format=json") {
            var request = URLRequest(url: apiURL)
            request.httpMethod = "GET"
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                if let courseData = data {
                    //                    print(String(data: courseData, encoding: .utf8) ?? "ERROR")
                    
                    if let coursesFromAPI = try? JSONDecoder().decode([Course].self, from: courseData) {
                        courses = coursesFromAPI
                    }
                }
            }.resume()
        }
    }
}

#Preview {
    ContentView()
}
