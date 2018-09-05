% procedimiento seidel
function U = Seidel(Ax, Ay, Nx, Ny, h, Itmax, U)
%i, j, k;

for k = 1:Itmax
	for j = 2:Nx-1
		y = Ax + j*h;
		for i = 2:Nx-1
			x = Ax + i*h;
			v = U(i+1,j) + U(i-1,j) + U(i,j+1) + U(i,j-1);
			U(i,j) = (v - pow2(h)*g(x,y))/(4-pow2(h)*f(x, y));
		end
	end
end

