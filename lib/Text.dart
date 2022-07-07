// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:we_learn/QuizzPage.dart';

class Question {
  final int Id;
  final String Title;
  Map<String, bool> options;

  Question({
    required this.Id,
    required this.Title,
    required this.options,
  });
}

class topic {
  final icon;
  final String topicDes;
  final String title;
  final List<String> Goals;
  final List<List<String>> subTopics;

  topic({
    required this.icon,
    required this.topicDes,
    required this.title,
    required this.Goals,
    required this.subTopics,
  });
}

List<List<Question>> myQuestions = [
  [
    Question(
      Id: 10,
      Title: "What is the result of the following : 24*45 ?",
      options: {
        "1080": true,
        "1150": false,
        "920": false,
      },
    ),
    Question(
      Id: 20,
      Title: "Find X: 957+ X = 1111",
      options: {
        "154": true,
        "126": false,
        "125": false,
      },
    ),
    Question(
      Id: 20,
      Title: "Find X: 35*X= 70",
      options: {
        "0": false,
        "2": true,
        "8": false,
      },
    ),
    Question(
      Id: 20,
      Title:
          "You went to buy bread and you have 5 Dinars but the cost of the merchandises is 7 Dinars. How much do you lack ?",
      options: {
        "2 Dinars": true,
        "nothing": false,
        "7 Dinars": false,
      },
    )
  ],
  [
    Question(
      Id: 10,
      Title: "When was the The islamic Golden age?",
      options: {
        "from the 8th century to the 15th century.": false,
        "from the 8th century to the 14th century.": true,
        "from the 9th century to the 14th century.": false,
      },
    ),
    Question(
      Id: 20,
      Title: "tWhat is Ibn al-Nafis known for?",
      options: {
        "the first to describe the pulmonary circulation of the blood.": true,
        "+the first scientist to discover cells.": false,
        "the first scientist to discover atoms.": false,
      },
    ),
    Question(
      Id: 20,
      Title: "What is correct bellow ?",
      options: {
        "The blood goes from the right cavity up to the lungs, mix with what air is in the lungs, then pass through the arteria venosa to the left cavity of the two cavities of the heart.":
            true,
        "The blood goes from the left cavity up to the lungs, mix with what air is in the lungs, then pass through the arteria venosa to the right cavity of the two cavities of the heart.":
            false,
        "The Blood goes from the right cavity of the heart straight to the left cavity.":
            false,
      },
    ),
    Question(
      Id: 20,
      Title:
          "Who is the Greek physician whose theory was criticised by Ibn al-Nafis ?",
      options: {
        "Socrates": false,
        "Galen": false,
        "Hippocrates": false,
      },
    )
  ],
  [
    Question(
      Id: 10,
      Title:
          "Pick the correct time tense for the following phrases:\nEveryday, i (play) football.",
      options: {
        "present": true,
        "past": false,
        "future": false,
      },
    ),
    Question(
      Id: 20,
      Title: "Yesterday, i (buy) a notebook.",
      options: {
        "present": true,
        "past": false,
        "future": false,
      },
    ),
    Question(
      Id: 20,
      Title: "Tomorrow, i (go) to practice sports.",
      options: {
        "present": true,
        "past": false,
        "future": false,
      },
    ),
  ],
];
List<topic> myTopics = [
  topic(
      title: "Dealing with numbers",
      topicDes: "simple operations on numbers ",
      icon: AssetImage('assets/calculation.png'),
      Goals: [
        "operations on numbers",
        "their importance"
      ],
      subTopics: [
        [
          "addition",
          "You can actually obtain a greater number from two numbers. It is similar to merging them .Eg: You have an apple and your mom gives you another apple .  Now you have two apples and this is how :1+1=2- Addition is a necessary operation. It allows to calculate the sum of two things at least and gives you the ability to slove certain equations.Eg: You have two apples . Your mom gave you one. How many apples did you originally own ? The answer is 1*lets say that X is the number we are searching for.+ So we have X+1=2 and thus by using substraction(adding negative numbers) we obtain the answer: X+1 -1= 2-1"
        ],
        [
          "Substraction",
          "It is basically the same as addition and we can simplify it adding negative numbers"
        ],
        [
          "multiplication",
          "You can actually obtain bigger numbers using multiplication than using additionIt can actually be simplified as adding the same number multiple timesEg : 4*8=8+8+8+8=4+4+4+4+4+4+4+4=32Note: lets suppose that x and y are numbersx+y=y+x . Eg : 4+5=5+4x*y=y*x . Eg: 4*5=5*4This operation helps you with many things including calculating the price of what you bought.Eg: You bought 4 pieces of bread. 1 peace of bread costs 200 Millimes. the total cost is 4*200=200+200+200+200=800"
        ],
        [
          "Division",
          "This operation is similar to multiplication however it doesnt give the same result.It essentially allows you to know how much you have multiplied one thing to get the other numberEg: 4/2=2 here we multiplied 2 2 times to get Eg : 10/5=2 here we multiplied '5'2 times to get 10Note:  lets suppose that x and y are numbersy/x is usually different from x/yy/x = x/y if y=x or y=-xEg: 10/2=5 and 2/10=0.2"
        ]
      ]),
  topic(
      title: "Islam Golden age",
      topicDes: "the history of the islamic golden age",
      icon: AssetImage('assets/mosque1.png'),
      Goals: [
        "History",
        "some arab scientist's inventions"
      ],
      subTopics: [
        [
          "History",
          "The Islamic Golden age is, as the name states, the era where Islamic Nations flourished the most. Not only did their economics and cultures bloom but so did their scientific feats.It is traditionally dated from the 8th century to the 14th century.This period witnessed the birth of numerous scientists such as Al-Khwarizmi, Ibn al-Haytham and Ibn al-Nafis.As much as those scientists discovered things and achieved the unexpected, most of their accomplishments are forgotten. As such, there is a certain need to be reminded of their feats especially the ones that concern the basics ."
        ],
        [
          "Ibn al-Nafis",
          "Ibn al-Nafis  was an Arab polymath whose areas of work included medicine, surgery, physiology, anatomy, biology, Islamic studies, jurisprudence, and philosophy. He is known for being the first to describe the pulmonary circulation of the blood.He actually has been described as 'the father of circulatory physiology' after correcting the Greek physician Galen's theory about the physiology of the circulatory system.As an early anatomist, Ibn al-Nafis also performed several human dissections during the course of his work, making several important discoveries in the fields of physiology and anatomy."
        ],
        [
          "",
          'The achievements he made doesnt end with that. It is only the most important one without which you cannot say that you know about him.It is stated in his work that "Blood from the right chamber of the heart must arrive at the left chamber, but there is no direct pathway between them. The thick septum of the heart is not perforated and does not have visible pores as some people thought or invisible pores as Galen thought. The blood from the right chamber must flow through the vena arteriosa (pulmonary artery) to the lungs, spread through its substances, be mingled there with air, pass through the arteria venosa (pulmonary vein) to reach the left chamber of the heart."'
        ],
      ]),
  topic(
      title: "English",
      topicDes: "learn the difference between tenses",
      icon: AssetImage('assets/english-language.png'),
      Goals: [
        "know the 3 main tense",
        "know how to conjugate these tenses"
      ],
      subTopics: [
        [
          "Present",
          "We use the present tense when we are talking about the current time .Eg: now, i watch TV.We use it also to describe a habit or to state a fact.Eg: -When water reaches 100Â°C, it boilsEvery monday, I practice sportsThere are certain words which indicates that it is one of the possible tenses possible such as : Now, currently, every day, month, week, year; always; sometimes; never; frequently."
        ],
        [
          "Past",
          "We use it to state something that happened in the past. You always use the simple past when you say when something happened, so it is associated with certain past time expressions.Eg: \n+a definite point in time: last week, when I was a child, yesterday, six weeks ago \n-We saw a good film last week.\n-Yesterday, I arrived in Geneva.\n-She finished her work atseven o'clock\n-I went to the theatre last night\n+an indefinite point in time: the other day, ages ago, a long time ago\n-People lived in caves a long time ago.\n-She played the piano when she was a child.\nThere are certain words which indicates that it is one of the possible tenses possible such as : Yesterday; years ago, weeks, months, days, hours ago; in (past year); last (month, week, year)"
        ],
        [
          "Future",
          "This verb tense is used to express an action that will take place in the future. It's generally reserved for something that will begin and end in the future.*There are 2 formulas for this type of tense:\n1/will + base verb (also shall+ base verb). This type indicates that it is a possible consequence.\n2/to be + going to + verb . This type indicates that it is a certain consequence.\n*There are certain words which indicates that it is one of the possible tenses possible such as : Tomorrow; in (future year, month, week); on (future day); next (month, week, year, name of day); number of(days, months, weeks, years) from now; this month, week, afternoon, year; someday"
        ],
      ])
];
