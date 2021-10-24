% computes the NC centroids corresponding to the given points using K-Means
function centroids = clustering_pc(points, NC)
	centroids = [];
  %Set matrix which is a copy for centroids.
  matrix(1 : NC, :) = 0;
	% TODO K-Means code
  %create a perm from lines 1 to all points's line
  x = randperm(size(points, 1));
  %take random numbers
  out = x(1 : NC);
  %setting centroids.
    for i = 1 : NC
    centroids(i, :) = points(out(1, i), :);
   endfor
  %Find the centroids & recentrate centroids.
  id = 0;
  while id == 0
  y(1, 1 : NC) = 0;
  X(1, 1 : NC) = 0;
  Y = X;
  Z = X;
  count(1, 1 : NC) = 0;
  matrix = centroids;
  for j = 1 : size(points, 1)
    for i = 1 : NC
      y(1, i) = norm(centroids(i, :) - points(j, :));
    endfor
    [x, ix] = min(y);
    X(1, ix) += points(j, 1);
    Y(1, ix) += points(j, 2);
    Z(1, ix) += points(j, 3);
    count(1, ix)++;
  endfor
   for i = 1 : NC
      centroids(i, 1) = X(1, i) / count(1, i);
      centroids(i, 2) = Y(1, i) / count(1, i);
      centroids(i, 3) = Z(1, i) / count(1, i);
   endfor
    if centroids == matrix id = 1;
    endif
    
  endwhile
endfunction;
