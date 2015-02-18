function update(botObj)
% The "update" method updates the real-time properties of the bot
% object "botObj".
%
% SYNTAX:
%   botObj = botObj.update()
%
% INPUTS:
%   botObj - (1 x 1 bot.Bot)
%       An instance of the "bot.Bot" class.
%   
% OUTPUTS:
%
% NOTES:

% NECESSARY FILES AND/OR PACKAGES:
%   +bot, quaternion.m
%
% SEE ALSO: TODO: Add see alsos
%    relatedFunction1 | relatedFunction2
%
% AUTHOR:
%    Rowland O'Flaherty (www.rowlandoflaherty.com) 16-FEB-2012
%-------------------------------------------------------------------------------

%% Record current
if botObj.record
    botObj.tape.append(botObj.time,botObj.state);
end

%% Update
if botObj.simulate
    time = botObj.timeRaw + botObj.timeStep;
    state = botObj.step();
else
    time = botObj.clock();
    pause(botObj.timeStep);
end

botObj.timeRaw = time;
botObj.state = state;


end
