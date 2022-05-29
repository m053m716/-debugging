function print_error_message(me)
%PRINT_ERROR_MESSAGE Prints error message details to command window.
%
% Syntax:
%   debugging.print_error_message(me);
%
% Inputs:
%   me - Matlab Error struct (such as returned by an exception inside a
%           `try ... catch` statement).
%
% See also: Contents

disp(me);
for iStack = 1:numel(me.stack)
    fprintf(1,'\n\t\t-->me.stack(%d)<--\n',iStack);
    disp(me.stack(iStack));
end

end