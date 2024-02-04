//
//  QuizBrain.swift
//  Sensei Says
//
//  Created by Joel Beilis on 2024-02-03.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    var mscore = 0
    var quiz: [Question]
    var allCorrectAnswers: [String]

    init() {
        quiz = [
        Question(q: "Karate", correctAnswer: "Empty Hand"),
        Question(q: "Karate Do", correctAnswer: "The way of the empty hand"),
        Question(q: "Karateka", correctAnswer: "Practitioner of Karate"),
        Question(q: "Kohai", correctAnswer: "Junior Student"),
        Question(q: "Bunkai", correctAnswer: "Application of kata movements"),
        Question(q: "Kiai", correctAnswer: "Yell of spirit"),
        Question(q: "Dojo", correctAnswer: "School or training hall"),
        Question(q: "Sensei", correctAnswer: "Teacher, one who has gone before"),
        Question(q: "Sempai", correctAnswer: "Senior Student"),
        Question(q: "Seiza", correctAnswer: "Kneel"),
        Question(q: "Gi", correctAnswer: "Uniform"),
        Question(q: "Obi", correctAnswer: "Belt"),
        Question(q: "Osu", correctAnswer: "Used to show respect and enthusiasm"),
        Question(q: "Kime", correctAnswer: "Focus"),
        Question(q: "Kumite", correctAnswer: "Sparring/Fighting"),
        Question(q: "Kobudo", correctAnswer: "Weapons Training"),
        Question(q: "Dachi", correctAnswer: "Stance"),
        Question(q: "Tsuki", correctAnswer: "Punch"),
        Question(q: "Uchi", correctAnswer: "Strike"),
        Question(q: "Uke", correctAnswer: "Block"),
        Question(q: "Kiotsuke", correctAnswer: "Attention, stand at attention"),
        Question(q: "Rei", correctAnswer: "Bow"),
        Question(q: "Geri", correctAnswer: "Kick"),
        Question(q: "Zenkutsu Dachi", correctAnswer: "Front Stance"),
        Question(q: "Kokutsu Dachi", correctAnswer: "Back Stance"),
        Question(q: "Kiba Dachi", correctAnswer: "Horse Stance"),
        Question(q: "Neko Ashi Dachi", correctAnswer: "Cat Stance"),
        Question(q: "Jodan Uke", correctAnswer: "High Block"),
        Question(q: "Gedan Barrai", correctAnswer: "Low Block/Lower Perry"),
        Question(q: "Soto Uke", correctAnswer: "Outside Middle Block"),
        Question(q: "Uchi Uke", correctAnswer: "Inside Middle Block"),
        Question(q: "Shuto Uke", correctAnswer: "Knife Hand Block"),
        Question(q: "Morote Uke", correctAnswer: "Augmented Block"),
        Question(q: "Juji Uke", correctAnswer: "X Block"),
        Question(q: "Mae Geri", correctAnswer: "Front Kick"),
        Question(q: "Yoko Geri", correctAnswer: "Side Kick"),
        Question(q: "Mawashi Geri", correctAnswer: "Roundhouse Kick"),
        Question(q: "Tobi Geri", correctAnswer: "Flying Kick"),
        Question(q: "Hiza Geri", correctAnswer: "Knee Kick"),
        Question(q: "Gyaku Mawashi Geri", correctAnswer: "Hook Kick"),
        Question(q: "Kakato Geri", correctAnswer: "Axe Kick"),
        Question(q: "Mikazuki Geri", correctAnswer: "Crescent Kick"),
        Question(q: "Oi Tsuki", correctAnswer: "Lunge Punch"),
        Question(q: "Gyaku Tsuki", correctAnswer: "Reverse Punch"),
        Question(q: "Uraken Uchi", correctAnswer: "Backfist Strike"),
        Question(q: "Empi Uchi", correctAnswer: "Elbow Strike"),
        Question(q: "Teisho Uchi", correctAnswer: "Palm Heel Strike"),
        Question(q: "Nukite Uchi", correctAnswer: "Finger/Spear hand strike"),
        Question(q: "Shuto Uchi", correctAnswer: "Knife Hand Strike"),
        Question(q: "Haito Uchi", correctAnswer: "Ridge Hand Strike"),
        Question(q: "Ichi", correctAnswer: "1"),
        Question(q: "Ni", correctAnswer: "2"),
        Question(q: "San", correctAnswer: "3"),
        Question(q: "Shi", correctAnswer: "4"),
        Question(q: "Go", correctAnswer: "5"),
        Question(q: "Roku", correctAnswer: "6"),
        Question(q: "Shichi", correctAnswer: "7"),
        Question(q: "Hachi", correctAnswer: "8"),
        Question(q: "Ku", correctAnswer: "9"),
        Question(q: "Ju", correctAnswer: "10"),
        Question(q: "Heian Shodan", correctAnswer: "Peaceful Mind Level 1"),
        Question(q: "Heian Nidan", correctAnswer: "Peaceful Mind Level 2"),
        Question(q: "Heian Sandan", correctAnswer: "Peaceful Mind Level 3"),
        Question(q: "Heian Yodan", correctAnswer: "Peaceful Mind Level 4"),
        Question(q: "Heian Godan", correctAnswer: "Peaceful Mind Level 5"),
        Question(q: "Bussai Dai", correctAnswer: "To penetrate a fortress the greater"),
        Question(q: "Jion", correctAnswer: "Temple bell temple sound"),
        Question(q: "Enpi", correctAnswer: "Darting of the flying swallow"),
        Question(q: "Kanku Sho", correctAnswer: "Chinese military envoy the lesser"),
        Question(q: "Kanku Dai", correctAnswer: "Chinese military envoy the greater"),
        Question(q: "Shodan Bo Waza", correctAnswer: "Level 1 staff sequence"),
        Question(q: "Suishi no Kon", correctAnswer: "Suishi with staff"),
        Question(q: "Shodan Tonfa Waza", correctAnswer: "Level 1 tonfa sequence"),
        Question(q: "Tokuyama no Tonfa", correctAnswer: "Tokuyama with Tonfa")
        ]
        
        quiz.shuffle()
        
        allCorrectAnswers = ["Empty Hand", "The way of the empty hand", "Practitioner of Karate", "Junior Student", "Application of kata movements", "Yell of spirit", "Teacher, one who has gone before", "Senior Student", "Kneel", "Uniform", "Belt", "Used to show respect and enthusiasm", "Focus", "Sparring/Fighting", "Weapons Training", "Stance", "Punch", "Strike", "Block", "Attention, stand at attention", "Bow", "Kick", "Front Stance", "Back Stance", "Horse Stance", "Cat Stance", "High Block", "Low Block/Lower Perry", "Outside Middle Block", "Inside Middle Block", "Knife Hand Block", "Augmented Block", "X Block", "Front Kick", "Side Kick", "Roundhouse Kick", "Flying Kick", "Knee Kick", "Hook Kick", "Axe Kick", "Crescent Kick", "Lunge Punch", "Reverse Punch", "Backfist Strike", "Elbow Strike", "Palm Heel Strike", "Finger/Spear hand strike", "Knife Hand Strike", "Ridge Hand Strike", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Peaceful Mind Level 1", "Peaceful Mind Level 2", "Peaceful Mind Level 3", "Peaceful Mind Level 4", "Peaceful Mind Level 5", "To penetrate a fortress the greater", "Temple bell temple sound", "Darting of the flying swallow", "Chinese military envoy the lesser", "Chinese military envoy the greater", "Level 1 staff sequence", "Suishi with staff", "Level 1 tonfa sequence", "Tokuyama with Tonfa", "School or training hall"]

        allCorrectAnswers = quiz.map { $0.rightAnswer }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getAnswers() -> [String] {
        var answers = allCorrectAnswers.shuffled()
        let correctAnswer = quiz[questionNumber].rightAnswer
        answers.removeAll { $0 == correctAnswer }
        answers = Array(answers.prefix(2)) // Get only two incorrect answers
        answers.append(correctAnswer)
        answers.shuffle()
        return answers
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        //Need to change answer to rightAnswer here.
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            mscore += 1
            return false
        }
    }
}

