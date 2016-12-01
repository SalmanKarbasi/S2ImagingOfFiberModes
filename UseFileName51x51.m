%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all; clear all;
N = 51*51; % number of sampled points
Nx = sqrt(N); 
Ny = Nx; 
tt=0; % index of the sample point
SumFshift = ones(1,1000); % 1000 is the size of Data points.
for ii=1:Nx
	for jj=1:Ny		
		Name1 = sprintf('%d', tt);
		Name = strcat(Name1,32,'*','.csv');
		%if (tt ==55)
		%	Name 
		%end
		d = dir(Name);
		%%%%%%%%%%
		%%%%%%%%%%
		Data1(tt+1,:,:) = dlmread(d.name,',',29,0);
		FData1 = fft(Data1(tt+1,:,2));
		Fshift(tt+1,:) = fftshift(FData1); 	
		SumFshift(1,:) = SumFshift(1,:) + abs(Fshift(tt+1,:));
		%%%%%%%%%%
		%%%%Reconstruct the image
		A1(ii,jj) = abs(Fshift(tt+1, 425)); % 501, the frequency at which we are
		A2(ii,jj) = abs(Fshift(tt+1, 440)); % 501, the frequency at which we are
		A3(ii,jj) = abs(Fshift(tt+1, 448)); % 501, the frequency at which we are
		A4(ii,jj) = abs(Fshift(tt+1, 467)); % 501, the frequency at which we are
		A5(ii,jj) = abs(Fshift(tt+1, 474)); % 501, the frequency at which we are
		A6(ii,jj) = abs(Fshift(tt+1, 501)); % 501,the frequency at which we are interested
		A7(ii,jj) = abs(Fshift(tt+1, 528)); % 501, the frequency at which we are
		A8(ii,jj) = abs(Fshift(tt+1, 535)); % 501, the frequency at which we are
		A9(ii,jj) = abs(Fshift(tt+1, 554)); % 501, the frequency at which we are
		A10(ii,jj) = abs(Fshift(tt+1, 562)); % 501, the frequency at which we are
		A11(ii,jj) = abs(Fshift(tt+1, 577)); % 501, the frequency at which we are
		%%%%%%%%%%
		tt = tt+1;
	end
end
figure(1); plot(SumFshift, 'Linewidth' ,2);
print('-depsc','-tiff','-r300','SumOfSpectrals')
%%%%%%
figure(2); surf(A1); shading interp; view([0,90]); axis tight;  axis square;
print('-depsc','-tiff','-r300','SurfPlotMode1'); 
daspect([2 2 1]); %changing the aspect ratio 
set(gca,'Position',[-0.1 .07 1.2 0.9])
%%%%%%
figure(2); surf(A2); shading interp; view([0,90]); axis tight;  axis square;
print('-depsc','-tiff','-r300','SurfPlotMode2'); 
daspect([2 2 1]); %changing the aspect ratio 
set(gca,'Position',[-0.1 .07 1.2 0.9])
%%%%%%
figure(2); surf(A3); shading interp; view([0,90]); axis tight;  axis square;
print('-depsc','-tiff','-r300','SurfPlotMode3'); 
daspect([2 2 1]); %changing the aspect ratio 
set(gca,'Position',[-0.1 .07 1.2 0.9])
%%%%%%
figure(2); surf(A4); shading interp; view([0,90]); axis tight;  axis square;
print('-depsc','-tiff','-r300','SurfPlotMode4'); 
daspect([2 2 1]); %changing the aspect ratio 
set(gca,'Position',[-0.1 .07 1.2 0.9])
%%%%%%
figure(2); surf(A5); shading interp; view([0,90]); axis tight;  axis square;
print('-depsc','-tiff','-r300','SurfPlotMode5'); 
daspect([2 2 1]); %changing the aspect ratio 
set(gca,'Position',[-0.1 .07 1.2 0.9])
%%%%%%
figure(2); surf(A6); shading interp; view([0,90]); axis tight;  axis square;
print('-depsc','-tiff','-r300','SurfPlotMode6'); 
daspect([2 2 1]); %changing the aspect ratio 
set(gca,'Position',[-0.1 .07 1.2 0.9])
%%%%%%
figure(2); surf(A7); shading interp; view([0,90]); axis tight;  axis square;
print('-depsc','-tiff','-r300','SurfPlotMode7'); 
daspect([2 2 1]); %changing the aspect ratio 
set(gca,'Position',[-0.1 .07 1.2 0.9])
%%%%%%
figure(2); surf(A8); shading interp; view([0,90]); axis tight;  axis square;
print('-depsc','-tiff','-r300','SurfPlotMode8'); 
daspect([2 2 1]); %changing the aspect ratio 
set(gca,'Position',[-0.1 .07 1.2 0.9])
%%%%%%
figure(2); surf(A9); shading interp; view([0,90]); axis tight;  axis square;
print('-depsc','-tiff','-r300','SurfPlotMode9'); 
daspect([2 2 1]); %changing the aspect ratio 
set(gca,'Position',[-0.1 .07 1.2 0.9])
%%%%%%
figure(2); surf(A10); shading interp; view([0,90]); axis tight;  axis square;
print('-depsc','-tiff','-r300','SurfPlotMode10'); 
daspect([2 2 1]); %changing the aspect ratio 
set(gca,'Position',[-0.1 .07 1.2 0.9])
%%%%%%
figure(2); surf(A11); shading interp; view([0,90]); axis tight;  axis square;
print('-depsc','-tiff','-r300','SurfPlotMode11'); 
daspect([2 2 1]); %changing the aspect ratio 
set(gca,'Position',[-0.1 .07 1.2 0.9])
%%%%%%



