Write-Output "Staging profile changes"
git add 'SuperSlicerProfiles'
git add 'PrusaSlicerProfiles'

if ( !$? ) {
    Write-Error "Couldn't stage profile files"
    Exit 1
}

Write-Output "Creating commit"
git commit -m "🚀 Automated Profile Update"

if ( !$? ) {
    Write-Error "Couldn't create commit"
    Exit 1
}

Write-Output "Pushing commit"
git push

if ( !$? ) {
    Write-Error "Couldn't push commit"
    Exit 1
}