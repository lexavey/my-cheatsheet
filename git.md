## Clean .git folder

    find . -name '.git' -print0 | xargs -0 rm -rf

## Zero file

    find . -size 0 -print0 | xargs -0 rm -rf

## Empty folder

    find . -type d -empty -print0 | xargs -0 touch
    find . -type d ! -path "*.git*" -empty -exec touch '{}'/.gitkeep \;

## Force add empty file
    
    git add -Af
## Scan BIG file

    find . -type f -size +100M


## Archive all file to git
    
