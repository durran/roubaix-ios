import SwiftUI

struct WorkoutDetail: View {
    let workout: Workout
    
    var body: some View {
        Text(workout.name).font(.system(size: 11))
    }
}

struct WorkoutDetail_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutDetail(workout: Workout(_id: "test", name: "test", intervals: []))
    }
}
