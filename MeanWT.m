M = mean(behavior.scoreday{1,1},"omitnan");
Media(:,1) = M;
M = mean(behavior.scoreday{1,2},"omitnan");
Media(:,2) = M;
M = mean(behavior.scoreday{1,3},"omitnan");
Media(:,3) = M;

%homeoWT= zeros (24, 5, 3);
homeoWT (:,5,:) = Media; %indice indica animale