function u = Eliptico()
  #integer
  #i,j;
  n_x = 8;
  n_y = 8;
  itmax = 20;
  #real
  #h,x,y;
  a_x = 0.0;
  b_x = 1.0;
  a_y = 0.0;
  b_y = 1.0;
  h = (b_x-a_x)/n_x;
  #real array
  u = zeros(n_x,n_y);
  
  for j = 1:n_y
    printf("There are %d horses\n", 1);
    y = a_y + j*h;
    #u(0:j) = bndy(a_x, y);
    #u(n_x, j) = bndy(b_x, y);
   end
   for i = 1:n_x
    x = a_x + i*h;
    #u(i:0) = bndy(x, a_y);
    #u(i, n_y) = bndy(x, b_y);
   end
  for j = 2:n_y-1
    y = a_y + j*h;
    for i = 2:n_x-1
      x = a_x + i*h;
      #u(i,j) = ustart(x,y);
    end  
  end
  #output
  #u = seidel(a_x, a_y, n_x, n_y, h, itmax, u);
  #output
  for j = 1: n_y
    y = a_y + j * h;
    for i = 1:n_x
      x = a_x + i * h;
      #u(i,j) = |True_Solution(x, y) - u(i,j)|;
    end
  end
  
  
  