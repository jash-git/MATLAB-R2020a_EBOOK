load noissin; 
whos
c = cwt(noissin,1��48,'db4');
c1 = cwt(noissin,1��48,'db4','plot');
c2 = cwt(noissin,2��2��128,'db4','plot');
