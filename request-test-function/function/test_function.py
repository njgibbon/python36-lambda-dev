import pytest
import function

def test_make_request_positive_0():
    given_url = 'https://www.google.com'
    try:
        response = function.make_request(given_url)
        print(response)
        assert True
    except Exception as e:
        print(str(e))
        assert False





