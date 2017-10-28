function count = countNext(matrix, a, b)
vector = matrix(:);
count = 0;
for i=1:length(vector)-1
    if (vector(i) == a)
        if (vector(i+1) == b)
            count = count+1;
        end
    end
end
end