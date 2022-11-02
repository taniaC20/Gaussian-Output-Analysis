import os
import argparse

parser = argparse.ArgumentParser(description='Reading index of acbap.')
parser.add_argument("-i",'--index',type=int, help='acbap index')
parser.add_argument("-p",'--practice',type=bool, help='Is Practice?')
args = parser.parse_args()

print(f"Command-line arguments: {args}")

job_index = args.index
os.system(f"sbatch Compound{job_index+1}.sh")