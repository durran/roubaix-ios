import SwiftUI

struct ContentView: View {
    @State public var workouts = [Workout]()
    
    var body: some View {
        NavigationView {
            List(workouts, id: \._id) { workout in
                NavigationLink(destination: Text(workout.name)) {
                    WorkoutDetail(workout: workout)
                }
            }
            .navigationTitle("Choose Workout")
            .onAppear(perform: fetchWorkouts)
        }
        .background(Color.black)
    }
    
    func fetchWorkouts() {
        fetchData(view: self)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
