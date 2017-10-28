% matrix1 = matrix('kid.bmp');
matrix2 = matrix('homer.bmp');
% matrix3 = matrix('homerBin.bmp');
% matrix4 = matrix('guitarSolo.wav');
%matrix5 = matrix('english.txt');

%makehistogram(matrix1);
% makehistogram(matrix2);
% makehistogram(matrix3);
 %makehistogram(matrix4);

% x = minLimit(matrix1);
% disp(x);
% x = minLimit(matrix2);
% disp(x);
% x = minLimit(matrix3);
% disp(x);
% x = minLimit(matrix4);
% disp(x);
% x = minLimit(matrix5);
% disp(x);
hufflen(matrix2);
function a = matrix(file)
[~,~,z] = fileparts(file);
if (z == '.bmp')
    a = imread(file);
elseif (z == '.wav')
    [a,~] = audioread(file);
elseif (z == '.txt')
    ID = fopen(file,'r');
    c =  fscanf(ID,'%s ');
    c = erase(c,',');
    c = erase(c,'.');
end
end
function makehistogram (matrix)
    histogram(matrix);
    ylim auto;
    xlim auto;
end
 function x = minLimit (matrix)
 [N,edges] = histcounts(matrix);
 x = 0;
 y = sum(N); 
 a = size(N);
 %disp(N);
 N(N==0) = [];
 x =-sum((N./y).*log2(N./y));
 end
 function hufflen(a)
    %b={sort(unique(a)) countmember(sort(unique(a)),a)};
    %[x,y] = histcounts(a);    
    b={sort(unique(a)) countmember(sort(unique(a)),a)};
    %[freqOcurr,edges] = histcounts(a);
    %disp(b{1});
    %disp(b{2});
    disp(b{2});
    prob = b{2}/sum(b{2});
    dict = huffmandict(b{1},prob);
    %comp = huffmanenco(b,dict);
end


function COUNT = countmember(A,B)
    narginchk(2,2) ;
    if ~isequal(class(A), class(B))
        error('Both inputs should be of the same class.') ;
    end

    if isempty(A) || isempty(B)
        COUNT = zeros(size(A)) ;
    else    
        [AUnique, ~, j] = unique(A(:)) ;
        [~, Loc] = ismember(B, AUnique) ;
        N = histc(Loc(:), 1:length(AUnique)) ;
        COUNT = reshape(N(j),size(A)) ;
    end
end