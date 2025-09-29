function benchmark()
    m = 5.0; v = 3.0; x = 2.0; dm_dt = 0.1;
    iterations = 1e6;

    tic;
    for i = 1:iterations
        p = m * v;
        NKTg1 = x * p;
        NKTg2 = dm_dt * p;
    end
    elapsed = toc;

    fprintf('MATLAB benchmark: %d iterations in %.2f seconds\n', iterations, elapsed);
end
