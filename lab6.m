%matrix for system

A = [ 2 -14 5
      5 6 -2
      1 5 3 ];
  
  b = [52; 2; 17];
  
  X1 = inv(A)*b;
  %X2 = b/A;
  %left division
  X3 = A\b;
  X1;
  %x2
  X3;
  
  fprintf('a: %f, b: %f, c: %f',X1(1),X1(2),X1(3))
  fprintf('b is %f',X1(2))
  
  fprintf('a: %f, b: %f, c: %f',X3(1),X3(2),X3(3))
  fprintf('b is %f',X3(2))
  
  %part2
  
  result = findAllX(0);
  
  fprintf('x1: %f   x2: %f   x3: %f',result(1),result(2),result(3))

  Y12 = zeros(1,1);
  for i = 1:12
      Y12(i) = i;
  end
  res = @(Y)findX1(Y);
  
  X = linspace(0,12,1);
  
  for i = 1:12
      X(i) = res(i);
  end
  
  figure(1)
  plot(Y12,X)
  grid on
  title('Graph of x1 vs Y using plot')
  xlabel('Y')
  ylabel('x1')
  
  figure(2)
  fplot(res,[0 12])
  grid on
  title('Graph of x1 vs Y using fplot')
  xlabel('Y')
  ylabel('x1')
  
  min = fminbnd(res,0,12);
  g = @(Y)res;
  