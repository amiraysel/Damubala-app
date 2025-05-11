/*import SwiftUI
import MapKit

struct Club: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 51.1605, longitude: 71.4704), // Астана
        span: MKCoordinateSpan(latitudeDelta: 5.0, longitudeDelta: 5.0)
    )

    @State private var filteredClubs: [Club] = []
    let allClubs = [
        Club(name: "Шахматный клуб", coordinate: CLLocationCoordinate2D(latitude: 51.1605, longitude: 71.4704)), // Астана
        Club(name: "Футбольная секция", coordinate: CLLocationCoordinate2D(latitude: 50.2839, longitude: 57.1660)) // Актобе
    ]

    @State private var searchText: String = ""

    var body: some View {
        VStack {
            TextField("Поиск кружков...", text: $searchText, onCommit: filterClubs)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Map(coordinateRegion: $region, annotationItems: filteredClubs) { club in
                MapAnnotation(coordinate: club.coordinate) {
                    VStack {
                        Image(systemName: "mappin.circle.fill")
                            .foregroundColor(.red)
                            .font(.title)
                        Text(club.name)
                            .font(.caption)
                            .padding(5)
                            .background(Color.white)
                            .cornerRadius(5)
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
        .onAppear {
            filteredClubs = allClubs
        }
    }

    func filterClubs() {
        if searchText.isEmpty {
            filteredClubs = allClubs
        } else {
            filteredClubs = allClubs.filter {
                $0.name.lowercased().contains(searchText.lowercased())
            }
        }
    }
}

#Preview {
    MapView()
}

import SwiftUI
import MapKit

struct Club: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 51.1605, longitude: 71.4704), // Астана
        span: MKCoordinateSpan(latitudeDelta: 5.0, longitudeDelta: 5.0)
    )

    @State private var filteredClubs: [Club]
    let allClubs = [
        Club(name: "Шахматный клуб", coordinate: CLLocationCoordinate2D(latitude: 51.1605, longitude: 71.4704)), // Астана
        Club(name: "Футбольная секция", coordinate: CLLocationCoordinate2D(latitude: 50.2839, longitude: 57.1660)) // Актобе
    ]
    
    @State private var searchText: String = ""

    init() {
        _filteredClubs = State(initialValue: allClubs) // Инициализация filteredClubs сразу с allClubs
    }

    var body: some View {
        VStack {
            TextField("Поиск кружков...", text: $searchText, onCommit: filterClubs)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Map(coordinateRegion: $region, annotationItems: filteredClubs) { club in
                MapAnnotation(coordinate: club.coordinate) {
                    VStack {
                        Image(systemName: "mappin.circle.fill")
                            .foregroundColor(.red)
                            .font(.title)
                        Text(club.name)
                            .font(.caption)
                            .padding(5)
                            .background(Color.white)
                            .cornerRadius(5)
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
        .onAppear {
            filterClubs() // Начальная фильтрация при появлении
        }
    }

    func filterClubs() {
        if searchText.isEmpty {
            filteredClubs = allClubs
        } else {
            filteredClubs = allClubs.filter {
                $0.name.lowercased().contains(searchText.lowercased())
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
*/
import SwiftUI
import MapKit

struct Club: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 51.1605, longitude: 71.4704), // Астана
        span: MKCoordinateSpan(latitudeDelta: 5.0, longitudeDelta: 5.0)
    )

    @State private var filteredClubs: [Club]
    let allClubs = [
        Club(name: "Шахматный клуб", coordinate: CLLocationCoordinate2D(latitude: 51.1605, longitude: 71.4704)), // Астана
        Club(name: "Футбольная секция", coordinate: CLLocationCoordinate2D(latitude: 50.2839, longitude: 57.1660)) // Актобе
    ]
    
    @State private var searchText: String = ""

    init() {
        _filteredClubs = State(initialValue: allClubs) // Инициализация filteredClubs сразу с allClubs
    }

    var body: some View {
        VStack {
            TextField("Поиск кружков...", text: $searchText, onCommit: filterClubs)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            // Используем новый способ инициализации Map
            Map(coordinateRegion: $region) {
                ForEach(filteredClubs) { club in
                    MapPin(coordinate: club.coordinate, tint: .red) // Обновляем отображение аннотаций
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
        .onAppear {
            filterClubs() // Начальная фильтрация при появлении
        }
    }

    func filterClubs() {
        if searchText.isEmpty {
            filteredClubs = allClubs
        } else {
            filteredClubs = allClubs.filter {
                $0.name.lowercased().contains(searchText.lowercased())
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
