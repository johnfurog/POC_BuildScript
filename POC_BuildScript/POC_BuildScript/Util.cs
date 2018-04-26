using System;
using System.Collections.Generic;
using System.Text;

namespace POC_BuildScript
{
    public class Util
    {
        public const string key = "test";
        public static Endpoint endpoint = Endpoint.FirstEndpoint;
    }

    public enum Endpoint
    {
        FirstEndpoint =1,
        SecondEndpoint = 2
    }

}
