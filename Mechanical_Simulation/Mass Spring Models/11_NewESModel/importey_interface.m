%% Import data from text file
% Script for importing data from the following text file:
%
%    filename: C:\Users\Docker\Documents\Repo\DISSERTATION\Mechanical_Simulation\Mass Spring Models\11_MATLAB_Control_System\COMSOL files\ES_Good\Ey_interface.csv
%
% Auto-generated by MATLAB on 27-Jul-2020 02:21:15

%% Setup the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 3);

% Specify range and delimiter
opts.DataLines = [9, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["x", "Ey", "Var3"];
opts.SelectedVariableNames = ["x", "Ey"];
opts.VariableTypes = ["double", "double", "string"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Specify variable properties
opts = setvaropts(opts, "Var3", "WhitespaceRule", "preserve");
opts = setvaropts(opts, "Var3", "EmptyFieldRule", "auto");

% Import the data
tbl = readtable("C:\Users\Bruno\Documents\DISSERTATION\Mechanical_Simulation\Mass Spring Models\11_MATLAB_Control_System\COMSOL files\ES_Good\Ey_interface.csv", opts);

%% Convert to output type
x = tbl.x;
Ey = tbl.Ey;

%% Clear temporary variables
clear opts tbl