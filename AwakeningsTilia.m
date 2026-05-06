%MeanAwakeningsTilia
mean = mean(beahvior.rateo_awakenings, 1, "omitnan")

AwakeningsTilia = zeros (24,5)
AwakeningsTilia (:,1) = mean