%% M1.1.1: Surface Area Increase
%
% The surface area of a sphere is given by:
%
% $$
% A(r) = 4 \pi r^2
% $$
%
% where $r$ is the sphere radius.
%
% This script explores the increase of the surface area ($\delta A$) when
% the radius is increased by tiny amount ($\delta r$). By definition, the
% increase is:
%
% $$
% \delta A (r, \delta r) = 4 \pi (r + \delta r)^2 - 4 \pi r^2
% $$
%
% This script modifies the script |Eg1_1.m| such that the original surface
% area is calculated and printed before the increases are.

%% Get and display the input data

r = input('Enter radius [km]:');
delta_r = input('Enter increase [mm]:');
clc

fprintf('Sphere radius   = %12.6f [km]\n',r)
fprintf('Radius increase = %12.6f [mm]\n\n',delta_r)

r = r * 1e3;
delta_r = delta_r / 1e3;

%% Original Surface Area
A = 4 * pi * r^2;
fprintf('Original surface area = %15.6f [m^2]\n\n',A)

%% Surface Are Increase
fprintf('Surface Area Increase:')

%% Method 1
%
% The first method to compute the increase takes the definition verbatim:
%
% $$
% \delta A(r, \delta r) = 4 \pi (r + \delta r)^2 - 4 \pi r^2
% $$
delta_A1 = 4 * pi * (r + delta_r)^2 - 4 * pi * r^2;
fprintf('\n Method 1: %15.6f [m^2]',delta_A1)

%% Method 2
%
% The second expand the square in the first term of the right hand side:
%
% $$
% \delta A(r, \delta r) = 4 \pi (2r + \delta r) \delta r
% $$
delta_A2 = 4 * pi * (2*r + delta_r) * delta_r;
fprintf('\n Method 2: %15.6f [m^2]',delta_A2)

%% Method 3
%
% The third method ignore the second-order ($\delta r^2$) term:
%
% $$
% \delta A(r, \delta r) = 8 \pi r \delta r
% $$
delta_A3 = 8 * pi * r * delta_r;
fprintf('\n Method 3: %15.6f [m^2]\n',delta_A3)

%%
% Even the first two results, though mathematically equivalent, are already
% different.
