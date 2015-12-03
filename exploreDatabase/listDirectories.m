% LIST DIRECTORIES OF PATIENTS WITH SPECIFIC CHARACTERISTICS
% The output can be used as parameters for the processing functions. For
% example:
%    convertSpectralis(fullfile(topdir,todo.convert));

if ~ispc
    if ismac
        topdir = '/Volumes/';
    else
        topdir='/srv/samba/';
    end
else

    disp('Error: Set topdir variable. ~Line 42')
%     topdir='??????';
    return

end

%%% FOR A SET OF CONDITIONS
% groups = {'Normal';...
%           'Early AMD';...
%           'Dry AMD';...
%           'Wet AMD';...
%           'Geographic Atrophy';...
%           'Suspect Glaucoma';...
%           'OAG';'Bleb';...
%           'OHT';...
%           'Uveitis';...
%           'Precoce'};

%%% FOR INDIVIDUAL CONDITIONS
% groups = {'Normal'};
% groups = {'Early AMD'};
% groups = {'Dry AMD'};
% groups = {'Wet AMD'};
% groups = {'Geographic Atrophy'};
% groups = {'Suspect Glaucoma'};
% groups = {'OAG'};
% groups = {'Bleb'};
% groups = {'OHT'};
% groups = {'Precoce'};
% groups = {'Uveitis'};

groups = [];

%%% FOR A SET OF STUDIES
% studies   = {'Choroidal Mapping';...
%              'Optic Nerve Head';...
%              'Rigidity'};

%%% FOR INDIVIDUAL STUDIES
studies   = {'Choroidal Mapping'}; 
% studies   = {'Rigidity'}; 


reproducibility = '';

[todo, has, msks] = getDirectories(topdir,groups,studies,reproducibility);


disp(['Has RawIm:    ' num2str(numel(has.RawIm))])
disp(['Has Imags:    ' num2str(numel(has.Imags))])
disp(['Has Regis:    ' num2str(numel(has.Regis))])
disp(['Has First:    ' num2str(numel(has.First))])
disp(['Has Post:    ' num2str(numel(has.Post))])
disp(['Has Figs:    ' num2str(numel(has.Figs))])
disp(['Has DCT:    ' num2str(numel(has.DCT))])
disp(['Has OR:    ' num2str(numel(has.OR))])
disp(['Has Err:    ' num2str(numel(has.Err))])
disp(['Has Map:    ' num2str(numel(has.Map))])
disp(['Has Mov:    ' num2str(numel(has.Mov))])
disp(['Has Valid:    ' num2str(numel(has.Valid))])
disp(['All:    ' num2str(numel(has.All))])
disp('----------------------------------')


disp(['To ConvertSpectralis:     (todo.convert)  ' num2str(numel(todo.convert))])
disp(['To Register:              (todo.register) ' num2str(numel(todo.register))])
disp(['To ChoroidFirstProcess:   (todo.firstProc)' num2str(numel(todo.firstProc))])
disp(['To ChoroidPostProcess:    (todo.postProc) ' num2str(numel(todo.postProc))])
disp(['To ChoroidMakeFigures:    (todo.compFigs) ' num2str(numel(todo.compFigs))])
disp(['To ComputeDeltaCT:        (todo.compDCT)  ' num2str(numel(todo.compDCT))])
disp(['To ComputeOcularRigidity: (todo.compORM)  ' num2str(numel(todo.compORM))])
disp(['To ComputeMap:            (todo.compMap)  ' num2str(numel(todo.compMap))])
disp(['To ComputeMov:            (todo.compMov)  ' num2str(numel(todo.compMov))])



