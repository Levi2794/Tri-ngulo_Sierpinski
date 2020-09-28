clear all
close all
clc

%% Generamos un triangulo 

vertices_t = [[0;0] [10;0] [5;5]];

% Escojemos un punto aleatorio para generar el triangulo

punto = rand(1);
N = 100000;                     
puntos_guardados = zeros(2,N);

for i = 1:N
    
% Elejimos un vertice aleatorio

vertice_elejido = vertices_t(:,randi(3));

% Calculamos el punto medio del vertice del triangulo

punto = (vertice_elejido + punto)/2;
puntos_guardados(:,i) = punto;

end

% Desplegamos una pantalla con el triangulo generado

plot(puntos_guardados(1,:),puntos_guardados(2,:),'Red.','MarkerSize',2)



