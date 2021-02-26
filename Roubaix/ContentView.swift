import SwiftUI

let text = """
You can estimate FTP with your best recent
20 minute power value (either from a dedicated
20 minute test or a sufficiently hard 20 minute
effort from a race or workout). Multiply that
value by 95% to get your FTP.
"""

struct ContentView: View {
    @State public var ftp: String = "";
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    TextField("FTP", text: $ftp)
                        .keyboardType(.numberPad)
                }
                .navigationBarTitle("What is your FTP?")
                
                Text(text).foregroundColor(Color("MDB"))
                
                NavigationLink(
                    destination: WorkoutList(ftp: ftp),
                    label: {
                        Text("Save FTP").foregroundColor(.black)
                    }
                )
                .padding()
                .background(Color("MDB"))
                .cornerRadius(30)
            }
        }.preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
