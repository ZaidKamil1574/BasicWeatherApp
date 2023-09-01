//
//  ContentView.swift
//  WeatherUtil
//
//  Created by Zaid Kamil on 8/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //data model in list view. navigatgion view control other views. back button to previous screen
        NavigationView{
            //data in list
            List(DataModel.data, id: \.self) {object in //create a list. get model from datamodel and id of item use. object in: putting the data in
                HStack{
                    //include icon, temp and day showing in the list
                    Image(systemName: object.icon)
                        .foregroundColor(object.color) //getting colors from data model
                    Text("\(object.high)º F")
                        .foregroundColor(Color.blue)
                    //Links to another view
                    NavigationLink(object.day, destination: DetailView(data: object)) //taking object from list. take to the detail view via navigation
                    
                }
            }
            .navigationTitle("Los Angeles")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
