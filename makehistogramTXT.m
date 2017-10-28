
function makehistogramTXT(a) 
          alf = cellstr((horzcat('A':'Z','a':'z'))');
          conv = cellfun(@uint16, alf); 
          graf = categorical(a,conv,alf);
          histogram(graf);
          xlim(alf);
end