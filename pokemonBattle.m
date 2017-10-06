function [ engarde ] = pokemonBattle( wham, whamback )
switch wham %conditionals to determine who you have and calculate the battle
    %intensity based on who your opponent draws
    case {'Charmander'}
        if strcmp (whamback, 'Squirtle')
            engarde = 'This will be difficult...';
        else 
            engarde = 'No sweat!';
        end
    case {'Bulbasaur'}
        if strcmp (whamback, 'Charmander')
            engarde = 'This will be difficult...';
        else
            engarde = 'No sweat!';
        end
    case {'Squirtle'}
        if strcmp (whamback, 'Bulbasaur')
            engarde = 'This will be difficult...';
        else
            engarde = 'No sweat!';
        end
end
% if statement code: 
% if (wham == 'Charmander')
%     if (strcmp (wham, 'Squirtle')
%         engarde = 'This will be difficult...';
%     else
%         engarde = 'No sweat!';
%     end
% elseif (strcmp (wham, 'Bulbasaur')
%     if (whamback == 'Charmander')
%         engarde = 'This will be difficult...';
%     else 
%         engarde = 'No sweat!';
%     end
% elseif (strcmp (wham, 'Squirtle')
%     if (whamback == 'Bulbasaur')
%         engarde = 'This will be difficult...';
%     else 
%         engarde = 'No Sweat!';
%     end
% end

%Given a pokemon battle and the given cards of Charmander, Bulbasaur, and Squirtle
%, this function will give you an idea of what the battle will be like (hard/easy)
%based on which card you and your opponent draws. 
% % Usage: function [ engarde ] = pokemonBattle( wham, whamback )
% switch wham
%     case {'Charmander'}
%         if strcmp (whamback, 'Squirtle')
%             engarde = 'This will be difficult...';
%         else 
%             engarde = 'No sweat!';
%         end
%     case {'Bulbasaur'}
%         if strcmp (whamback, 'Charmander')
%             engarde = 'This will be difficult...';
%         else
%             engarde = 'No sweat!';
%         end
%     case {'Squirtle'}
%         if strcmp (whamback, 'Bulbasaur')
%             engarde = 'This will be difficult...';
%         else
%             engarde = 'No sweat!';
%         end
% end


end