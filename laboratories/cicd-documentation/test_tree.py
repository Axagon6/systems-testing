import unittest
from tree import Tree

class TestTree(unittest.TestCase):

    def setUp(self):
        self.tree = Tree()
        for val in [5, 3, 7, 2, 4, 6, 8]:
            self.tree.add(val)

    def test_find_existing_node(self):
        node = self.tree._find(4, self.tree.root)
        self.assertIsNotNone(node)
        self.assertEqual(node.data, 4)

    def test_find_non_existing_node(self):
        node = self.tree._find(10, self.tree.root)
        self.assertIsNone(node)

    if __name__ == '__main__':
        unittest.main()
