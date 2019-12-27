--Imports
math = require "math"

--Setup
math.randomseed(os.time())

--Global Dec    
guesses = 5
answer = tostring(math.random(1, 100))
result = 0
resultTable = 
{
    [-1] = function ()
        print("You Lose :(")
    end,

    [1] = function ()
        print("You Win :)")
    end
}

--Game
while result == 0 do
    print("Guess a number between 1 and 100, inclusive:")
    guess = io.read()

    if guess == answer then
        print("You've guessed the answer!")
        result = 1
    elseif guess < answer then
        print("Too Low!")
        guesses = guesses-1
    else 
        print("Too High!")
        guesses = guesses-1
    end

    if guesses == 0 then
        result = -1
    end
end

--Decide Result
endMsg = resultTable[result]
endMsg()