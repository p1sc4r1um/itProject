function mutual_information = inf(query, target, alf)
    minim = min(alf);
    mat = zeros(length(alf));
    entra = minLimit(query);
    entrb= minLimit(target);
    for i=1:length(query)
        mat(query(i)+1-minim,target(i)+1-minim) = mat(query(i)+1-minim,target(i)+1-minim) + 1;
    end
    totalmat = length(query);
    probXY = mat ./ totalmat; 
    probXY = nonzeros(probXY);
    [entrab] = -sum(probXY .* log2(probXY));
    mutual_information = entra+entrb-entrab;
end
