
function [ stats ] = readingStats( numbercruncher )
info = fopen(numbercruncher, 'r'); %open a file
betterinfo = []; %initialize a vector
line = fgetl(info); %get the line
while ischar(line) %as long as we're not at the end of the file
    betterinfo = [betterinfo ' ' line]; %grab all the lines and put them in the vector!
    line = fgetl(info); %and grab the next line
end
%find the number of sentences--the number of sentences should equal the
%number of sentence enders (periods, exclamation points, question marks). 
period= strfind(betterinfo, '.'); %find the location of all the periods
exclamationmark= strfind(betterinfo, '!'); %find all the exclamation marks
questionmark = strfind(betterinfo, '?'); %find all the question marks
numbersent = length(period)+length(exclamationmark) + length(questionmark); %this is the total number of
%sentences, denoted by how many .?! there are, as there is one for every
%sentence...hopefully. Let's hope whoever wrote the file has good grammar. 
%now to find the average length of the sentences....
[sent rest]=strtok(betterinfo, '.!?'); %single out the first sentence
sentcount= 0; %initialize the sentence counting variable
wordspersent=[]; %initialize another counting variable
while ~isempty(sent) %as long as there is a sentence to be grabbed...
    sentcount = sentcount+1; %add to the total number of sentences
    spaces = strfind(sent, ' '); %find the number of spaces
    wordcount = length(spaces); %this is the total number of words in that sentence
    wordspersent=[wordspersent wordcount]; %record it
    [sent rest] = strtok(rest, '.?!');    %find the next sentence
end
allwords = sum(wordspersent); %this is the total number of words in all the sentences
ASL = mean(wordspersent); %this is the mean number of words per sentence
allsent = sentcount; %the total number of sentences...for some reason I didn't just use sentcount when I 
%wrote this
%now to find the average syllable length
[word rest ] = strtok(betterinfo, ' ') %for each word---NOT COUNTING !,?,.,, IN THE LENGTH--COMMAS WILL NOT BE INCLUDED IN THE LENGTH
%BUT APOSTROPHES WILL BE, PER INSTRUCTIONS. 
syllablecount = []; %initialize the syllable count variable
while ~isempty(word)%as long as there is a word to be found
    a = strfind(word, '!');%find any exclamation mark with the word...
    b = strfind(word, '?');%find any question mark...
    c= strfind(word, '.'); %find any period...
    d=strfind(word, ','); %find any commas
    if  ~isempty(a)        
        word(a)=[]; %and delete it
    elseif ~isempty(b) 
        word(b)=[]; %and delete it
    elseif  ~isempty(c)
        word(c)=[]; %and delete it
    elseif ~isempty(d) %and delete it
        word(d)=[]
    end

    syllables = length(word)./2; %and then find the syllable count
    syllablecount = [syllablecount syllables]; %and record it
    [word rest] = strtok(rest, ' ') %find the next word
end
AS = mean(syllablecount); %find the average of the syllable counts
 RE = 206.835 - (1.015 * ASL) -(84.6 * AS); %calculate reading ease
stats.Words = allwords; %input the total number of words
stats.Sentences = allsent; %input the total number of sentences
stats.ReadingEase=RE; %input the reading ease
fclose(info);%and close the file


%readingStats is a function that will open and go through a file, calculating
%the total word count, the total sentence count, and the reading ease. The 
%reading ease is calculated by a formule (RE = 206.835 - (1.015 * ASL) -(84.6 * AS)
%) that utilizes the average sentence length(words/sent) and the average syllable
%lenght, (average of word length divided by two). 
% Usage: function [ stats ] = readingStats( numbercruncher )

end
