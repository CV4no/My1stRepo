wget -O splunk-8.2.0-e053ef3c985f-linux-2.6-amd64.deb 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=8.2.0&product=splunk&filename=splunk-8.2.0-e053ef3c985f-linux-2.6-amd64.deb&wget=true';
dpkg -i /opt/splunk-8.2.0-e053ef3c985f-linux-2.6-amd64.deb -C /opt;
/opt/splunk/bin/splunk start --accept-license;
/opt/splunk/bin/splunk stop;
/opt/splunk/bin/splunk enable boot-start -u splunk;
chown -R splunk:splunk /opt/splunk;
su -  splunk;
/opt/splunk/bin/splunk start