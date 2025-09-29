function tests = test_nktgLaw
    tests = functiontests(localfunctions);
end

function testBasic(testCase)
    [p, NKTg1, NKTg2] = nktgLaw(2, 3, 5, 0.1);
    verifyEqual(testCase, p, 15);
    verifyEqual(testCase, NKTg1, 30);
    verifyEqual(testCase, NKTg2, 1.5);
end
