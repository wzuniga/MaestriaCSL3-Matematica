% procedimiento seidel
function [Uij] = Seidel(Ax, Ay, Nx, Ny, Itmax, Uij)
%i, j, k;

for k = 2:Itmax
	for j = 2:Nx-1
		y = Ax + j*h;
		for i = 2:Nx-1
			x = Ax + i*h;
			v = U(i+1,j) + U(i-1,j) + U(i,j-1);
			%U(i,j) = (v - h^2*)/(4-h^2 f(x, y));
		end
	end
end

