import SwiftUI

struct ContentView: View {
    @State public var workouts = [Workout]()
    
    var body: some View {
        NavigationView {
            List(workouts, id: \._id) { workout in
                NavigationLink(destination: WorkoutDetail(workout: workout)) {
                    Text(workout.name)
                }
            }
            .navigationTitle("Choose Workout")
            .background(Color.black)
            .onAppear(perform: fetchWorkouts)
        }.background(Color.black)
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
