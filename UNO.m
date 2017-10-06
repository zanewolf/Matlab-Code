

function [ possiblecards ] = UNO( hand, stack )
fn = fieldnames(stack); %find the field names
color = stack.Color; %find the color of the card
if ~strcmp(color, 'Wild') %if the card is not safari style...
    matches = []; %initilize one vector
    wildcards =[]; %initilize a second vector
    for x = 1:length(hand) %for the length of the hand structure...
        a = strcmp(hand(x).Color, color); %find the color of a card and see if it matches the card on the deck
        matches = [matches a]; %put it into the first vector
        b = strcmp(hand(x).Color, 'Wild'); %determine whether the card is wild
        wildcards = [wildcards b]; %put the result into the second vector
    end
    if any(matches)| any(wildcards) %if there is atleast one color match or atleast one wild card
        play=[]; %a new vector
        cards=find(matches); %find the cards with the matching color
        wilds = find(wildcards); %find the wild cards
    for y = 1:length(cards) %for however many cards actually match in color
        play = [play hand(cards(y))]; %that card is one you can play
    end
    for j = 1:length(wilds) %for however many cards are wild
        play = [play hand(wilds(j))]; %that card is one you can play
    end
    possiblecards = play; %set the final output varialbe
    else
        possiblecards = 'Sorry, draw a card!'; %if there are no matches, wah wah wah...
    end
else
    possiblecards = hand; %if the card on the deck is wild, you can play any card
end
%function to take in a structure representing the cards in a player's hand
%and a structure representing the card on top of the stack. It will look
%through the player's hand for matching colors or wild card and output all
%the cards the player can put down. If there are no cards, then you will be
%told so. If the card on the top is wild, you will be told to play all
%cards. 
%Usage: function [ possiblecards ] = UNO( hand, stack )



end

