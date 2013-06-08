n = 4;
base = zeros(1,n);
for i=1:n
    base(i) = i;
end
P = perms(base);
nf = size(P,1);

cumulant_base = cumulant_mallows(n,phi(base));
for i=1:nf
    if(cumulant_mallows(n,phi(P(i,:))) ~= cumulant_base)
        sprintf('Something is wrong\n');
    end
end

theta = rand(1,n*(n-1)/2);
cumulant_theta = cumulant_mallows(n,theta);
display(cumulant_base);
display(cumulant_theta);