function [sum] = cumulant_mallows(n,theta)

base = zeros(1,n);
for i=1:n
    base(i) = i;
end
P = perms(base);
nf = size(P,1);

sum = 0;
for ind=1:nf
    curr = P(ind,:);
    phi_curr = phi(curr);
    sum = sum + phi_curr*theta';
end

end