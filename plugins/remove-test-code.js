const glob = require('glob-promise');
const fs = require('fs').promises;

const MOCK_DIR_PATH_PATTERN = '/components/**/_mocks';
const TEST_DIR_PATH_PATTERN = '/components/**/_tests';
const TESTING_FRAMEWORK_DIR = '/source/testFramework';
const TESTS_UTILS_DIR = '/components/testsUtils';

module.exports = async function removeTestCode(rootDir) {
  const mockDirPaths = await glob(`${rootDir}${MOCK_DIR_PATH_PATTERN}`);
  const testDirPaths = await glob(`${rootDir}${TEST_DIR_PATH_PATTERN}`);

  await removeDirectories([
    ...mockDirPaths,
    ...testDirPaths,
    `${rootDir}${TESTING_FRAMEWORK_DIR}`,
    `${rootDir}${TESTS_UTILS_DIR}`,
  ]);
};

async function removeDirectories(directories) {
  await Promise.all(
    directories.map(dir => fs.rm(dir, { recursive: true, force: true }))
  );
};
