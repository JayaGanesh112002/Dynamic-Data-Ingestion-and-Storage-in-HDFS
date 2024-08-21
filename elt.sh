# wget command to get the file
wget -r -nd -N -A "*.csv" -i "url.txt"

# -r : Recrsive download
# -nd : No directories to be created while downloading
# -N : Timestamping 
# -A : Accept the given file formats
# -i : Input file with the required URLs 

# transferring the output to hdfs
hdfs dfs -mkdir -p /user/hadoop/files
hdfs dfs -put 'nc-est2023-agesex-res.csv' /user/hadoop/files
hdfs dfs -ls /user/hadoop/files/

# runing the hql file to create database
hive -f queries.hql