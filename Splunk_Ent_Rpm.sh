wget -O splunk-8.2.2.1-ae6821b7c64b-linux-2.6-x86_64.rpm 'https://d7wz6hmoaavd0.cloudfront.net/products/splunk/releases/8.2.2.1/linux/splunk-8.2.2.1-ae6821b7c64b-linux-2.6-x86_64.rpm';
rpm -i splunk-8.2.2.1-ae6821b7c64b-linux-2.6-x86_64.rpm;
./splunk start --accept-license;
./splunk stop;
./splunk enable boot-start -user splunk;
chown -R splunk:splunk /opt/splunk;
su - splunk;
./splunk start;
