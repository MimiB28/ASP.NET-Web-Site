﻿using System;
using System.Net;
using System.Net.Mail;

/// <summary>
/// Class contains miscellaneous functionality such as sending emails.
/// </summary>
public class Utilities
{
    static Utilities()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    // Generic method for sending emails
    public static void SendMail(string from, string to, string subject, string body)
    {
        // Configure mail client
        SmtpClient mailClient = new SmtpClient(FPconfiguration.MailServer);
        // Set credentials (for SMTP servers that require authentication)
        mailClient.Credentials = new NetworkCredential(FPconfiguration.MailUsername, FPconfiguration.MailPassword);
        //Create the mail message
        MailMessage mailMessage = new MailMessage(from, to, subject, body);
        //Send mail
        mailClient.Send(mailMessage);
    }

    // Send error log mail
    public static void LogError(Exception ex)
    {
        // get the current date and time
        string dateTime = DateTime.Now.ToLongDateString() + ", at "
        + DateTime.Now.ToShortTimeString();
        // stores the error message
        string errorMessage = "Exception generated on " + dateTime;
        // obtain the page that generated the error
        System.Web.HttpContext context = System.Web.HttpContext.Current;
        errorMessage += "\n\n Page location: " + context.Request.RawUrl;
        // build the error message
        errorMessage += "\n\n Message: " + ex.Message;
        errorMessage += "\n\n Source: " + ex.Source;
        errorMessage += "\n\n Method: " + ex.TargetSite;
        errorMessage += "\n\n Stack Trace: \n\n" + ex.StackTrace;
        // send error email in case the option is activated in web.config
        if (FPconfiguration.EnableErrorLogEmail)
        {
            string from = FPconfiguration.MailFrom;
            string to = FPconfiguration.ErrorLogEmail;
            string subject = "FlowerParadise Error Report";
            string body = errorMessage;
            SendMail(from, to, subject, body);
        }
    }
}