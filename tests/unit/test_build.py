from holdings import db, Tree
from cli import topdown_build

def test_topdown_build():
    # for a cli application I want to be using stdout
    # asserts