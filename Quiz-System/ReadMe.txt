# 8086 Quiz System in Assembly Language

## Introduction
This is a simple Quiz System developed in 8086 Assembly Language using DOS interrupts.  
The program asks multiple-choice questions, checks answers, calculates the final score, and displays grades.

## Features
- User name input
- Multiple-choice questions (MCQs)
- Score calculation
- Grade system
- Simple DOS-based interface

## Technologies Used
- 8086 Assembly Language
- DOS Interrupts
- MASM / TASM
- DOSBox

## How It Works
1. User enters their name
2. Program displays quiz questions
3. User selects answers using A/B/C
4. Final score and grade are shown

## Grading System
- 3 Correct → Grade A
- 2 Correct → Grade B
- 1 Correct → Grade C
- 0 Correct → Grade F

## Sample Output
```text
==== QUIZ SYSTEM ====

Enter Full Name:
Ali

Hello Ali

Q1: 2 + 2 = ?
A) 3  B) 4  C) 5
Answer (A/B/C): B

Correct!

Final Score: 3
Grade: A