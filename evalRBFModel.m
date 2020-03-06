% CSC C11 - Machine Learning, Fall 2017, Assignment 1, 
% F. Estrada, festrada@utsc.utoronto.ca
%
% A 2D - Radial Basis Function
% 
% [z]=evalRBFModel(w,P,C,sigma)
%
% Evaluates the trained RBF model with weights w at
% the specified points.
%
% w - weights for the RBFs in the model as estimated by
%     TrainRBFRegression.m
%
% P - a 2-row array containing the coordinates of the points
%     where we want the model to be evaluated, i.e.
%
%     P=[x_1   x_2    ....    x_n
%        y_1   y_2    ....    y_n]
%
% C - RBF center locations, i.e.
%
%     C=[cx_1  cx_2   ....    cx_n
%        cy_1  cy_2   ....    cy_n]
%
% sigma - width of the RBFs
%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% TO DO: Complete this function so that it evaluates the trained
%        RBF model on the given input points
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [z]=evalRBFModel(w,P,C,sigma)

  [~, k] = size(C);
  [~, n] = size(P);
  B = ones(n, k+1);
  for i = 2:k+1
      B(:,i) = rbf2d(P,C(:,i-1),sigma);
  end
  z = B*w;