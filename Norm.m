function norm=Norm(u,nx,ny)
  t = 0;
  for(i = 1;i<=columns(nx);i++)
    for(j = 1;j<=colums(ny);j++)
      t = t + pow2(u(i,j));
    end for 
  end for 
  norm = sqrt(t);
end 
