using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ExampleJsonDotNET
{
    public class Person
    {
        public Person(string firstname, string lastname, string eyecolor)
        {
            this.firstname = firstname;
            this.lastname = lastname; 
            this.eyecolor = eyecolor;
        }

        private string firstname;
        public string Firstname
        {
            get { return firstname; }
            set { firstname = value; }
        }

        private string lastname;
        public string LastName
        {
            get { return lastname; }
            set { lastname = value; }
        }

        private string eyecolor;
        public string Eyecolor
        {
            get { return eyecolor; }
            set { eyecolor = value; }
        }
    }
}