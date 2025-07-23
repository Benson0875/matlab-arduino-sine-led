delete(serialportfind);
port = "COM6";       
baud = 9600;
bufferSize = 300;    
pauseTime = 0.01;    
step = 0;            


s = serialport(port, baud);
configureTerminator(s, "LF");
flush(s);


originalBuf = zeros(1, bufferSize);
invertedBuf = zeros(1, bufferSize);
h = figure;
originalLine = plot(originalBuf, 'b-', 'LineWidth', 2); hold on;
invertedLine = plot(invertedBuf, 'r--', 'LineWidth', 2);
ylim([0 255]);
xlabel("時間（滑動窗口）");
ylabel("值 (0~255)");
legend("原始 sin 波", "Arduino 回傳反轉波");
title("即時連續 sin 波與 Arduino 回傳圖");
grid on;


while ishandle(h)  

    angle = mod(step, 2*pi); 
    duty = round((sin(angle) + 1) / 2 * 255);  

    writeline(s, num2str(duty));
    inverted = str2double(readline(s));


    originalBuf = [originalBuf(2:end), duty];
    invertedBuf = [invertedBuf(2:end), inverted];


    set(originalLine, 'YData', originalBuf);
    set(invertedLine, 'YData', invertedBuf);
    drawnow;


    step = step + 0.1; 
    pause(pauseTime);  
end