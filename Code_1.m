%Range calculator
%This is is founf by sendind out a linear chirp wave which changes in
%frequency over time 
%The equation of the wave is Vin(t)=Acos(wt+at^2)
%The reflected wave will then be subjected to mising and an LPF with a resulting wave
%of Vlpf = 0.5*A^(2)*cos(2atT+wT-aT^(2)), where T is tau, the time delay
%the beating frequency is found by taking the fourrier of Vlpf
% which is 2*pi*fbeat = 2aT therefore fbeat = aT/pi

alpha = 1; % What is the value of this parameter?
tau = 1; %This is the time dealy how do I get this information?
c = 3e8; %approximate speed of light in m/s

s = alpha/pi; %rate of change of instantaneous frequency
fbeat = (alpha*tau)/pi; %the beating frequency
range = (fbeat*c)/(2*s); %the range
range_simple = tau*c/2; %This is the simplified equation, as alpha and pi cancel out
%%I am now left with the question of how do I get the time delay
%%information from the system
%%creating a simulation will probably be the next step, I believe


%%What I need to do is find a way to compare Vin to Vlpf - we are doing
%%that with the mixer - the mixer will be fed to the computer the computer
%%will receive Vlpf I need to fourier trasnform that wave - 

received_frequency = fft(Vlpf); % something like this will need to be obtained, this will get me angular frequency
