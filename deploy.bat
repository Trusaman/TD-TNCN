@echo off
echo GitHub Pages Deployment Script
echo ===============================
echo.
echo Please make sure you have:
echo 1. Created a GitHub repository
echo 2. Have the repository URL ready
echo.
set /p repo_url="Enter your GitHub repository URL (e.g., https://github.com/username/repo-name.git): "

echo.
echo Adding remote repository...
git remote add origin %repo_url%

echo.
echo Pushing to GitHub...
git branch -M main
git push -u origin main

echo.
echo ===============================
echo Deployment complete!
echo.
echo Next steps:
echo 1. Go to your GitHub repository
echo 2. Click Settings tab
echo 3. Scroll to Pages section
echo 4. Select "Deploy from a branch"
echo 5. Choose "main" branch and "/ (root)"
echo 6. Click Save
echo.
echo Your site will be available at:
echo https://[your-username].github.io/[your-repo-name]/
echo.
pause