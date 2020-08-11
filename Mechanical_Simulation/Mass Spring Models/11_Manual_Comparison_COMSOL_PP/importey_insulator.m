%% Import data from text file
% Script for importing data from the following text file:
%
%    filename: C:\Users\Docker\Documents\Repo\DISSERTATION\Mechanical_Simulation\Mass Spring Models\11_MATLAB_Control_System\COMSOL files\ES_Good\Ey_insulator.csv
%
% Auto-generated by MATLAB on 27-Jul-2020 00:12:23
function [x,Ey]=importey_insulator(filename, dataLines)
%IMPORTFILE Import data from a text file
%  [X, EY] = IMPORTFILE(FILENAME) reads data from text file FILENAME for
%  the default selection.  Returns the data as column vectors.
%
%  [X, EY] = IMPORTFILE(FILE, DATALINES) reads data for the specified
%  row interval(s) of text file FILENAME. Specify DATALINES as a
%  positive scalar integer or a N-by-2 array of positive scalar integers
%  for dis-contiguous row intervals.
%
%  Example:
%  [x, Ey] = importfile("C:\Users\Bruno\Documents\DISSERTATION\Mechanical_Simulation\Mass Spring Models\11_MATLAB_Control_System\COMSOL files\ES_Good\Ey_insulator_V2.csv", [9, Inf]);
%
%  See also READTABLE.
%
% Auto-generated by MATLAB on 04-Aug-2020 16:34:33

%% Input handling

% If dataLines is not specified, define defaults
if nargin < 2
    dataLines = [9, Inf];
end

%% Setup the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 3);

% Specify range and delimiter
opts.DataLines = dataLines;
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
tbl = readtable(filename, opts);

%% Convert to output type
x = tbl.x;
Ey = tbl.Ey;
end