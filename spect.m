
%% 

spect_ch1_bs1=spectral(1).psd{1}(1:24,1:513,1:7); % cell array with spectral analysis for 
% Ch=Channel 1, bs=behavioural state 1,psd = power spectrum, indexes: time of the day (hours, not ZT!) 1:24,
% power spectrum 1:513, days 1:7
spect_ch1_bs2=spectral(1).psd{2}(1:24,1:513,1:7);
spect_ch1_bs3=spectral(1).psd{3}(1:24,1:513,1:7);
spect_ch2_bs1=spectral(2).psd{1}(1:24,1:513,1:7);
spect_ch2_bs2=spectral(2).psd{2}(1:24,1:513,1:7);
spect_ch2_bs3=spectral(2).psd{3}(1:24,1:513,1:7);

spectAllnumb(1,1,1:24,1:513,1:7)=spect_ch1_bs1;
spectAllnumb(1,2,1:24,1:513,1:7)=spect_ch1_bs2;
spectAllnumb(1,3,1:24,1:513,1:7)=spect_ch1_bs3;

spectAllnumb(2,1,1:24,1:513,1:7)=spect_ch2_bs1;
spectAllnumb(2,2,1:24,1:513,1:7)=spect_ch2_bs2;
spectAllnumb(2,3,1:24,1:513,1:7)=spect_ch2_bs3;

% Indexes of spectAllnumb
% 1: channel. it takes values 1, 2
% 2: behavioral state. 1:3
% 3: time of the day (not ZT!) 1:24
% 4: power spectra
% 5: day of recording

%% 
%%
spectDaysMean=mean(spectAllnumb,5,"omitnan");     % mean across 7 days per each subject
%spectHoursMean=mean(spectDaysMean,3,"omitnan");    % mean across 24 hours per each subject
spectHoursMean=squeeze(mean(spectDaysMean,3,"omitnan")); % as above but without singleton relatred to hours mean
%% 
%%

%f= 0:0.25:128 % frequency for plotting PSD. Frequency on X axis generally
%tmp= spectHoursMean(2,::); % temporary file to plot spectra over f ( frequency)
%always check in the workspace the dimension of the array. When you do a
%plot the dimensions have to be in the same order. If not, do the traspost
%of one of the array you will plot
% plot (f, tmp)

% the following lines has the purprose to create an array which
% contain spectDaysMean for all subjects cnt or Tilia ("totalCnt(4,:,:,:,:) 
load('spectAllnumb.mat') 
spectDaysMean=mean(spectAllnumb,5,"omitnan");  %mean of the all day
totalTilia(1,:,:,:,:)=spectDaysMean; % insert spectDaysMean in the array totalCnt for subect
%indicated in the first index

for i= 1:5
    meanH(i,:) = squeeze(mean(totalCnt(i,1,1,:,:),4,"omitnan"));
