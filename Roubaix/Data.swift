import Foundation

func fetchData(view: WorkoutList) {
    guard let url = URL(string: "http://127.0.0.1:8080/workouts") else {
        print("Invalid URL")
        return
    }
    
    let request = URLRequest(url: url)
    URLSession.shared.dataTask(with: request) { data, response, error in
        if let data = data {
            if let decodedResponse = try? JSONDecoder().decode([Workout].self, from: data) {
                DispatchQueue.main.async {
                    view.workouts = decodedResponse
                }
                return
            }
        }
    }.resume()
}
