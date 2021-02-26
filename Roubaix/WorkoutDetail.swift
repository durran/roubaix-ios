import SwiftUI

struct WorkoutDetail: View {
    let workout: Workout
    let ftp: String;
    
    var body: some View {
        let interval = workout.intervals[0]
        VStack {
            Text(workout.name)
                .foregroundColor(Color("MDB"))
                .font(.system(size: 30))
            Text(interval.name)
            HStack {
                Image("power")
                Text("Power")
                    .foregroundColor(Color("MDB"))
                    .font(.system(size: 25))
            }
            
            Text(power(interval: interval))
                .foregroundColor(Color("MDB"))
                .font(.system(size: 130))
            Text("Watts")
                .font(.system(size: 10))
            
            HStack(alignment: .center, spacing: 40) {
                VStack {
                    Image("time")
                    Text("Time left")
                        .foregroundColor(Color("MDB"))
                        .font(.system(size: 10))
                    Text("6:30")
                        .font(.system(size: 30))
                }
                Divider()
                VStack {
                    Image("cadence")
                    Text("Cadence")
                        .foregroundColor(Color("MDB"))
                        .font(.system(size: 10))
                    Text("110")
                        .font(.system(size: 30))
                }
                Divider()
                VStack {
                    Image("reps")
                    Text("Repetitions")
                        .foregroundColor(Color("MDB"))
                        .font(.system(size: 10))
                    Text("10")
                        .font(.system(size: 30))
                }
            }
        }
    }
    
    func power(interval: Interval) -> String {
        "\(Int(Double(Int(ftp)!) * interval.over!))"
    }
}

struct WorkoutDetail_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutDetail(
            workout: Workout(
                _id: "test",
                name: "test",
                intervals: [
                    Interval(
                        name: "Over/Under",
                        over: 2.0,
                        timeOver: 20,
                        cadenceOver: 110,
                        under: 0.6,
                        timeUnder: 40,
                        cadenceUnder: 85,
                        cadence: 10,
                        duration: 0,
                        repetitions: 0,
                        rest: 0,
                        type: "overUnder"
                    )
                ]
            ),
            ftp: "200"
        )
    }
}
