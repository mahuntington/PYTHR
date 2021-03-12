import unittest
import warnings
import configparser

class TestPkgVersions(unittest.TestCase):
    pass

def test_generator(pkg, v):
    def test(self):
        import importlib
        # needed to supress ImportWarning
        # see https://github.com/astropy/astropy/issues/6025
        warnings.simplefilter("ignore")
        # here's where the installed version, v, is compared to the 
        # version stated in config.ini. Installed version must be
        # greater than or equal to the version specified in config.ini
        self.assertTrue(importlib.import_module(pkg).__version__ >= v)
    return test

if __name__ == '__main__':

    config = configparser.ConfigParser()
    config.read('config.ini')
    
    for k in config['libraries']:
        test_name = 'test_%s' % k
        test = test_generator(k, config['libraries'][k])
        setattr(TestPkgVersions, test_name, test)
    unittest.main(verbosity=2)
