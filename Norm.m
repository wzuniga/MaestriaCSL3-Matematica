function norm=Norm(u,nx,ny)
  t = 0;
  for i=1:nx
    for j=1:ny
      t = t + pow2(u(i,j));
    end 
  end 
  norm = sqrt(t);
end 
