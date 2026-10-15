// Reviewed international question set. IDs and correct indexes match the Turkish originals.
final List<Map<String, dynamic>> questionsEnData = [
  {
    "id": "TRAP_001",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 50,
    "scenario":
        "A wheel has four cells labelled 1, 2, 4, and 8 in that order. An arrow moves one cell per step and returns to 1 after 8. Its first three outputs are 2, 4, and 8. What is the fourth output?",
    "options": ["16", "1", "8", "0", "4", "Cannot be determined"],
    "correctIndex": 1,
    "insight":
        "The wheel cycles through four cells. After 8, the arrow returns to 1. This is not an unrestricted doubling sequence.",
  },
  {
    "id": "TRAP_002",
    "category": "Bayesyen Mantık",
    "timeLimitSeconds": 70,
    "scenario":
        "90% of taxis are blue, 10% are red. A witness distinguishes colors with 80% accuracy and says “red.” What is the closest value to the probability that the taxi is actually red?",
    "options": ["80%", "50%", "31%", "10%", "8%", "90%"],
    "correctIndex": 2,
    "insight":
        "Out of 1000 taxis, 100 are red and 900 are blue. The witness sees approximately 80 red correctly and 180 blue incorrectly as red. 80/260 of red reports are real: about 31%.",
  },
  {
    "id": "TRAP_003",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 60,
    "scenario":
        "A prize is behind one of three doors. You choose a door. The host knows where the prize is, opens a different door with no prize, and offers you the chance to switch. Which strategy gives you the better chance of winning?",
    "options": [
      "Stay: 2/3",
      "Switch: 2/3",
      "Both: 1/2",
      "Both: 1/3",
      "Choose the open door",
      "The host gives no information",
    ],
    "correctIndex": 1,
    "insight":
        "The first choice has a 1/3 probability of being correct and a 2/3 probability of being incorrect. Since the presenter deliberately opens the empty door, in 2/3 cases where the first choice is wrong, changing it pays off.",
  },
  {
    "id": "TRAP_004",
    "category": "Bayesyen Mantık",
    "timeLimitSeconds": 75,
    "scenario":
        "A condition exists in 1% of the population. The test is positive in 99% of patients and false positive in 5% of healthy people. What is the closest value to the probability that someone with a positive result is actually sick?",
    "options": ["99%", "95%", "50%", "17%", "5%", "1%"],
    "correctIndex": 3,
    "insight":
        "There are approximately 100 patients per 10,000; 99 of them come back positive. 495 out of 9,900 healthy people are false positive. Of the positives, 99/594 are patients, approximately 16.7%.",
  },
  {
    "id": "TRAP_005",
    "category": "Bayesyen Mantık",
    "timeLimitSeconds": 65,
    "scenario":
        "You choose at random between a fair coin and a coin with tails on both sides, then toss your chosen coin. It lands tails. What is the probability that you chose the two-tailed coin?",
    "options": ["1/4", "1/3", "1/2", "2/3", "3/4", "1"],
    "correctIndex": 3,
    "insight":
        "The fair coin contributes a probability of (1/2)×(1/2)=1/4 to seeing tails. The two-tailed coin contributes (1/2)×1=1/2. Given tails, the probability of the two-tailed coin is (1/2)/(1/4+1/2)=2/3.",
  },
  {
    "id": "TRAP_006",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 55,
    "scenario":
        "Rule: \"If there is a vowel on one side of the card, there is an even number on the other side.\" There are four cards on the table, showing E, K, 4, 7. Which cards should you turn over to find the ones that might disprove the rule?",
    "options": [
      "E and 4",
      "E and 7",
      "K and 4",
      "Only E",
      "All four",
      "K and 7",
    ],
    "correctIndex": 1,
    "insight":
        "Turn E over to check for an odd number, and 7 over to check for a vowel. Either would disprove the rule. Seeing 4 does not require a vowel on the other side.",
  },
  {
    "id": "TRAP_007",
    "category": "Bilişsel Yanılgılar",
    "timeLimitSeconds": 45,
    "scenario":
        "A pencil and an eraser cost \$1.10 together. The pencil costs exactly \$1 more than the eraser. How much does the eraser cost?",
    "options": [
      "\$0.10",
      "\$0.05",
      "\$0.01",
      "\$0.50",
      "\$1.00",
      "Cannot be determined",
    ],
    "correctIndex": 1,
    "insight":
        "If the eraser costs x dollars, the pencil costs x+1. Since 2x+1=1.10, x=\$0.05. An eraser costing \$0.10 would make the total \$1.20.",
  },
  {
    "id": "TRAP_008",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 45,
    "scenario":
        "The vegetation in a lake doubles in size every day and on the 48th day it completely covers the lake. On which day was the lake half covered?",
    "options": [
      "day 24",
      "day 46",
      "day 47",
      "day 48",
      "day 12",
      "Insufficient information",
    ],
    "correctIndex": 2,
    "insight":
        "Since it doubles every day, the day before the full day is half full: day 47. Dividing the time in half is not the same as doubling the amount.",
  },
  {
    "id": "TRAP_009",
    "category": "Bayesyen Mantık",
    "timeLimitSeconds": 65,
    "scenario":
        "Two fair coins are tossed. You learn that at least one landed tails, without being told which coin. What is the probability that both landed tails?",
    "options": ["1/4", "1/3", "1/2", "2/3", "3/4", "1"],
    "correctIndex": 1,
    "insight":
        "The equally likely outcomes with at least one tail are HT, TH, and TT. Only TT has two tails, so the probability is 1/3.",
  },
  {
    "id": "TRAP_010",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 50,
    "scenario":
        "There are 3 red and 2 blue balls in a box. Two balls are drawn consecutively without putting them back. It is known that the first ball was red. What is the probability that the second ball is also red?",
    "options": ["3/5", "2/5", "1/2", "2/3", "1/4", "3/4"],
    "correctIndex": 2,
    "insight":
        "After the first red is removed, 2 reds and 2 blues remain in the box. The probability of the second ball coming up red is 2/4 = 1/2.",
  },
  {
    "id": "TRAP_011",
    "category": "Bilişsel Yanılgılar",
    "timeLimitSeconds": 50,
    "scenario":
        "A fair coin lands heads five times in a row. What is the probability of getting heads on the sixth throw?",
    "options": [
      "1/6",
      "1/4",
      "1/2",
      "5/6",
      "Heads for certain",
      "The coin is no longer fair",
    ],
    "correctIndex": 2,
    "insight":
        "Tosses of a fair coin are independent. Five previous heads do not change the probability of heads on the sixth toss: 1/2.",
  },
  {
    "id": "TRAP_012",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 55,
    "scenario":
        "All members of set A are in set B. Some members of B are in set C. What must be true about the relationship between A and C?",
    "options": [
      "All of A is in C",
      "Some of A is in C",
      "No member of A is in C",
      "It cannot be determined",
      "All of C is in A",
      "A must be empty",
    ],
    "correctIndex": 3,
    "insight":
        "The members of B that are also in C may lie inside or outside A. The two premises do not determine whether A and C overlap.",
  },
  {
    "id": "TRAP_013",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 55,
    "scenario":
        "A and B either always tell the truth or always lie. “We are both liars,” says A. What are A and B really?",
    "options": [
      "Both tell the truth",
      "Both lie",
      "A tells the truth; B lies",
      "A lies; B tells the truth",
      "No solution",
      "Cannot be determined",
    ],
    "correctIndex": 3,
    "insight":
        "A cannot truthfully claim to be a liar, so A lies. For “we are both liars” to be false, B must tell the truth.",
  },
  {
    "id": "TRAP_014",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 60,
    "scenario":
        "Nine coins look identical, but one is lighter. What is the fewest number of weighings needed to find it with a balance scale?",
    "options": ["1", "2", "3", "4", "5", "8"],
    "correctIndex": 1,
    "insight":
        "Split the coins into three groups of three. Weigh two groups to identify the lighter group (or the unweighed group if they balance). Weigh two coins from that group; the lighter coin is identified in two weighings.",
  },
  {
    "id": "TRAP_015",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 70,
    "scenario":
        "One hundred doors are closed. Person 1 toggles every door, person 2 toggles every second door, and so on until person 100 toggles door 100. How many doors are open at the end?",
    "options": ["5", "10", "25", "50", "99", "100"],
    "correctIndex": 1,
    "insight":
        "Door n is toggled once for every divisor of n. Only perfect squares have an odd number of divisors, so the 10 doors numbered 1² through 10² remain open.",
  },
  {
    "id": "TRAP_016",
    "category": "Davranışsal Ekonomi",
    "timeLimitSeconds": 50,
    "scenario":
        "You paid \$200 for a non-refundable movie ticket. Before the film starts, a free event you would enjoy more becomes available. You cannot sell the ticket. Which choice gives you more enjoyment from now on?",
    "options": [
      "See the movie to recover the money",
      "Go to the event you prefer",
      "Skip both",
      "Buy another movie ticket",
      "Pick at random",
      "Spend another \$200",
    ],
    "correctIndex": 1,
    "insight":
        "The \$200 is a sunk cost: it cannot be recovered either way. Choose the experience you would enjoy more from this point forward.",
  },
  {
    "id": "TRAP_017",
    "category": "Oyun Teorisi",
    "timeLimitSeconds": 65,
    "scenario":
        "A and B each choose Cooperate or Betray at the same time. If both cooperate, each gets 3 points; if both betray, each gets 1. If one betrays and the other cooperates, the betrayer gets 5 and the other gets 0. Which choice maximizes A’s score in a single round regardless of B’s choice?",
    "options": [
      "Cooperate",
      "Betray",
      "It depends on B",
      "Choose at random",
      "Do not play",
      "Ask for a draw",
    ],
    "correctIndex": 1,
    "insight":
        "If B cooperates, betrayal gives A 5 instead of 3. If B betrays, betrayal gives A 1 instead of 0. Betrayal scores more in either case.",
  },
  {
    "id": "TRAP_018",
    "category": "Bayesyen Mantık",
    "timeLimitSeconds": 75,
    "scenario":
        "In a three-door game, the host does not know where the prize is. After you choose a door, the host randomly opens one of the other two; it happens to be empty. Given this information, what are your chances of winning if you stay or switch?",
    "options": [
      "Switch 2/3; stay 1/3",
      "Both are 1/2",
      "Stay 2/3; switch 1/3",
      "Both are 1/3",
      "Switch wins for certain",
      "Not enough information",
    ],
    "correctIndex": 1,
    "insight":
        "If your first choice was correct (1/3), the random opening must reveal an empty door. If it was wrong (2/3), an empty door is revealed with probability 1/2. These cases have equal weight after observing an empty door, so staying and switching each win with probability 1/2.",
  },
  {
    "id": "TRAP_019",
    "category": "Bayesyen Mantık",
    "timeLimitSeconds": 60,
    "scenario":
        "Two fair dice are rolled. You learn that at least one shows a 6. What is the probability that both show a 6?",
    "options": ["1/36", "1/12", "1/11", "1/6", "1/2", "1/3"],
    "correctIndex": 2,
    "insight":
        "There are 11 equally likely ordered outcomes with at least one 6: six with a 6 on the first die plus six on the second, minus the duplicate (6,6). Only one of the 11 is (6,6).",
  },
  {
    "id": "TRAP_020",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 60,
    "scenario":
        "Each of two ropes takes exactly 60 minutes to burn from one end, but neither burns at a steady rate. Using only the ropes and a lighter, how can you measure 45 minutes?",
    "options": [
      "Cut one rope in half",
      "Light one rope at both ends and the other at one end; when the first finishes, light the second rope at its other end",
      "Light each rope at one end in turn",
      "Light both ropes at one end",
      "Light both ropes at both ends",
      "It is impossible",
    ],
    "correctIndex": 1,
    "insight":
        "The rope lit at both ends finishes in 30 minutes. The other then has 30 minutes of burn time left from one end. Light its other end and it finishes in 15 more minutes: 45 in total.",
  },
  {
    "id": "TRAP_021",
    "category": "Bilişsel Yanılgılar",
    "timeLimitSeconds": 50,
    "scenario":
        "On days when a city sells more ice cream, swimming accidents also rise. What conclusion is consistent with this correlation alone?",
    "options": [
      "Ice cream causes accidents",
      "Accidents increase ice cream sales",
      "The common cause of both may be hot weather.",
      "Ice cream should be banned",
      "Relationship cannot be a coincidence",
      "Swimming is always safe",
    ],
    "correctIndex": 2,
    "insight":
        "Correlation alone does not establish cause. Hot weather could increase both ice cream sales and swimming, and therefore swimming accidents.",
  },
  {
    "id": "TRAP_022",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 55,
    "scenario":
        "In a group of six people, every two people either know each other or do not know each other. What is certain to be found in each case?",
    "options": [
      "Someone everyone knows",
      "Three people who know each other or three people who do not know each other",
      "A person to whom everyone is a stranger",
      "Four people who know each other",
      "Three pairs of friends",
      "No common features required",
    ],
    "correctIndex": 1,
    "insight":
        "Choose one person. Among the other five, at least three either all know or all do not know that person. If any two of those three share the same relation with each other, they form the required trio with the chosen person. Otherwise those three form a trio with the opposite relation.",
  },
  {
    "id": "TRAP_023",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 60,
    "scenario":
        "Two squares at opposite corners of an 8×8 chessboard are removed. Can the remaining 62 squares be covered exactly by 31 dominoes, each covering two edge-adjacent squares?",
    "options": [
      "Yes, because 62 is even",
      "Yes, by crossing the dominoes",
      "No, the removed squares have the same color",
      "No, because 31 is odd",
      "Only if the board is rotated",
      "Cannot be determined",
    ],
    "correctIndex": 2,
    "insight":
        "Opposite corners have the same color. Removing them leaves 30 squares of one color and 32 of the other. Every domino covers one square of each color, so 31 dominoes cannot cover the board.",
  },
  {
    "id": "TRAP_024",
    "category": "Davranışsal Ekonomi",
    "timeLimitSeconds": 60,
    "scenario":
        "Option A pays \$40 for certain. Option B pays \$100 with a 50% chance and \$0 otherwise. Which has the higher expected monetary value?",
    "options": [
      "A, because it is certain",
      "B, because its expected value is \$50",
      "They are equal",
      "B, because it certainly pays \$100",
      "A, because its expected value is \$80",
      "Not enough information",
    ],
    "correctIndex": 1,
    "insight":
        "A has an expected value of \$40. B has an expected value of 0.5×\$100+0.5×\$0=\$50. The question concerns expected money, not risk preferences.",
  },
  {
    "id": "TRAP_025",
    "category": "Stratejik Düşünce",
    "timeLimitSeconds": 65,
    "scenario":
        "A sign says, “If it rains, the ground gets wet.” You see that the ground is wet. What does this fact alone prove?",
    "options": [
      "It definitely rained",
      "It definitely didn't rain",
      "Chance of rain is zero",
      "It cannot be determined whether it is raining or not",
      "The rule on the card is wrong",
      "The ground is not wet",
    ],
    "correctIndex": 3,
    "insight":
        "Rain is sufficient for wet ground, but it is not stated to be the only cause. The ground might be wet because of a sprinkler or another cause.",
  },
  {
    "id": "COMP26_001",
    "category": "Stratejik Düşünce",
    "scenario":
        "All faces of a cube are painted. It is then cut into 3 × 3 × 3 equal smaller cubes. How many small cubes have exactly two painted faces?",
    "options": ["8", "12", "6", "18", "24", "0"],
    "correctIndex": 1,
    "insight":
        "Only the cube at the middle of each edge has exactly two painted faces. A cube has 12 edges, giving 12 such small cubes.",
  },
  {
    "id": "COMP26_002",
    "category": "Bayesyen Mantık",
    "scenario":
        "A fair die is rolled twice. Given that the total is 7, what is the probability that the first roll was a 3?",
    "options": ["1/36", "1/12", "1/6", "1/3", "1/2", "1"],
    "correctIndex": 2,
    "insight":
        "There are six equally likely ordered pairs that sum to 7: (1,6), (2,5), (3,4), (4,3), (5,2), and (6,1). Only (3,4) starts with 3, so the probability is 1/6.",
  },
  {
    "id": "COMP26_003",
    "category": "Stratejik Düşünce",
    "scenario":
        "Five-digit numbers are written by using the digits 1, 2, 3, 4, 5 once each. How many are divisible by 5?",
    "options": ["12", "24", "60", "120", "5", "96"],
    "correctIndex": 1,
    "insight":
        "A number divisible by 5 must end in 5. The other four digits can be arranged in 4! = 24 ways.",
  },
  {
    "id": "COMP26_004",
    "category": "Stratejik Düşünce",
    "scenario":
        "Five different books will be lined up on the shelf. If books A and B are next to each other, how many different arrangements are there?",
    "options": ["24", "48", "60", "72", "96", "120"],
    "correctIndex": 1,
    "insight":
        "Treat A and B as one block. The four objects can be arranged in 4! = 24 ways, and the block can be AB or BA: 2 × 24 = 48.",
  },
  {
    "id": "COMP26_005",
    "category": "Stratejik Düşünce",
    "scenario":
        "On a grid, how many shortest paths lead from (0,0) to (3,2) if each move is one unit right or up?",
    "options": ["5", "6", "8", "10", "12", "20"],
    "correctIndex": 3,
    "insight":
        "Every shortest path has three right moves and two up moves. Choose which two of the five moves are up: C(5,2)=10.",
  },
  {
    "id": "COMP26_006",
    "category": "Bayesyen Mantık",
    "scenario":
        "A bag contains 2 red and 3 blue balls. Two are drawn without replacement. What is the probability that they have different colors?",
    "options": ["1/5", "2/5", "1/2", "3/5", "4/5", "1"],
    "correctIndex": 3,
    "insight":
        "Number of different colored pairs 2×3=6; total number of pairs C(5,2)=10. Probability 6/10=3/5.",
  },
  {
    "id": "COMP26_007",
    "category": "Stratejik Düşünce",
    "scenario":
        "Two different numbers are chosen from the numbers 1 to 20. How many choices are there so that their sum is odd?",
    "options": ["20", "45", "90", "100", "190", "200"],
    "correctIndex": 3,
    "insight":
        "The sum is odd only if one is odd and the other is even. There are 10 odd and 10 even numbers; 10×10=100 pairs are selected.",
  },
  {
    "id": "COMP26_008",
    "category": "Stratejik Düşünce",
    "scenario":
        "How many 2 × 2 squares can you find in a 5 × 5 grid of unit squares? Count only squares aligned with the grid.",
    "options": ["9", "16", "20", "25", "32", "36"],
    "correctIndex": 1,
    "insight":
        "The upper left corner of the 2×2 square is selected from the first four rows and first four columns: 4×4=16.",
  },
  {
    "id": "COMP26_009",
    "category": "Stratejik Düşünce",
    "scenario":
        "Dividing a number by 6 gives a remainder of 5, and dividing by 4 gives a remainder of 3. Which of the following meets these conditions?",
    "options": ["15", "17", "19", "21", "23", "25"],
    "correctIndex": 4,
    "insight":
        "23 = 6×3+5 and 23 = 4×5+3. Other options do not satisfy both remainder conditions.",
  },
  {
    "id": "COMP26_010",
    "category": "Stratejik Düşünce",
    "scenario":
        "How many three-digit numbers formed with only the numbers 2 and 3 have two 2s?",
    "options": ["1", "2", "3", "4", "6", "8"],
    "correctIndex": 2,
    "insight":
        "The position of the single number 3 can be in three different places: 322, 232, 223.",
  },
  {
    "id": "COMP26_011",
    "category": "Bayesyen Mantık",
    "scenario":
        "Three fair coins are tossed. Given that exactly two landed heads, what is the probability that the first coin landed heads?",
    "options": ["1/3", "1/2", "2/3", "3/4", "1/4", "1"],
    "correctIndex": 2,
    "insight":
        "The three equally likely outcomes with exactly two heads are HHT, HTH, and THH. The first coin is heads in two of them: 2/3.",
  },
  {
    "id": "COMP26_012",
    "category": "Stratejik Düşünce",
    "scenario":
        "7 people shaking hands; everyone shakes hands with everyone else exactly once. How many handshakes will there be in total?",
    "options": ["14", "21", "28", "42", "49", "7"],
    "correctIndex": 1,
    "insight": "Each handshake is a pair of people. C(7,2) = 7×6/2 = 21.",
  },
  {
    "id": "COMP26_013",
    "category": "Stratejik Düşünce",
    "scenario":
        "How many integers from 1 to 100 are divisible by both 2 and 3 but not by 5?",
    "options": ["10", "13", "14", "16", "17", "20"],
    "correctIndex": 1,
    "insight":
        "Those divisible by 2 and 3 are multiples of 6: 16. The ones divisible by 5 are multiples of 30: 3. 16−3=13.",
  },
  {
    "id": "COMP26_014",
    "category": "Stratejik Düşünce",
    "scenario":
        "In a triangle, one of the interior angles is 30°, the second is twice the third. What is the largest angle in degrees?",
    "options": ["60°", "70°", "80°", "90°", "100°", "120°"],
    "correctIndex": 4,
    "insight":
        "The sum of the remaining two angles is 150° and the ratio is 1:2. Its angles are 50° and 100°; The largest angle is 100°.",
  },
  {
    "id": "COMP26_015",
    "category": "Stratejik Düşünce",
    "scenario":
        "A clock shows exactly 03.30. How many degrees is the minor angle between the hour and minute hands?",
    "options": ["45°", "60°", "75°", "90°", "105°", "180°"],
    "correctIndex": 2,
    "insight":
        "The minute hand is at 180°. At 3:30, the hour hand is at 3.5 × 30° = 105°. The smaller angle is 180° − 105° = 75°.",
  },
  {
    "id": "COMP26_016",
    "category": "Stratejik Düşünce",
    "scenario":
        "A rectangle has sides of 6 and 8 units. A square has the same perimeter as the rectangle. What is the area of the square in square units?",
    "options": ["36", "42", "49", "56", "64", "100"],
    "correctIndex": 2,
    "insight":
        "The perimeter of the rectangle is 2×(6+8)=28. The side of a square with the same perimeter is 28/4=7 and its area is 49.",
  },
  {
    "id": "COMP26_017",
    "category": "Stratejik Düşünce",
    "scenario":
        "When a number increases by 20, its value increases by 25%. What is the first number?",
    "options": ["40", "60", "80", "100", "120", "160"],
    "correctIndex": 2,
    "insight":
        "If the original number is x, then 20 is 25% of x. Therefore x = 20 / 0.25 = 80.",
  },
  {
    "id": "COMP26_018",
    "category": "Stratejik Düşünce",
    "scenario":
        "A price rises by 20% and then falls by 20% of the new price. How does the final price compare with the original?",
    "options": [
      "Unchanged",
      "4% higher",
      "4% lower",
      "20% lower",
      "40% lower",
      "2% lower",
    ],
    "correctIndex": 2,
    "insight":
        "Get the initial price of 100. It becomes 120 after the increase and 120 × 0.8 = 96 after the discount. There is a net decrease of 4%.",
  },
  {
    "id": "COMP26_019",
    "category": "Stratejik Düşünce",
    "scenario":
        "The first four terms of a sequence are 2, 6, 12, 20. No rule is specified. Which statement about the fifth term must be true?",
    "options": [
      "It must be 30",
      "It must be 28",
      "It must be 32",
      "It could be 30 or 31",
      "It must be 40",
      "It must be 24",
    ],
    "correctIndex": 3,
    "insight":
        "Infinitely many rules fit the first four terms. The rule n(n+1) gives 30 next; a rule that adds 1 only to the fifth term gives 31. No unique next term follows without a stated rule.",
  },
  {
    "id": "COMP26_020",
    "category": "Stratejik Düşünce",
    "scenario":
        "A box has 10 red, 10 blue, and 10 green marbles. What is the fewest you must draw without looking to guarantee four of the same color?",
    "options": ["4", "7", "9", "10", "11", "12"],
    "correctIndex": 3,
    "insight":
        "In the worst case, you first draw three marbles of each color, nine in total. The tenth must be the fourth marble of one color.",
  },
  {
    "id": "COMP26_021",
    "category": "Stratejik Düşünce",
    "scenario":
        "Sixteen players enter a single-elimination tournament. Every match eliminates exactly one player and there are no draws. How many matches are needed to determine a champion?",
    "options": ["4", "8", "15", "16", "30", "32"],
    "correctIndex": 2,
    "insight":
        "Each of the 15 players other than the champion must be eliminated once. Each match eliminates one player, so 15 matches are needed.",
  },
  {
    "id": "COMP26_022",
    "category": "Stratejik Düşünce",
    "scenario":
        "The numbers 1 to 9 are written once. When a digit is deleted, the sum of the remaining eight digits is 4 times the deleted digit. Which number is deleted?",
    "options": ["5", "6", "7", "8", "9", "Cannot be determined"],
    "correctIndex": 4,
    "insight":
        "The sum of all digits is 45. If the deleted digit is x, the remainder is 45−x=4x; 5x=45 and x=9.",
  },
  {
    "id": "COMP26_023",
    "category": "Bayesyen Mantık",
    "scenario":
        "Four fair coins are tossed. What is the probability that none of them lands heads?",
    "options": ["1/2", "1/4", "1/8", "1/16", "1/32", "0"],
    "correctIndex": 3,
    "insight":
        "No heads means all four coins land tails. The independent probabilities multiply: (1/2)^4 = 1/16.",
  },
  {
    "id": "COMP26_024",
    "category": "Stratejik Düşünce",
    "scenario":
        "When an integer is divided by 3, it gives a remainder of 2. What is the remainder when 3 times this number is divided by 3?",
    "options": ["0", "1", "2", "3", "6", "Cannot be determined"],
    "correctIndex": 0,
    "insight":
        "Three times any integer is divisible by 3. The remainder is always 0, regardless of the original number.",
  },
  {
    "id": "COMP26_025",
    "category": "Stratejik Düşünce",
    "scenario":
        "A square is divided into 4 equal smaller squares. The perimeter of each small square is 12 cm. What is the perimeter of the big square?",
    "options": ["12", "18", "24", "36", "48", "6"],
    "correctIndex": 2,
    "insight":
        "One side of the small square is 12/4 = 3 cm. The side of the large square is 2×3=6 cm and the perimeter is 4×6=24 cm.",
  },
];
