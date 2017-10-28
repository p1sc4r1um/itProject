function array = ex6a(query, target, alf, step)
    array = zeros(floor((length(target)-length(query)+1)/step), 1);
    j = 1;
    for i=1:step:length(target)-length(query)+1
        array(j) = inf(query, target(i:i+length(query)-1), alf);
        j = j+1;
    end
end