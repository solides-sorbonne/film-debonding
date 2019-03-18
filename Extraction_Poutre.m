
%%% Extraction de l'image
cd('/Users/lorenzo/Desktop/L3 Projet')
A = imread('Photo_Pelage.jpg');
B = rgb2gray(A);
C = single(B);
Cmin = min(min(C));
Cmax = max(max(C));
D = (C - Cmin)/(Cmax - Cmin)*256;
figure;image(D)
colormap(gray(256));

g = ginput(2);
Deltay = g(2,2) - g(1,2);
Deltax = g(2,1) - g(1,1);
theta = atan(Deltay/Deltax)*180/pi
E = imrotate(D,theta);
figure;image(E);
colormap(gray(256));

% Calcul de la taille du pixel
f = ginput(2);
y1 = f(1,2);
y2 = f(2,2);
dy = y2 - y1;
h = 8e-3;
pas = h/dy;

% Extraction de la forme de la poutre
n = 10;
data = ginput(n);
x = data(:,1)*pas;
y = -1*data(:,2)*pas;
figure;plot(x,y,'o')










