function huffman(a)
    %b={sort(unique(a)) countmember(sort(unique(a)),a)};
    %[x,y] = histcounts(a);    
    %b={sort(unique(a)) countmember(sort(unique(a)),a)};
    %disp(b{1});
    %disp(b{2});
    %prob = b{2}/sum(b{2});
    %disp(prob);
    %[x,y]= huffmandict(b{1},n);
    %a = reshape(a,[length(a),1]);
    %count = hist(double(a));
    %disp(count);
    %bar(count);
    a = a(:);
    alph = sort(unique(a));
    count = zeros(length(alph),1);
    for i=1:length(alph)
       count(i) = sum(a == alph(i));
    end
    bar(count);
    n = hufflen(count);
    disp(n);
end