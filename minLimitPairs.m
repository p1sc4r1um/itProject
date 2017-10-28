function x = minLimitPairs (N)
    %a = length(N);
    N(N==0) = [];
%     for i=1:a
%         if(N(i) ~= 0)
%            x = x - (N(i)/sum(N))*log2(N(i)/sum(N)); 
%         end
%     end
    x = -sum((N./sum(N)).*log2((N./sum(N))));
end