clear; clc;


num_vectors = 100;
min_val = -2; 
max_val = 2;


w = 6;  
word_length = 8;  



x0 = (max_val - min_val) * rand(num_vectors, 1) + min_val;
x0(x0 == 0) = eps; 

y0 = (max_val - min_val) * rand(num_vectors, 1) + min_val;


z0 = atan(y0 ./ x0);


z_results = zeros(num_vectors, 1);
for itr = 1:15
for vec = 1:num_vectors
    x = fi(x0(vec), 1, word_length, w);
    y = fi(y0(vec), 1, word_length, w);
    z = fi(0, 1, word_length, w);

    

    for i = 0:itr
        if (y < 0)
            d = 1;
        else
            d = -1;
        end

        x_2 = x - fi(y * d * (2 ^ (-i)), 1, word_length, w);
        y_2 = y + fi(x * d * (2 ^ (-i)), 1, word_length, w);
        z_2 = z - fi(d * atan(2 ^ (-i)), 1, word_length, w);

        x = x_2;
        y = y_2;
        z = z_2;
    end

    z_results(vec) = z_2;
end
err = 0;
for i = 1:num_vectors
    err = err +  abs((z_results(i) - z0(i)));
end
err = err ./num_vectors;
disp(err);
end
%%
clear; clc;

num_vectors = 100;
min_val = -2; 
max_val = 2;

w = 14;  
word_length = 16;  

x0 = (max_val - min_val) * rand(num_vectors, 1) + min_val;
x0(x0 == 0) = eps; % Replace any zero value with a very small number to avoid division by zero

y0 = (max_val - min_val) * rand(num_vectors, 1) + min_val;

z0 = atan(y0 ./ x0);

z_results = zeros(num_vectors, 1);
errors = zeros(15, 1); % To store error values for each iteration

for itr = 1:15
    for vec = 1:num_vectors
        x = fi(x0(vec), 1, word_length, w);
        y = fi(y0(vec), 1, word_length, w);
        z = fi(0, 1, word_length, w);

        for i = 0:itr
            if (x * y < 0)
                d = 1;
            else
                d = -1;
            end

            x_2 = x - fi(y * d * (2 ^ (-i)), 1, word_length, w);
            y_2 = y + fi(x * d * (2 ^ (-i)), 1, word_length, w);
            z_2 = z - fi(d * atan(2 ^ (-i)), 1, word_length, w);

            x = x_2;
            y = y_2;
            z = z_2;
        end

        z_results(vec) = z_2;
    end
    
    err = 0;
    for i = 1:num_vectors
        err = err +  abs((z_results(i) - z0(i)));
    end
    errors(itr) = err / num_vectors; % Store error for the current iteration
    disp(errors(itr));
end

% Plot the error values
figure;
plot(1:15, errors, '-o');
title('Error vs Iterations');
xlabel('Iteration');
ylabel('Mean Absolute Error');
grid on;
%%
clear; clc;

num_vectors = 100;
min_val = -2;
max_val = 2;

max_offset = 9; % Maximum offset value
errors = zeros(max_offset + 1, 1); % To store error values for each offset

for offset = 0:max_offset
    w = 6 + offset;
    word_length = 8 + offset;

    x0 = (max_val - min_val) * rand(num_vectors, 1) + min_val;
    x0(x0 == 0) = eps; % Replace any zero value with a very small number to avoid division by zero

    y0 = (max_val - min_val) * rand(num_vectors, 1) + min_val;

    z0 = atan(y0 ./ x0);

    z_results = zeros(num_vectors, 1);
    for vec = 1:num_vectors
        x = fi(x0(vec), 1, word_length, w);
        y = fi(y0(vec), 1, word_length, w);
        z = fi(0, 1, word_length, w);

        itr = 10; % Define number of iterations for CORDIC algorithm
        for i = 0:itr
            if (x * y < 0)
                d = 1;
            else
                d = -1;
            end

            x_2 = x - fi(y * d * (2 ^ (-i)), 1, word_length, w);
            y_2 = y + fi(x * d * (2 ^ (-i)), 1, word_length, w);
            z_2 = z - fi(d * atan(2 ^ (-i)), 1, word_length, w);

            x = x_2;
            y = y_2;
            z = z_2;
        end

        z_results(vec) = z_2;
    end

    err = 0;
    for i = 1:num_vectors
        err = err + abs((z_results(i) - z0(i)));
    end
    errors(offset + 1) = err / num_vectors; % Store error for the current offset
    disp(errors(offset + 1));
end

% Plot the error values based on the offset (w)
figure;
plot(6:(6+max_offset), errors, '-o');
title('Error vs Fractional Bits (w)');
xlabel('Fractional Bits (w)');
ylabel('Mean Absolute Error');
grid on;
%%
clear; clc;

num_vectors = 1000;
min_val = -1; 
max_val = 1;
arr = [0.78533935546875 , 0.463623046875 , 0.24493408203125 , 0.12432861328125 , 0.0623779296875 , 0.03118896484375 , 0.01556396484375 , 0.00775146484375 , 0.00384521484375 , 0.00189208984375];
w = 14;  
word_length = 16;  

% Generate random values for x0 and y0
x0 = (max_val - min_val) * rand(num_vectors, 1) + min_val;
x0(x0 == 0) = eps; % Replace any zero value with a very small number to avoid division by zero

y0 = (max_val - min_val) * rand(num_vectors, 1) + min_val;

z0 = atan(y0 ./ x0);

% Convert to 2's complement binary strings for x0 and y0
x0_bin = arrayfun(@(v) dec2bin(typecast(int16(v * (2^w)), 'uint16'), 16), x0, 'UniformOutput', false);
y0_bin = arrayfun(@(v) dec2bin(typecast(int16(v * (2^w)), 'uint16'), 16), y0, 'UniformOutput', false);

% Write x0 and y0 to text files
fileID_x = fopen('x0_values.txt', 'w');
fileID_y = fopen('y0_values.txt', 'w');

for i = 1:num_vectors
    fprintf(fileID_x, '%s\n', x0_bin{i});
    fprintf(fileID_y, '%s\n', y0_bin{i});
end

fclose(fileID_x);
fclose(fileID_y);

% Convert binary strings back to decimal values
x0_dec = cellfun(@(v) double(typecast(uint16(bin2dec(v)), 'int16')) / (2^w), x0_bin);
y0_dec = cellfun(@(v) double(typecast(uint16(bin2dec(v)), 'int16')) / (2^w), y0_bin);

z_results = zeros(num_vectors, 1);
errors = zeros(15, 1); % To store error values for each iteration

itr = 3;
for vec = 1:num_vectors
    x = fi(x0_dec(vec), 1, word_length, w);
    y = fi(y0_dec(vec), 1, word_length, w);
    z = fi(0, 1, word_length, w);

    for i = 0:(itr - 1)
        %disp(i);
        if (y < 0)
            d = 1;
        else
            d = -1;
        end

        x_2 = x - fi(y * d * (2 ^ (-i)), 1, word_length, w);
        y_2 = y + fi(x * d * (2 ^ (-i)), 1, word_length, w);
        z_2 = z - fi(d * arr(i+1), 1, word_length, w);

        x = x_2;
        y = y_2;
        z = z_2;
    end

    z_results(vec) = z_2;
end
%%
fileID = fopen('cordic_output.txt', 'r');
z_bin = textscan(fileID, '%s');
fclose(fileID);
z_dec = cellfun(@(v) double(typecast(uint16(bin2dec(v)), 'int16')) / (2^w), z_bin{1});
comparison = abs(z_results - z_dec);
correct = 0;

disp('Comparison (z_results - z_dec):');
disp(comparison);
for vec = 1:num_vectors
    if(comparison(vec) == 0)
    correct = correct + 1;
end

end
disp('Correct Results:');
disp(correct);





