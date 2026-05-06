% normalize data in ZT night

meanLFZTtilNight = squeeze(mean(totalTiliaZTnight(:,:,1,1:5),4));
for nMouse=1:5
    for nCh=1:2
        for nState=1:3
            totalTiliaNZTnight(nMouse,nCh,nState,:) =...
                totalTiliaZTnight(nMouse,nCh,nState,:)/meanLFZTtilNight(nMouse,nCh);
        end
    end
end