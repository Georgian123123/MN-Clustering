% computes a clustering solution total cost
function cost = compute_cost_pc(points, centroids)
	cost = 0; 
	% TODO compute clustering solution cost
   for j = 1 : size(points, 1)
    for i = 1 : size(centroids, 1)
      y(1, i) = norm(centroids(i, :) - points(j, :));
    endfor
    %find the minimum which is a point from cluster
    [x, ix] = min(y);
    %add to cost
    cost += x;  
  endfor
end

