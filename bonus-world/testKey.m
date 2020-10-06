function data = testKey(knownKey,encodedMessage)
    warning('off')
    inverseKey = inv(knownKey);
    newMessage = mtimes(encodedMessage, inverseKey);
    flip = 0;
    for j = 1:18
        if floor(newMessage(j)) == newMessage(j) && floor(newMessage(j)) >= 0 && floor(newMessage(j)) <=26
            continue
        else
            flip = 1;
            break
        end
    end

    if flip == 0 
        messageTranslated = char(newMessage + 64);
        messageJoined = strcat(messageTranslated(1,:),messageTranslated(2,:),messageTranslated(3,:), messageTranslated(4,:), messageTranslated(5,:), messageTranslated(6,:));
        disp('Key');
        disp(knownKey);
        disp('Inverse');
        disp(inverseKey);
        disp('Message');
        disp(strrep(messageJoined, "@", " "));
        disp('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
    end
end

