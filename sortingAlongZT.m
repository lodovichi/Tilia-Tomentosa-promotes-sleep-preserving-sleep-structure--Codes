% arrange data following the ZT per Cnt or Tilia 
% be careful to state which data set you are using: Cnt Or Tilia

totalTiliaZTday = zeros(5,2,3,513);
totalTiliaZTnight = zeros(5,2,3,513);
tmp = zeros(5,2,3,12,513);

tmp = totalTilia (:,:,:,6:17,:);
totalTiliaZTday = squeeze(mean(tmp,4,'omitnan'));

tmp(:,:,:,1:7,:) =  totalTilia (:,:,:,18:24,:);
tmp(:,:,:,8:12,:) =  totalTilia (:,:,:,1:5,:);
totalTiliaZTnight = squeeze(mean(tmp,4,'omitnan'));



