# Variables.

GIT_ACCOUNT=senzing
GIT_REPOSITORY=mock-data-generator
GIT_ACCOUNT_DIR=~/${GIT_ACCOUNT}.git
GIT_REPOSITORY_DIR="${GIT_ACCOUNT_DIR}/${GIT_REPOSITORY}"
GIT_REPOSITORY_URL="https://github.com/${GIT_ACCOUNT}/${GIT_REPOSITORY}.git"
SENZING_SCRIPT=mock-data-generator.py

# Log activity.

echo "==============================================================================="
echo "Install Senzing ${SENZING_SCRIPT}"
echo "==============================================================================="

# Clone repository.

mkdir --parents ${GIT_ACCOUNT_DIR}
cd  ${GIT_ACCOUNT_DIR}
git clone  --recurse-submodules ${GIT_REPOSITORY_URL}

# Install prerequisites.

cd ${GIT_REPOSITORY_DIR}
pip install -r requirements.txt

# Move files.

mv ${GIT_REPOSITORY_DIR}/${SENZING_SCRIPT} /usr/local/bin/

# Cleanup.

rm -rf ${GIT_REPOSITORY_DIR}
