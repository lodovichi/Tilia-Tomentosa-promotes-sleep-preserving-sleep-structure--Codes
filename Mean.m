% Estraction of behavioural state along the ì24 hour
% behaviour.scoreday{1,1:3} contains the breakdown on 1 hour period of the
% behavioural state

M = mean(behavior.scoreday{1,1},"omitnan")
Media(:,1) = M;
M = mean(behavior.scoreday{1,2},"omitnan")
Media(:,2) = M;
M = mean(behavior.scoreday{1,3},"omitnan")
Media(:,3) = M;

homeoTig= zeros (24, 5, 3);
homeoTig (:,1,1) = M; 
M = mean(behavior.scoreday{1,2},"omitnan")
homeoTig (:, 1,2)=M;
M = mean ( behavior.scoreday{1,3}, "omitnan");
plot (homeoTig (:1,3)
hold on 
plot(homeoTig (:1,2))
plot (homeoTig (:1,1))
homeoTig(:,2,3)=M;
plot(homeoTig(:,2,3))
