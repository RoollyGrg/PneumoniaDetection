//
//  LocationsDataService.swift
//  PneumoniaDetection
//
//  Created by Bibek Gurung on 31/03/2022.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "T.U. Teaching",
            cityName: "Kathmnadu",
            coordinates: CLLocationCoordinate2D(latitude: 27.736229085225435, longitude: 85.3302273109853),
            description: "Tribhuvan University Teaching Hospital is the first Hospital and a landmark in the evolution of medical education in Nepal, which was established in 1983AD. Being the integral part of Tribhuvan University, this hospital has been working on education, research and medical treatment services. It has been a practical place and platform for the medical students to learn and conduct medical research projects and on the other hand as a hospital it renders best and affordable healthcare facilities to the people of Nepal.",
            imageNames: [
                "tu1",
                "tu2",
                "tu3",
            ],
            link: "https://www.hamrodoctor.com/hospital/t-u-teaching-hospital"),
        Location(
            name: "Grande Hospital",
            cityName: "Kathmandu",
            coordinates: CLLocationCoordinate2D(latitude: 27.753065875334052, longitude: 85.32589972648795),
            description: "Grande International Hospital, Kathmandu is a multi-specialty hospital that offers preventive and curative healthcare services. It was established with a motive “Care to Cure” in February 2010. It began as an idea of a patient-oriented, socially responsible center, making superior quality healthcare services convenient and accessible for the community it serves.",
            imageNames: [
                "g1",
                "g2",
                "g3",
            ],
            link: "https://www.grandehospital.com"),
        Location(
            name: "B&B Hospital",
            cityName: "Kathmandu",
            coordinates: CLLocationCoordinate2D(latitude: 27.66455262716273, longitude: 85.32922588399823),
            description: "B & B Hospital provides an array of services starting from emergency care to general, elective and subspecialty medical and surgical care in numerous medical and surgical subspecialties.",
            imageNames: [
                "b1",
                "b2",
                "b3",
            ],
            link: "https://www.bbhospital.com.np"),
        Location(
            name: "Patan Hospital",
            cityName: "Kathmandu",
            coordinates: CLLocationCoordinate2D(latitude: 27.668384422851492, longitude: 85.32058508741608),
            description: "Patan Hospital is major teaching hospital for the Patan Academy of Health Sciences. Patan Hospital is one of the largest hospitals in Nepal. It uses modern equipment and facilities to provide treatment for almost 320 000 outpatients and 20 000 inpatients every year.",
            imageNames: [
                "p1",
                "p2",
                "p3",
            ],
            link: "https://www.pahs.edu.np/pahs-community/hospital/"),
        Location(
            name: "Bir Hospital",
            cityName: "Kathmandu",
            coordinates: CLLocationCoordinate2D(latitude: 27.706268711522583, longitude: 85.31347973762973),
            description: "Bir Hospital is the oldest hospital of Nepal. This hospital was established in 1947 BS, under the name of contemporary Prime Minister Bir Shamsher Jung Bahadur Rana. Currently the hospital consists of 535 beds and it provides medical and surgical treatment to all people.Many people from rural areas come here to get free treatment.",
            imageNames: [
                "br1",
                "br2",
            ],
            link: "https://www.hamrodoctor.com/hospital/bir-hospital"),
    ]
    
}

