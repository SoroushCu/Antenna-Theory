%Antenna Theory 1 - Final Project
clc
clear all
theta = -pi:0.01:pi;
phi = [0,pi/2,pi];
N = [2,4,8,16];
kd = [pi/8, pi/4, pi/2];
choice = input('N  =  (2 4 8 16)\n');
if choice==2
prefix = "N2";
I1 = ones(1,N(1));
I2 = zeros(1,N(1));
I3 = zeros(1,N(1)); 
for i=1:length(I2)
    I2(i) = 2*i - 1;
end
for i=1:length(I3)
    if rem(i-1,2)==0
        I3(i) = 1;
    end
    if rem(i-1,2)~=0
       I3(i) = 1j;
    end
end
end
if choice==4
prefix = "N4";
I1 = ones(1,N(2));
I2 = zeros(1,N(2));
I3 = zeros(1,N(2)); 
for i=1:length(I2)
    I2(i) = 2*i - 1;
end
for i=1:length(I3)
    if rem(i-1,2)==0
        I3(i) = 1;
    end
    if rem(i-1,2)~=0
       I3(i) = 1j;
    end
end
end
if choice==8
prefix = "N8";
I1 = ones(1,N(3));
I2 = zeros(1,N(3));
I3 = zeros(1,N(3)); 
for i=1:length(I2)
    I2(i) = 2*i - 1;
end
for i=1:length(I3)
    if rem(i-1,2)==0
        I3(i) = 1;
    end
    if rem(i-1,2)~=0
       I3(i) = 1j;
    end
end
end
if choice==16
prefix = "N16";
I1 = ones(1,N(4));
I2 = zeros(1,N(4));
I3 = zeros(1,N(4)); 
for i=1:length(I2)
    I2(i) = 2*i - 1;
end
for i=1:length(I3)
    if rem(i-1,2)==0
        I3(i) = 1;
    end
    if rem(i-1,2)~=0
       I3(i) = 1j;
    end
end
end
Itot = [I1;I2;I3];
%To have all the plots in its entirity, we shall use for loops.
fig = 1;
  for i = 1:3
      for j = 1:3
          for k = 1:3
              Pattern = RadiationPattern( Itot(i, :),kd(j),theta,phi(k),length(Itot(i, :)));
              figsave = figure(fig);
              polarplot(theta,abs(Pattern));
              dir = Directivity(kd(j),Itot(i, :),length(Itot(i, :)));
              dir = double(vpa(dir));
              title("dist = $\lambda$/" + num2str(1/kd(j)*2*pi) + " ,$\varphi$ = " + num2str(phi(k))+ ", DirectivityMax = " + num2str(dir),'interpreter', 'latex')
              figsave.Visible = 'off';
              saveas(figsave,strcat(prefix,num2str(fig)),'jpg');
              fig = fig+1;

          end
      end
  end



% Pattern = RadiationPattern(I3,kd(3),theta,phi(3),N(3));
% polarplot(theta,abs(Pattern))
% %dir = Directivity(kd(3),I1,N(1));
% %disp('The Directivity is : ')
% %disp(vpa(dir))
