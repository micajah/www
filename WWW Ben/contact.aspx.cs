using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Text;


namespace WWW_Site_2
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ContactUs_Click(object sender, System.EventArgs e)
        {
            StringBuilder sb = new StringBuilder();

            sb.AppendLine("Name: " + Name.Text);
            sb.AppendLine();
            sb.AppendLine("Email: " + Email.Text);
            sb.AppendLine();
            sb.AppendLine("Elevator:" + Elevator.InnerText);
            sb.AppendLine();
            sb.AppendLine("Budget:" + Budget.Text);
            sb.AppendLine();
            sb.AppendLine("DeadLine:" + Deadline.InnerText);
            sb.AppendLine();
            sb.AppendLine("Audience:" + Audience.InnerText);
            sb.AppendLine();
            sb.AppendLine("URL:" + URL.Text);
            sb.AppendLine();
            sb.AppendLine("Understand:" + Understand.InnerText);
            sb.AppendLine();
            sb.AppendLine("Money:" + Money.InnerText);
            sb.AppendLine();






            const string SMTPUser = "AKIAIMHA7HCKZ3PNYSXA";
            const string SMTPPass = "AlPedmMJUspyCKQmOVBiGn3KuUlVlNHDoU43vH0vb8Q3";

            var fromAddress = new MailAddress("jon.vickers@micajah.com", "Micajah Info Request");
            var toAddress = new MailAddress("jon.vickers@micajah.com", "Jon Vickers");
            
            const string subject = "WWW Micajah Information Request";
           
           

            var smtp = new SmtpClient
            {
                Host = "email-smtp.us-east-1.amazonaws.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential(SMTPUser, SMTPPass)
            };
            using (var message = new MailMessage(fromAddress, toAddress)
                {
                    Subject = subject,
                    Body = sb.ToString()
                }
            )
                {
                    smtp.Send(message);
                }


            Success.Visible = true;
            contactForm.Visible = false;

            }
  
        
    }
}