function arrayPares = pairs(matrix)
vector = sort(unique(matrix));
vector = vector(:);
aux = 1;
a = length(vector)*length(vector);
arrayPares = zeros(a,1);
for i=1:size(vector)
    for j=1:size(vector)
        arrayPares(aux) = countNext(matrix, vector(i), vector(j));
        aux = aux + 1;
    end
end

entropy = minLimitPairs(arrayPares);
disp('entropy=');
disp(entropy);
 
ylim ([0,100]);
bar(arrayPares);
ylim ([0,100]);
 
 
end