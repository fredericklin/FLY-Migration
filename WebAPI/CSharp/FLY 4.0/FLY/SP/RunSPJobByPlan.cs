﻿using AvePoint.Migration.Api.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace AvePoint.Migration.Samples
{
    /// <summary>
    /// Run a new job of a plan by passing the ID of the plan and plan settings
    /// </summary>
    class RunSPJobByPlan : AbstractApplication
    {
        /// <summary>
        /// <see cref="GetSPPlan"/>
        /// </summary>
        private readonly string planId = "<plan id>";

        static void Main(string[] args)
        {
            new RunSPJobByPlan().RunAsync().Wait();
        }

        /// <returns>
        /// <see cref="ServiceResponseStatusResultModel"/>
        /// </returns>
        protected override async Task<string> RunAsync(HttpClient client)
        {
            if (string.IsNullOrEmpty(planId))
            {
                throw new ArgumentNullException(nameof(planId));
            }

            var model = new PlanExecutionModel
            {
                MigrationType = "Incremental"
            };

            var requestContent = JsonConvert.SerializeObject(model);

            var content = new StringContent(requestContent, Encoding.UTF8, "application/json");

            var response = await client.PostAsync($"/api/sharepoint/plans/{planId}/jobs", content);

            return await response.Content.ReadAsStringAsync();
        }
    }
}
