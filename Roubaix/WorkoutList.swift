import SwiftUI

struct WorkoutList: View {
    @State public var workouts = [Workout]()
    @State public var ftp: String;
    
    var body: some View {
        List(workouts, id: \._id) { workout in
            NavigationLink(
                destination: WorkoutDetail(workout: workout, ftp: ftp)) {
                Text(workout.name)
            }
        }
        .navigationTitle("Choose Workout")
        .onAppear(perform: fetchWorkouts)
    }
    
    func fetchWorkouts() {
        fetchData(view: self)
    }
}

struct WorkoutList_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutList(ftp: "250")
    }
}
