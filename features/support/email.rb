require 'net/smtp'
require 'fileutils'
class Email
  def send_report(arg)
  filename = arg
# Read a file and encode it into base64 format
filecontent = File.read(filename)
encodedcontent = [filecontent].pack("m")   # base64
marker = "AUNIQUEMARKER"
#Senders and Recipients
from_name ='Testing'
from_mail = 'mobilehsc@gmail.com'
to_name = 'My Friend'
to_mail = 'saikrishnave38@gmail.com','gireesha21@gmail.com','sri@neurlabs.com','ptevans@gmail.com'
#Servers and Authentication
smtp_host   = 'localhost'
smtp_port   =  587
smtp_domain = 'smtp.gmail.com'
smtp_user   ='mobilehsc@gmail.com'
smtp_pwd    = 'tesco123'
#The subject and the message
t = Time.now
subj = 'Sending Email with Ruby'
marker = "AUNIQUEMARKER"

body =<<EOF
This is an automated email. Please do not reply.
EOF

# Define the main headers.
part1 =<<EOF
From: Automation_Tester <me@fromdomain.net>
To: A Test User <test@todmain.com>
Subject: Regression Test Results
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary=#{marker}
--#{marker}
EOF

# Define the message action
part2 =<<EOF
Content-Type: text/plain
Content-Transfer-Encoding:8bit

#{body}
--#{marker}
EOF

# Define the attachment section
part3 =<<EOF
Content-Type: multipart/mixed; name=\"#{filename}\"
Content-Transfer-Encoding:base64
Content-Disposition: attachment; filename="#{filename}"

#{encodedcontent}
--#{marker}--
EOF
begin
  mailtext = part1 + part2 + part3
  smtp = Net::SMTP.new(smtp_domain,smtp_port)
  smtp.enable_starttls_auto if smtp.respond_to?(:enable_starttls_auto)
  smtp.start(smtp_host,  smtp_user, smtp_pwd, :login) do |smtp|
    smtp.send_message mailtext, from_mail, to_mail
  end
rescue
  print 'Exception occured: ' + e
end
  end
end

api=Email.new
api.send_report