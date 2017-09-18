%Inclass assignment 5. 

% 1. (a) Write a function that reads in an image and displays it so that 1%
% of the pixels are black and 1% of the pixels are white. Hint: your
% function can call the stretchlim function, see the help for that function.

%Miguel Angel: you'll have to input the filename with its extension 
%ej. 'inclass5.jpeg'

function [ J ] = onep( img1 )
img=imread(img1);
imshow(img);
%Note that imadjust(I) is equivalent to imadjust(I,STRETCHLIM(I)).
J=imadjust(img,stretchlim(img),[]); %default is 2% already
imshow(J)
end

onep()

% (b) Write a second function where the fraction of pixels to display as
% black or white are equal and can be specified as a second input to this
% function. 

%Miguel Angel: you'll have to input the filename with its extension and
%then the fraction (between 0-1)
%ej. 'inclass5.jpeg', 'fraction'

function [ J2 ] = fifty( img1, x )
img=imread(img1);
imshow(img);
J2=imadjust(img,stretchlim(img),[x 1-x]);
imshow(J2)
end

fifty()

%(c) Redo part (b) but make the option to specify the fraction
% of black/white pixels optional with a default value of 1% if not
% specified. 

%Miguel Angel: you'll have to input the filename with its extension and
%then the fraction (between 0-1)
%ej. 'inclass5.jpeg', fraction'

function [ J3 ] = fraction( img1, x )
if nargin==2  
img=imread(img1);
imshow(img);
J3=imadjust(img,stretchlim(img),[x 1-x]);
elseif nargin==1    
img=imread(img1);
imshow(img);
J3=imadjust(img,stretchlim(img),[]);
else
    error('Must have at least 1 input');
end

fraction()

%2. Write a function to take the reverse complement of a DNA sequence, that
%is, returns the complementary base pair for each base, read from end
%to beginning. (e.g. the reverse compliment of ATGC is GCAT). Do not use the
%builtin MATLAB function for this. 

%Miguel Angel: you'll have to input the sequence between ' '
%ej. 'ATGGATATACG'

function [ revcseq ] = RCS( rand_seq )
rand_seq2=rand_seq;
sA=strfind(rand_seq,'A');
sT=strfind(rand_seq,'T');
sG=strfind(rand_seq,'G');
sC=strfind(rand_seq,'C');
%complementary
rand_seq2(sA)='T';
rand_seq2(sT)='A';
rand_seq2(sG)='C';
rand_seq2(sC)='G';
rand_seq2;
revcseq=reverse(rand_seq2);
end


RCS()
