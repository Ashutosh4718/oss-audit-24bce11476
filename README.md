OSS Audit Project: Python & Linux Automation

Student Name: Ashutosh Shrivastava
Reg No: 24BCE11476
Course: Open Source Software (CSE)

Why Python?

As Python is well-known for AI and data science, its use in open-source ecosystem is what truly makes it stand out. It's one of the best example of how a community-driven project can grow into an industry.

The goal of this project is to investigate how Python functions in a Linux environment and how Bash scripting can be used to efficiently audit and manage that configuration.

## My Shell Script Suite

This project includes five scripts, each of which is intended to handle a particular task, such as system checks or log analysis. Which makes it easier to understand and manage.

 Script 1: The System Snapshot (script1.sh)
Provides a quick overview of the system by displaying the kernel version and uptime. This helps in understanding the environment before running any Python-related tasks.

Run: ./script1.sh

 Script 2: Python Environment Check (script2.sh)
Acts as a basic Python inspector. It checks whether Python is installed and verifies the version, which is important since compatibility issues often arise due to version mismatches.

Run: ./script2.sh

 Script 3: Permission & Disk Audit (script3.sh)
Analyzes disk usage and checks file permissions. This helps in understanding storage distribution and ensures that files and directories are properly secured.

Run: ./script3.sh

 Script 4: The Debugger’s Friend (script4.sh)
Searches system logs for specific keywords like errors or warnings. This saves time by quickly filtering out important information instead of manually scanning large log files.

Run: ./script4.sh

 Script 5: The Philosophy Generator (script5.sh)
A simple interactive script that takes user input about open-source ideas and saves it into a clean text file, acting like a small FOSS manifesto generator.

Run: ./script5.sh

## Getting Started (Setup Guide)

To run this project on WSL (Ubuntu), follow these steps:

1. Navigate to the project directory:

cd oss-audit

2. Make all scripts executable:

chmod +x *.sh

3. Run any script:

./script1.sh

## Personal Reflections

This project highlights that open source is not just about free software—it’s about transparency and control. Working with Bash scripts and Linux commands gives a deeper understanding of how systems operate behind the scenes.

Even simple scripts can make a big difference in automating tasks and improving efficiency. Overall, this was a great introduction to how open-source tools work together in a real environment.
