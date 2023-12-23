from email.message import EmailMessage
import ssl
import smtplib
import sys
import os

class Mail:
    def __init__(self, recipient, body):
        self.subject = 'A person is interested in your pet!'
        self.body = body
        self.sender = 'pawfecthome22@gmail.com'
        self.recipient = recipient
        self.password = os.environ['EMAIL_PASSWORD']

    def send_email(self):
        em = EmailMessage()
        em['From'] = mail.sender
        em['To'] = mail.recipient
        em['Subject'] = mail.subject
        em.set_content(mail.body)
        context = ssl.create_default_context()
        with smtplib.SMTP_SSL('smtp.gmail.com', 465, context= context) as smtp:
            smtp.login(mail.sender,mail.password)
            smtp.sendmail(mail.sender, mail.recipient, em.as_string())

body = (sys.argv[1])
recipient=(sys.argv[2])
mail=Mail(recipient, body)
mail.send_email()