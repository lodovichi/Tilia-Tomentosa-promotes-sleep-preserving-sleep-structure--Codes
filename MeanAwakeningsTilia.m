%MeanAwakeningsTilia
Mean = mean (behavior.rateo_awakenings, 1, "omitnan")

%AwakeningsTilia= zeros (24,5)
%AwakeningsTilia (:,1) = Mean
MeanAwakeAll = mean (MeanAwakeningsTilia, 2,"omitnan")

