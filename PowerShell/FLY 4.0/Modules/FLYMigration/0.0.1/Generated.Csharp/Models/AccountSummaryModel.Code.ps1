// <auto-generated>
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace AvePoint.PowerShell.FLYMigration.Models
{
    using Newtonsoft.Json;
    using System.Linq;

    public partial class AccountSummaryModel
    {
        /// <summary>
        /// Initializes a new instance of the AccountSummaryModel class.
        /// </summary>
        public AccountSummaryModel()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the AccountSummaryModel class.
        /// </summary>
        public AccountSummaryModel(string id = default(string), string username = default(string))
        {
            Id = id;
            Username = username;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// </summary>
        [JsonProperty(PropertyName = "id")]
        public string Id { get; set; }

        /// <summary>
        /// </summary>
        [JsonProperty(PropertyName = "username")]
        public string Username { get; set; }

    }
}