clear ;
clc ;
close all ;

% plotATM('100m')

%Detrend
% t = 1:1800 ;
% load('100m.mat') ;
% half = val(t) ;
% detrend = detrend(half) ;
% 
% hold on
% plot(t, half, 'r') ;
% plot(t, detrend, 'b') ;
% 
% legend('Original', 'Detrended', 'Location', 'northwest') ;
% xlabel('Time (sec)') ;

%Square
% t = 1:1800 ;
% load('100m.mat') ;
% half = val(t) ;
% square = half.^2 ;
% 
% hold on
% plot(t, half, 'r') ;
% plot(t, square, 'b') ;
% 
% legend('Original', 'Square', 'Location', 'northwest') ;
% xlabel('Time (sec)') ;


%FFT
% t = 1:1800 ;
% load('100m.mat') ;
% half = val(t) ;
% fft = real(fft(half)) ;
% real_fft = real(fft) ;
% 
% hold on
% plot(t, half, 'r') ;
% plot(t, real_fft, 'b') ;
% 
% legend('Original', 'Fast Fourier transform', 'Location', 'northwest') ;
% xlabel('Time (sec)') ;

%Detrend+Thresold
% t = 1:21600 ;
% load('100m.mat') ;
% half = val(t) ;
% detrend = detrend(half) ;
% thresholdedSignal = detrend > 100;
% % plot(t, thresholdedSignal, 'r') ;
% 
% count = 0 ;
% i = 1 ;
% found = false ;
% while i < numel(thresholdedSignal)
%     if found == false
%         if thresholdedSignal(i) == 0
%             if thresholdedSignal(i+1) == 1
%                 found = true ;
%             end
%         end
%     else
%          if thresholdedSignal(i+1) == 0
%              count = count + 1 ;
%              found = false ;
%          end
%     end
%     i = i + 1 ;        
% end
% 
% hold on
% plot(t, detrend, 'r') ;
% plot(t, yline(100), 'b') ;
% 
% legend('Original', 'Thresold', 'Location', 'northwest') ;
% xlabel('Time (sec)') ;

%findPeak()
% t = 1:650000 ;
% load('100m.mat') ;
% half = val(t) ;
% detrend = detrend(half) ;
% [~, pks] = findpeaks(detrend,'MinPeakHeight',100);
% size(pks)
% 
% plot(t,detrend,t(pks),detrend(pks),'r*')
% legend('Original', 'Peak', 'Location', 'northwest') ;
% xlabel('Time (sec)') ;

%QRS
% Outputs
% qrs_amp_raw : amplitude of R waves amplitudes
% qrs_i_raw : index of R waves
% delay : number of samples which the signal is delayed due to the filtering

% t = 1:21600 ;
% load('100m.mat') ;
% half = val(t) ;
% detrend = detrend(half) ;
% [qrs_amp_raw,qrs_i_raw,delay] = pan_tompkin(detrend, 200) ;

% Frequency Analysis
% t = 1:1800 ;
% load('100m.mat') ;
% sick = val(t) ;
% detrend_sick = detrend(sick) ;
% 
% t2 = 1:1800 ;
% load('100m (0).mat') ;
% normal = val(t2) ;
% detrend_normal = detrend(normal) ;
% %detrend_normal = circshift(detrend_normal, -100) ;
% 
% hold on
% plot(t, detrend_sick, 'r') ;
% plot(t2, detrend_normal, 'b') ;
% legend('Arrhythmia', 'Normal', 'Location', 'northwest') ;
% xlabel('Time (sec)') ;

%RR-Interval
t = 1:1800 ;
load('100m.mat') ;
half = val(t) ;
detrend = detrend(half) ;
[~, pks] = findpeaks(detrend,'MinPeakHeight',100);
size(pks) ;

plot(t,detrend,t(pks),detrend(pks),'r*')
legend('Original', 'Peak', 'Location', 'northwest') ;
xlabel('Time (sec)') ;





