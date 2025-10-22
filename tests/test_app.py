from src.app import add,sub,mul,div

def test_add_scenarios():
    #Negative numbers
    #This should get an error (Only to validate the error output)
    assert add(-2,-8) == -10
    #Cero
    assert add(0,0) == 0
    #Mixed
    assert add(-5,3) == -2

def test_sub_scenarios():
    #Negative numbers
    assert sub(-2,-8) == 6
    #Cero
    assert sub(0,0) == 0
    #Mixed
    assert sub(-5,3) == -8

def test_mul_scenarios():
    #Negative numbers
    assert mul(-2,-8) == 16
    #Cero
    assert mul(0,0) == 0
    #Mixed
    assert mul(-5,3) == -15

def test_div_scenarios():
    #Negative numbers
    assert div(-2,-8) == 0.25
    #Cero
    assert div(0,0) == 0
    #Mixed
    assert div(-6,3) == -2