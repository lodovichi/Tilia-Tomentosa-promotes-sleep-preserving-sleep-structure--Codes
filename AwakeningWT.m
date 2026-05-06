%Mean AwakeningsWT
Mean = mean(behavior.rateo_awakenings, 1, "omitnan");

%AwakeningsWT= zeros (24, 5)
AwakeningsWT (:,5) = Mean;
MeanAwakeAllWT = mean (MeanAwakweningsWT, 2, "omitnan")