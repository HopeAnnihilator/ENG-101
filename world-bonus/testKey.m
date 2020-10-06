%% Decryption Algorithm
%
% Description: Do the math stuff to test keys
%
% $Revision: R2020a$ 
% $Author: Viropexis
% $Date: October 11, 2020$
%---------------------------------------------------------

%% Decryption Function
function testKey(knownKey,encodedMessage, startTime)
    % Disable warnings and set format
    warning('off')
    format short
    % Find the inverse of the key to test against encrypted message
    inverseKey = inv(knownKey);
    % Multiply the encrypted message by the inverse of the key
    newMessage = mtimes(encodedMessage, inverseKey);
    % Check if all values of decoded message are in the acceptable
    % character range
    if 0 <= min(newMessage) & 26 >= max(newMessage)
       %% Convert Matrix to text
        % Convert the matrix of floats to a character array
        messageTranslated = char(newMessage + 64);
        % There is definently a better way to do this, but join the
        % character arrays to a single string
        messageJoined = strcat(messageTranslated(1,:),messageTranslated(2,:),messageTranslated(3,:), messageTranslated(4,:), messageTranslated(5,:), messageTranslated(6,:));
       %% Display the Output
        disp('Key');
        disp(knownKey);
        disp('Inverse of Key');
        disp(inverseKey);
        disp('Message');
        % Swap the faulty characters in string for correct characters 
        disp(strrep(messageJoined, "@", " "));
        % Find execution time for this output
        fprintf("\nFound after %g seconds\n", etime(clock, startTime));
        disp('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
    end
end

