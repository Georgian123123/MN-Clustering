% outputs a graphical representation of the clustering solution
function view_clusters(points, centroids)
  %took a vector for id and a vector which counts the points for clusters
   count(1 : size(centroids, 1)) = 0;
   id(1 : size(centroids, 1)) = 1;
  %find number of points
   for i = 1 : length(points)
     for j = 1 : size(centroids, 1)
        y(1, j) = norm(points(i, :) - centroids(j, :));
     endfor
     [x, ix] = min(y);
     count(ix)++;
   endfor
   %set vectors where i'll put the points
   row = max(count);
   X = zeros(row, size(centroids, 1));
   Y = X;
   Z = X;
   %put the points
   for i = 1 : length(points)
     for j = 1 : size(centroids, 1)
       y(1, j) = norm(points(i, :) - centroids(j, :));
     endfor
     [x, ix] = min(y);
     X(id(ix), ix) = points(i, 1);
     Y(id(ix), ix) = points(i, 2);
     Z(id(ix), ix) = points(i, 3);
     id(ix)++;
   endfor
   %plot the points
   cul = 0;
   for i = 1 : size(centroids,1)
      scatter3(X(1 : count(i), i), Y(1 : count(i), i), Z(1 : count(i), i), [],
      [cul, cul, 0]);
      cul += 0.5;
      hold on;    
    endfor
    
hold off;
end