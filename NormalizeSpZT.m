
% normalize data in ZT day for Cnt or Tilia ( careful to which data set
% you are going to normalize

meanLFZTtilia = squeeze(mean(totalTiliaZTday(:,:,1,1:5),4));
for nMouse=1:5
    for nCh=1:2
        for nState=1:3
            totalTiliaNZTday(nMouse,nCh,nState,:) =...
                totalTiliaZTday(nMouse,nCh,nState,:)/meanLFZTtilia(nMouse,nCh);
        end
    end
end
