function tests = test_nktgLaw
    tests = functiontests(localfunctions);
end

function testBasic(testCase)
    % Test values: x=2, v=3, m=5, dm_dt=0.1
    [p, NKTg1, NKTg2] = nktgLaw(2, 3, 5, 0.1);
    
    % Verify results against Product Logic
    verifyEqual(testCase, p, 15);
    verifyEqual(testCase, NKTg1, 30);
    verifyEqual(testCase, NKTg2, 1.5);
end
