


meanLF = squeeze(mean(totalCntHours(:,:,1,1:5),4));
for nMouse=1:5
    for nCh=1:2
        for nState=1:3
            totalCntN(nMouse,nCh,nState,:) =...
                totalCntHours(nMouse,nCh,nState,:)/meanLFT(nMouse,nCh);
        end
    end
end



