//
//  ContentView.swift
//  DamuBala
//
//  Created by Айсель on 12.02.2025.
//

import SwiftUI

/*import SwiftUI

struct ContentView: View {
    @State private var iin: String = ""
    @State private var password: String = ""
    @State private var isSecure: Bool = true

    var body: some View {
        VStack {
            Spacer() // Добавляет пустое пространство сверху
            
            Image("Damubala")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200) // Настроить размер
            
            Spacer(minLength: 20) // Пространство между логотипом и полями

            VStack(spacing: 16) {
                TextField("Введите ИИН", text: $iin)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                    .padding(.horizontal, 20)

                HStack {
                    if isSecure {
                        SecureField("Введите пароль", text: $password)
                    } else {
                        TextField("Введите пароль", text: $password)
                    }
                    
                    Button(action: { isSecure.toggle() }) {
                        Image(systemName: isSecure ? "eye.slash" : "eye")
                            .foregroundColor(.orange)
                            .font(.system(size: 20))
                            .animation(.easeInOut, value: isSecure)
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(8)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                .padding(.horizontal, 20)
            }

            Spacer(minLength: 30) // Пространство перед кнопкой

            Button("Войти") {
                // Действие при нажатии
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.orange)
            .foregroundColor(.white)
            .cornerRadius(8)
            .padding(.horizontal, 20)
           // NavigationLink("Перейти к расписанию", destination: ScheduleView())
           // .padding()
           // .foregroundColor(.blue)
            Spacer() // Заполняет оставшееся пространство, центрируя элементы
        }
    }
}

#Preview {
    ContentView()
}
*/
import SwiftUI

struct ContentView: View {
    @State private var iin: String = ""
    @State private var password: String = ""
    @State private var isSecure: Bool = true

    var body: some View {
        VStack {
            Spacer() // Добавляет пустое пространство сверху

            Image("Damubala")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200) // Настроить размер

            Spacer(minLength: 20) // Пространство между логотипом и полями

            VStack(spacing: 16) {
                TextField("Введите ИИН", text: $iin)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                    .padding(.horizontal, 20)

                HStack {
                    if isSecure {
                        SecureField("Введите пароль", text: $password)
                    } else {
                        TextField("Введите пароль", text: $password)
                    }

                    Button(action: { isSecure.toggle() }) {
                        Image(systemName: isSecure ? "eye.slash" : "eye")
                            .foregroundColor(.orange)
                            .font(.system(size: 20))
                            .padding() // Добавим немного отступов для кнопки
                            .animation(.easeInOut, value: isSecure)
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(8)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                .padding(.horizontal, 20)
            }

            Spacer(minLength: 30) // Пространство перед кнопкой

            Button("Войти") {
                // Действие при нажатии
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.orange)
            .foregroundColor(.white)
            .cornerRadius(8)
            .padding(.horizontal, 20)
           // NavigationLink("Перейти к расписанию", destination: ScheduleView())
           // .padding()
           // .foregroundColor(.blue)

            Spacer() // Заполняет оставшееся пространство, центрируя элементы
        }
        .padding(.top) // Дополнительный отступ сверху для всей VStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits) // Автоматическая настройка для лучшего отображения превью
            .padding()
    }
}
