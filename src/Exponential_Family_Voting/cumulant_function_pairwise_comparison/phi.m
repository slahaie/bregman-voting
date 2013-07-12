function [phi_x] = phi(x)

n = size(x,2);
phi_x = zeros(1,n*(n-1)/2);
cnt = 1;
for i=1:n
    for j=i+1:n
        if(x(i)<x(j))
            phi_x(cnt) = 1;
            cnt = cnt+1;
        end
    end
end

end