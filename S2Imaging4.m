%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all; 
N = 51*51; % number of sampled points
Nx = sqrt(N); 
Ny = Nx; 
% 0 16075 17775.csv
% 1 16075 17780.csv

x0 = 16075; 
y0 = 17775; 
dx = 5; 
dy = dx; 
tt=0; % index of the sample point
SumFshift = ones(1,1000); % 1000 is the size of Data points.
for ii=1:Nx
	Name2 = sprintf('%d', x0); 
	for jj=1:Ny		
		Name1 = sprintf('%d', tt);
		Name3 = sprintf('%d', y0); 
		Name = strcat(Name1, 32, Name2, 32, Name3,'.csv'); 
		%if (tt ==55)
		%	Name 
		%end
		%%%%%%%%%%
		%%%%%%%%%%
		try
		Data1(tt+1,:,:) = dlmread(Name,',',29,0);
		catch err
	        if ~exist(Name,'file')
			Data1(tt+1, :, :) = Data1(tt, :, :); 
		end
		end
		FData1 = fft(Data1(tt+1,:,2));
		Fshift(tt+1,:) = fftshift(FData1); 	
		SumFshift(1,:) = SumFshift(1,:) + abs(Fshift(tt+1,:));
		%%%%%%%%%%
		%%%%%%%%%%	
		%%%%Reconstruct the image
		A(ii,jj) = abs(Fshift(tt+1, 501)); % 501, the frequency at which we are interested 
		%%%%%%%%%%
		y0 = y0 + (-1)^(ii-1) * dy;  
		tt = tt+1;
	end
	x0 = x0 + dx;
	y0 = y0 + (-1)^(ii) * dy;  	
end
figure; plot(SumFshift, 'Linewidth' ,2);
figure; surf(A); shading interp; view([0,90]);

break;	
%%%% Repository 
Data1 = dlmread('100 16300 18000.csv',',',29,0);
semilogy(Data1(:,1),Data1(:,2),'Linewidth',2); 
s = size(Data1);
df = 1./(max(Data1(:,1))-min(Data1(:,1))); % 1/nm 
Fx = 0:df:(s(1)-1)*df;
FData1 = fft(Data1(:,2));
Fshift = fftshift(FData1); 
figure; plot(Fx, abs(Fshift), 'Linewidth', 2);
