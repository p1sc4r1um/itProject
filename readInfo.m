function a = readInfo(file) 
    [~,~,ext] = fileparts(file);
    if(ext == '.bmp')
        a = imread(file);
    elseif(ext == '.wav')
        [a,~] = audioread(file);
    elseif(ext == '.txt')
        ID = fopen(file,'r');
        c =  fscanf(ID,'%s ');
        c = erase(c,',');
        c = erase(c,'.');
        a = [];
        for k = 1:length(c)
            a = [a,c(k)];
        end
         a = uint16(a);
    end
end