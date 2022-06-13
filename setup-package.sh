# Sets up unity package samples
git mv ./Assets/Samples ./Packages/com.nickmaltbie.openkcc/Samples~
git mv ./Packages/com.nickmaltbie.openkcc _keep

git lfs install

git config --global user.email "github-actions[bot]@users.noreply.github.com"
git config --global user.name "github-actions[bot]"

git commit -m "Moved ./Assets/Samples to ./Packages/com.nickmaltbie.openkcc/Samples~"

# Cleanup any files not part of the package
git subtree split --prefix _keep --branch cleaned-branch

git checkout cleaned-branch
