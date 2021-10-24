function view_cost_vs_nc(file_points)
	% TODO compute cost for NC = [1..10] and plot 
  %set vector for cost
  cost(1, 1 : 10) = 0;
  %read points matrix
  points = dlmread(file_points, ' ', 5, 0);
  %take the centroids and put every max cost
  for NC = 1 : 10
    centroids = clustering_pc(points, NC);
    cost(1, NC) = compute_cost_pc(points, centroids);
  endfor
  %plotting cost
  plot(cost);
end

