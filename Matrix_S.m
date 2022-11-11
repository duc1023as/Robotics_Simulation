function result = Matrix_S(u,p)
%     result = ones(3,1);
    syms result;
    result(1) = -u(3)*p(2)+u(2)*p(3);
    result(2) = u(3)*p(1)-u(1)*p(3);
    result(3) = -u(2)*p(1)+u(1)*p(2);
end