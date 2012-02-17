


% Plots the filter etimated sensor biases vs. the original data (call the
% main function first)

global  fs ba bg bm timestamps_IMU timestamps_WASP nS nS_filter actual_ba actual_bg fsc ws wsc

scrsz = get(0,'ScreenSize'); % Full screen
figure('OuterPosition',[1 1 scrsz(3)/2 scrsz(4)]);


subplot(2, 1, 1), plot(timestamps_WASP(1:nS_filter),ba(:,1:nS_filter)), grid
xlabel('time in secs'),
ylabel('KF Accel bias mg'), legend('x','y','z');

subplot(2, 1, 2), plot(timestamps_WASP(1:nS_filter),bg(:,1:nS_filter)), grid
xlabel('time in secs'),
ylabel('Gyro bias deg/s') , legend('R','P','Y');

% subplot(3, 1, 3), plot(timestamps_WASP(1:nS_filter),bm(:,1:nS_filter)), grid
% xlabel('time in secs'),
% ylabel('KF Mag bias mGauss'), legend('x','y','z');




