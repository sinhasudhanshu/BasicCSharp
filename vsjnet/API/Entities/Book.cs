using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API.Entities
{
    public class Book
    {
        public int Id {get; set; }
        public string BookName {get; set; }
        public string Subject {get; set; }
        public int Price {get; set; }

    }
}