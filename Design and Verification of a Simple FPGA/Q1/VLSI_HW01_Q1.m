% Define the number of samples
num_samples = 100000;

% Generate random input data
A = randi([0, 2^32-1], num_samples, 1, 'uint32');
B = randi([0, 2^32-1], num_samples, 1, 'uint32');
OP = randi([0, 7], num_samples, 1, 'uint32');  % 3-bit OP, range [0, 7]

% Open the input file for writing
fileID = fopen('inputs.txt', 'w');
for i = 1:num_samples
    fprintf(fileID, '%u %u %u\n', A(i), B(i), OP(i));
end
fclose(fileID);

% Initialize the output array
X = zeros(num_samples, 1, 'uint32');
Z = zeros(num_samples, 1, 'double');

% Compute the outputs
for i = 1:num_samples
    [X(i), Z(i)] = alu(A(i), B(i), OP(i));
    if(X(i) > 4294967295)
        X(i) = 4294967295;
        z = 0;
    end
    if(X(i) < 0)
        X(i) = 0;
        z = 1;
    end
end

% Open the output file for writing
fileID = fopen('outputs.txt', 'w');
for i = 1:num_samples
    fprintf(fileID, '%u %u\n', X(i), Z(i));
end
fclose(fileID);

% ALU function (same as before)
function [X, z] = alu(A, B, OP)
    switch OP
        case 0  % ADD
            X = A + B;
        case 1  % SUB
            X = A - B;
        case 2  % NOR
            X = bitcmp(bitor(A, B), 'uint32');
        case 3  % OR
            X = bitor(A, B);
        case 4  % NAND
            X = bitcmp(bitand(A, B), 'uint32');
        case 5  % AND
            X = bitand(A, B);
        case 6  % XNOR
            X = bitcmp(bitxor(A, B), 'uint32');
        otherwise
            X = A;
    end

    % Ensure X is 32-bits
    %X = bitand(X, uint32(2^32 - 1));

    % Zero flag
    z = double(X == 0);
end
