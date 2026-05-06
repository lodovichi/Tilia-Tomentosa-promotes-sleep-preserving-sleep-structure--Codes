% compute Wilcoxon rank test between two sets of spectral data

% the array indexes of totalCntN and totalTiliaN are
% 1) animal number
% 2) Channel
% 3) state

wTest.p = zeros(2,3,513);
wTest.h = false(2,3,513);
for nCh=1:2
    for nState=1:3
        for freq=1:513
            arrayCnt = squeeze(totalCntN50(:,nCh,nState,freq));
            arrayTil = squeeze(totalTiliaN50(:,nCh,nState,freq));
            [wTest.p(nCh,nState,freq),wTest.h(nCh,nState,freq)]=...
                ranksum(arrayCnt,arrayTil);
        end
    end
end

            