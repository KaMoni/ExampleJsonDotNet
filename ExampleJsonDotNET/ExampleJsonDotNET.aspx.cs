using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.IO;

namespace ExampleJsonDotNET
{
    public partial class ExampleJsonDotNET : System.Web.UI.Page
    {
        protected override void OnLoad(EventArgs e)
        {

            this.jsonDiv.Visible = false;
        }

        private string personSerialized = "";

        protected void JsonConvertPerson(object sender, EventArgs e)
        {

            var person = new Person(this.firstname.Text, this.lastname.Text, this.eyecolor.Text);

            this.personSerialized = JsonConvert.SerializeObject(person);
            this.json.Text = this.personSerialized;

            StringWriter stringWriter = new StringWriter();
            HtmlTextWriter writer = new HtmlTextWriter(stringWriter);

            this.jsonDiv.Visible = true;
            
        }

        protected override void Render(HtmlTextWriter writer)
        {
            if (this.personSerialized != "")
            {
                writer.Write("<script type='text/javascript'>var personJson= " + this.personSerialized + ";</script>");
            }
            base.Render(writer);

        }
    }
}