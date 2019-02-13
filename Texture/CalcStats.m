function stats = CalcStats(fQuery,fTarget) 
%%
% Original Author:     MOTAZ ALFARRAJ 
% Last Updated by:     Mohit Prabhushankar
% PI:                  Ghassan AlRegib
% Version:             2.0
% Last updated:        09/12/2017
% Email:               mohit.p@gatech.edu
%% Validating inputs 

stats = 1- norm(fQuery-fTarget,5)./norm(fQuery+fTarget,5);

end