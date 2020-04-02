function main()
    zero_single = machine_zero(single(1.0));
    zero_double = machine_zero(1.0);
    fprintf("Single precision machine zero: %e\n", zero_single);
    fprintf("Double precision machine zero: %e\n", zero_double);
    
    inf_single = machine_infinity(single(1.0));
    inf_double = machine_infinity(1.0);
    fprintf("Single precision machine infinity: %e\n", inf_single);
    fprintf("Double precision machine infinity: %e\n", inf_double);
    
    eps_single = machine_epsilon(single(1.0));
    eps_double = machine_epsilon(1.0);
    fprintf("Single precision machine epsilon: %e\n", eps_single);
    fprintf("Double precision machine epsilon: %e\n", eps_double);
end

function zero = machine_zero(start_number)
    number = start_number;
    i = 0;
    while (number ~= 0)
        number = number / 2;
        i = i + 1;
    end
    zero = 2 ^ (1 - i);
end

function infinity = machine_infinity(start_number)
    number = start_number;
    i = 0;
    while (number ~= Inf)
        number = number * 2;
        i = i + 1;
    end
    infinity = 2 ^ (i - 1);
end

function epsilon = machine_epsilon(start_number)
    number = start_number;
    i = 0;
    while ((1+number) ~= 1)
        number = number / 2;
        i = i + 1;
    end
    epsilon = 2 ^ (1 - i);
end