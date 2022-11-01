function ORIEN = Orientation(Trans_Matrix)
ORIEN = zeros(1,3);
ORIEN(1,2) = atan2(-Trans_Matrix(3,1),sqrt((Trans_Matrix(3,2)^2)+(Trans_Matrix(3,3)^2)));
ORIEN(1,1) = atan2(Trans_Matrix(3,2)/cos(ORIEN(1,2)),Trans_Matrix(3,3)/cos(ORIEN(1,2)));
ORIEN(1,3) = atan2(Trans_Matrix(2,1)/cos(ORIEN(1,2)),Trans_Matrix(1,1)/cos(ORIEN(1,2)));
end
