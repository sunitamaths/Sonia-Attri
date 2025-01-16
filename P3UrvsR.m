R=[0:0.001:2];
Z=0.5;
nu=0.2;gamma=3.2453;beta=2.9247;H=0.8;
delta=3-4.*nu;
delta2=1-2.*nu;
A=delta+(1./delta);
B=4./delta;
C=(((delta-1).^2)./delta)+(delta./(delta+1).^2)+1;
I1=delta.*(Z.*R./(Z.^2+R.^2).^(3/2)...
 -delta2.*((Z.^2+R.^2).^(1/2)-Z)./R.*(Z.^2+R.^2).^(1/2));
A1=Z+2.*H;
I2=3.*delta.*B.*H.^2.*Z.*R.*(R.^2-4.*A1.^2)./(A1.^2+R.^2).^(7/2)+....
3.*H.*R.*A1.*(delta.*delta2.*B.*H-2.*(Z-H))./(A1.^2+R.^2).^(5/2)+....
(Z.*(1-delta.*A)+2.*H.*delta2).*R./(A1.^2+R.^2).^(3/2)+....
delta.*delta2.*(1+A).*((A1.^2+R.^2).^(1/2)-A1)./R.*(A1.^2+R.^2).^(1/2);
A2=Z+4.*H;
I3=-30.*R.*A2.*B.*H.^3.*(Z-H).*(3.*R.^2-4.*A2.^2)./(A2.^2+R.^2).^(9/2)+....
3.*(2.*delta2.*H+Z).*B.*H.^2.*R.*(R.^2-4.*A2.^2)./(A2.^2+R.^2).^(7/2)+....
3.*R.*H.*A2.*(2.*A.*(Z-H)-delta.*delta2.*B.*H)./(A2.^2+R.^2).^(5/2)-...
(2.*H.*delta2+Z).*A.*R./(A2.^2+R.^2).^(3/2)-...
delta.*delta2.*A.*((A2.^2+R.^2).^(1/2)-A2)./R.*(A2.^2+R.^2).^(1/2);
A3=Z+gamma.*H;
I4=delta.*(-3.*beta.*H.^2.*Z.*R.*(R.^2-4.*A3.^2)./(A3.^2+R.^2).^(7/2)-....
3.*beta.*H.^2.*R.*delta2.*A3./(A3.^2+R.^2).^(5/2)+....
C.*Z.*R./(A3.^2+R.^2).^(3/2)-...
C.*delta2.*((A3.^2+R.^2).^(1/2)-A3)./R.*(A3.^2+R.^2).^(1/2));
A4=Z+(gamma+2).*H;
I5=30.*beta.*H.^3.*(Z-H).*(3.*R.^2-4.*A4.^2).*R.*A4./(A4.^2+R.^2).^(9/2)-....
3.*(2.*delta2.*H+Z).*beta.*H.^2.*R.*(R.^2-4.*A4.^2)./(A4.^2+R.^2).^(7/2)+....
3.*H.*(delta.*delta2.*beta.*H-2.*C.*(Z-H)).*R.*A4./(A4.^2+R.^2).^(5/2)+...
(2.*H.*delta2+Z).*C.*R./(A4.^2+R.^2).^(3/2)+...
delta.*delta2.*C.*((A4.^2+R.^2).^(1/2)-A4)./R.*(A4.^2+R.^2).^(1/2);
A5=2.*H-Z;
I6=-6.*H.*(Z-H).*R.*A5./(A5.^2+R.^2).^(5/2)-...
(2.*H.*delta2+Z).*R./(A5.^2+R.^2).^(3/2)+....
delta.*delta2.*((A5.^2+R.^2).^(1/2)-A5)./R.*(A5.^2+R.^2).^(1/2);
A6=4.*H-Z;
I7=-30.*B.*H.^3.*(Z-H).*R.*A6.*(3.*R.^2-4.*A6.^2)./(A6.^2+R.^2).^(9/2)-....
3.*(2.*delta2.*H+Z).*B.*H.^2.*R.*(R.^2-4.*A6.^2)./(A6.^2+R.^2).^(7/2)+....
3.*H.*(2.*A.*(Z-H)-delta.*delta2.*B.*H).*R.*A6./(A6.^2+R.^2).^(5/2)+...
(Z.*(A-delta)+2.*H.*delta2.*A).*R./(A6.^2+R.^2).^(3/2)-...
delta.*delta2.*(1+A).*((A6.^2+R.^2).^(1/2)-A6)./R.*(A6.^2+R.^2).^(1/2);
A7=6.*H-Z;
I8=delta.*(-3.*B.*H.^2.*Z.*R.*(R.^2-4.*A7.^2)./(A7.^2+R.^2).^(7/2)+....
3.*delta2.*B.*H.^2.*R.*A7./(A7.^2+R.^2).^(5/2)+A.*Z.*R./(A7.^2+R.^2).^(3/2)...
+A.*delta2.*((A7.^2+R.^2).^(1/2)-A7)./R.*(A7.^2+R.^2).^(1/2));
A8=(gamma+4).*H-Z;
I9=delta.*(-3.*beta.*H.^2.*Z.*R.*(R.^2-4.*A8.^2)./(A8.^2+R.^2).^(7/2)+....
3.*delta2.*beta.*H.^2.*R.*A8./(A8.^2+R.^2).^(5/2)+....
C.*Z.*R./(A8.^2+R.^2).^(3/2)+...
C.*delta2.*((A8.^2+R.^2).^(1/2)-A8)./R.*(A8.^2+R.^2).^(1/2));
A9=(gamma+2).*H-Z;
I10=-30.*R.*A9.*beta.*H.^3.*(Z-H).*(3.*R.^2-4.*A9.^2)./(A9.^2+R.^2).^(9/2)-....
3.*(2.*delta2.*H+Z).*beta.*H.^2.*R.*(R.^2-4.*A9.^2)./(A9.^2+R.^2).^(7/2)+....
3.*H.*R.*A9.*(2.*(Z-H).*C-beta.*delta.*delta2.*H)./(A9.^2+R.^2).^(5/2)+...
(2.*H.*delta2+Z).*C.*R./(A9.^2+R.^2).^(3/2)-...
delta.*delta2.*C.*((A9.^2+R.^2).^(1/2)-A9)./R.*(A9.^2+R.^2).^(1/2);
u=(I1+I2+I3+I4+I5+I6+I7+I8-I9-I10)./4;
Ur=real(u);
XX=[R;Ur];
fid=fopen('F8.txt','wt');
fprintf(fid,'%-10.6f %-10.6f \n',XX);
fclose(fid);
% subplot(3,2,1)
%       plot(X,SIGMA11)
%      hold on
% plot(X,SIGMA12)
% hold on
% subplot(3,2,2)
   plot(R,Ur)
   xlabel('R'); ylabel('Dimensionless radial displacement U_r');
    hold on
