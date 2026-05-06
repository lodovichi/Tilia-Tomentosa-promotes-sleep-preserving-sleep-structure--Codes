%Mean _boutTilia
M = mean(behavior.bout{1,1},"omitnan");
Media(:,1) = M;
M = mean(behavior.bout{1,2},"omitnan");
Media(:,2) = M;  %indica la posizione nell'array in cui va la M
M = mean(behavior.bout{1,3},"omitnan");
Media(:,3) = M;

%boutTilia= zeros (24, 5, 3);
%boutTilia (:,5,:) = Media; %indice indica animale
figure
plot(1:24, squeeze(boutTilia(:,1,:)), 'LineWidth',1.5)
xlabel('Ore')
ylabel('Valore')
title('Stato 1 - 5 animali')
