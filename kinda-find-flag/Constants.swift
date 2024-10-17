//
//  Constants.swift
//  kinda-find-flag
//
//  Created by Arsen Kipachu on 10/17/24.
//


// Africa
let africaQuestions: [FlagQuestion] = [
    FlagQuestion(
        flagImageName: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Flag_of_Nigeria.svg/260px-Flag_of_Nigeria.svg.png",
        options: ["Nigeria", "Ghana", "Kenya", "South Africa"],
        correctAnswer: "Nigeria"
    ),
    FlagQuestion(
        flagImageName: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Flag_of_South_Africa.svg/250px-Flag_of_South_Africa.svg.png",
        options: ["South Africa", "Egypt", "Morocco", "Tanzania"],
        correctAnswer: "South Africa"
    ),
    FlagQuestion(
        flagImageName: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Flag_of_Kenya.svg/250px-Flag_of_Kenya.svg.png",
        options: ["Kenya", "Uganda", "Rwanda", "Ethiopia"],
        correctAnswer: "Kenya"
    )
]

// Europe
let europeQuestions: [FlagQuestion] = [
    FlagQuestion(
        flagImageName: "https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/Flag_of_France.svg/250px-Flag_of_France.svg.png",
        options: ["France", "Germany", "Italy", "Spain"],
        correctAnswer: "France"
    ),
    FlagQuestion(
        flagImageName: "https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Flag_of_Germany.svg/250px-Flag_of_Germany.svg.png",
        options: ["Germany", "Austria", "Netherlands", "Belgium"],
        correctAnswer: "Germany"
    ),
    FlagQuestion(
        flagImageName: "https://upload.wikimedia.org/wikipedia/en/thumb/0/03/Flag_of_Italy.svg/250px-Flag_of_Italy.svg.png",
        options: ["Italy", "Portugal", "Greece", "Sweden"],
        correctAnswer: "Italy"
    )
]

// Asia
let asiaQuestions: [FlagQuestion] = [
    FlagQuestion(
        flagImageName: "https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Flag_of_Japan.svg/250px-Flag_of_Japan.svg.png",
        options: ["Japan", "China", "South Korea", "Thailand"],
        correctAnswer: "Japan"
    ),
    FlagQuestion(
        flagImageName: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_the_People%27s_Republic_of_China.svg/250px-Flag_of_the_People%27s_Republic_of_China.svg.png",
        options: ["China", "Vietnam", "India", "Malaysia"],
        correctAnswer: "China"
    ),
    FlagQuestion(
        flagImageName: "https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/250px-Flag_of_India.svg.png",
        options: ["India", "Pakistan", "Bangladesh", "Sri Lanka"],
        correctAnswer: "India"
    )
]

// North America
let northAmericaQuestions: [FlagQuestion] = [
    FlagQuestion(
        flagImageName: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Flag_of_the_United_States_%28DoS_ECA_Color_Standard%29.svg/250px-Flag_of_the_United_States_%28DoS_ECA_Color_Standard%29.svg.png",
        options: ["USA", "Canada", "Mexico", "Cuba"],
        correctAnswer: "USA"
    ),
    FlagQuestion(
        flagImageName: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Flag_of_Canada_%28Pantone%29.svg/250px-Flag_of_Canada_%28Pantone%29.svg.png",
        options: ["Canada", "USA", "Greenland", "Mexico"],
        correctAnswer: "Canada"
    ),
    FlagQuestion(
        flagImageName: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Flag_of_Mexico.svg/250px-Flag_of_Mexico.svg.png",
        options: ["Mexico", "Cuba", "Jamaica", "Dominican Republic"],
        correctAnswer: "Mexico"
    )
]

// South America
let southAmericaQuestions: [FlagQuestion] = [
    FlagQuestion(
        flagImageName: "https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Flag_of_Brazil.svg/250px-Flag_of_Brazil.svg.png",
        options: ["Brazil", "Argentina", "Colombia", "Venezuela"],
        correctAnswer: "Brazil"
    ),
    FlagQuestion(
        flagImageName: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Flag_of_Argentina.svg/250px-Flag_of_Argentina.svg.png",
        options: ["Argentina", "Chile", "Uruguay", "Paraguay"],
        correctAnswer: "Argentina"
    ),
    FlagQuestion(
        flagImageName: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Colombia.svg/250px-Flag_of_Colombia.svg.png",
        options: ["Colombia", "Peru", "Ecuador", "Bolivia"],
        correctAnswer: "Colombia"
    )
]

// Oceania
let oceaniaQuestions: [FlagQuestion] = [
    FlagQuestion(
        flagImageName: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Flag_of_Australia_%28converted%29.svg/250px-Flag_of_Australia_%28converted%29.svg.png",
        options: ["Australia", "New Zealand", "Fiji", "Papua New Guinea"],
        correctAnswer: "Australia"
    ),
    FlagQuestion(
        flagImageName: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Flag_of_New_Zealand.svg/250px-Flag_of_New_Zealand.svg.png",
        options: ["New Zealand", "Australia", "Samoa", "Tonga"],
        correctAnswer: "New Zealand"
    ),
    FlagQuestion(
        flagImageName: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flag_of_Fiji.svg/250px-Flag_of_Fiji.svg.png",
        options: ["Fiji", "Tonga", "Vanuatu", "Samoa"],
        correctAnswer: "Fiji"
    )
]

// Antarctica (for fun, as Antarctica has no official flag)
let antarcticaQuestions: [FlagQuestion] = [
    FlagQuestion(
        flagImageName: "antarctica.png",
        options: ["Antarctica", "Greenland", "Iceland", "South Pole"],
        correctAnswer: "Antarctica"
    )
]


let flagQuestionsByContinent: [String: [FlagQuestion]] = [
    "Africa": africaQuestions,
    "Europe": europeQuestions,
    "Asia": asiaQuestions,
    "North America": northAmericaQuestions,
    "South America": southAmericaQuestions,
    "Oceania": oceaniaQuestions,
    "Antarctica": antarcticaQuestions
]

