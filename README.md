Use code with caution.When it asks for your Username, type your platform username.When it asks for your Password, paste the Personal Access Token you just copied. [1] (https://www.youtube.com/watch?v=U3dP26dqmWc)Step 3: Stop Git from asking every time (Optional)To avoid pasting this token every single time you push or pull code, you can tell Git to remember it securely. Run the appropriate command for your operating system: [1] (https://stackoverflow.com/questions/6565357/git-push-requires-username-and-password), [2] (https://www.youtube.com/watch?v=DjQ6oD3Vp1o&t=167)Windows:bashgit config --global credential.helper wincred

Use code with caution.Linux:bashgit config --global credential.helper cache
Use code with caution.For LinuxLinux doesn't always have a default secure manager installed, so it is usually easiest to cache the token in memory for a few hours:bash# Caches your token in memory for 1 hour (3600 seconds)

git config --global credential.helper 'cache --timeout=3600'

Use code with caution.What to do next:i
After you run the correct command for your system, 
perform one last git push.Enter your GitHub username.
Paste your Personal Access Token as the password.
Your system will save it, and you will not be asked for it again on future pushes.

