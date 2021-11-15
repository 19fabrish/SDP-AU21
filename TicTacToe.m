clc
clear

%Initialize Scene
myScene = simpleGameEngine('XandO.png', 85,85);

running = 1;
Osprite = 1;
Xsprite = 2;
emptySprite = 3;
playerWon = 0;

while(running)

    currentPlayer = 1;
    occupiedSpaces = linspace(0,0,9);
    boardDisplay = emptySprite * ones(3,3);

    
    fprintf('Player 1 is O, Player 2 is X.\n');

    while(~playerWon)
   
        drawScene(myScene, boardDisplay);
        fprintf('Player %d, please type which square you would like:', currentPlayer);
        selected = input(' ');
   
        if(selected <= 9 && selected >=1)
       
            row = ceil(selected / 3);
            col = mod(selected, 3);
            if(col == 0)
                col = 3;
            end
       
       
            if(occupiedSpaces(selected) == 0)
                occupiedSpaces(selected) = 1;
                boardDisplay(row, col) = currentPlayer;
           
                if(currentPlayer == 1)
                    currentPlayer=2;
                else
                    currentPlayer=1;
                end
            else
                fprintf('Space is already occupied. Please try again.\n');
            end
       
        else
            fprintf('Invalid square; out of bounds.\n');
        end
   
        drawScene(myScene, boardDisplay);
   
        check = 0;
        if(diagonalWin(boardDisplay))
            playerWon = diagonalWin(boardDisplay);
            fprintf('Player %d wins via diagonal win!\n', playerWon);
        elseif(horizontalWin(boardDisplay))
            playerWon = horizontalWin(boardDisplay);
            fprintf('Player %d wins via horizontal win!\n', playerWon);
        elseif(verticalWin(boardDisplay))
            playerWon = verticalWin(boardDisplay);
            fprintf('Player %d wins via vertical win!\n', playerWon);
        elseif(stalemate(occupiedSpaces))
            playerWon = 3;
            fprintf('Stalemate! Too Bad!!!!!\n');
        end
   
        if(playerWon)
            running = input('Would you like to keep playing?: ');
            if(running)
                playerWon = 0;
                boardDisplay = emptySprite * ones(3,3);
                occupiedSpaces = linspace(0,0,9);
                currentPlayer = 1;
            end
        end
           
   
    end

end

fprintf('Thanks for playing\n');