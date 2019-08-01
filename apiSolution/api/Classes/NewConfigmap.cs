using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace api.Classes
{
    public class NewConfigmap
    {
        public string rgName { get; set; }
        public string rgLocation { get; set; }
        public string assetConfiguration { get; set; }
        public string azureTenantId { get; set; }
        public string azureSubscriptionId { get; set; }
    }
}
