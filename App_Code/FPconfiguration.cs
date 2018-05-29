using System.Configuration;

/// <summary>
/// Repository for FlowerParadise configuration settings
/// </summary>
public static class FPconfiguration
{
    // Caches the connection string
    private static string dbConnectionString;
    // Caches the data provider name
    private static string dbProviderName;

    // Store the number of products per page
    private readonly static int productsPerPage;
    // Store the product description length for product lists
    private readonly static int productDescriptionLength;
    // Store the name of the site
    private readonly static string siteName;

    static FPconfiguration()
    {
        dbConnectionString = ConfigurationManager.ConnectionStrings["FPdbConnection"].ConnectionString;
        dbProviderName = ConfigurationManager.ConnectionStrings["FPdbConnection"].ProviderName;

        productsPerPage = System.Int32.Parse(ConfigurationManager.AppSettings["ProductsPerPage"]);
        productDescriptionLength = System.Int32.Parse(ConfigurationManager.AppSettings["ProductDescriptionLength"]);
        siteName = ConfigurationManager.AppSettings["SiteName"];
    }

    //Returns the conncetion string for the database
    public static string DbConnectionString
    {
        get
        {
            return dbConnectionString;
        }
    }

    // Returns the data provider name
    public static string DbProviderName
    {
        get
        {
            return dbProviderName;
        }
    }

    // Returns the address of the mail server
    public static string MailServer
    {
        get
        {
            return ConfigurationManager.AppSettings["MailServer"];
        }
    }
    // Returns the email username
    public static string MailUsername
    {
        get
        {
            return ConfigurationManager.AppSettings["MailUsername"];
        }
    }
    // Returns the email password
    public static string MailPassword
    {
        get
        {
            return ConfigurationManager.AppSettings["MailPassword"];
        }
    }
    // Returns the email password
    public static string MailFrom
    {
        get
        {
            return ConfigurationManager.AppSettings["MailFrom"];
        }
    }

   //Send error log emails?
    public static bool EnableErrorLogEmail
    {
        get
        {
            return bool.Parse(ConfigurationManager.AppSettings
            ["EnableErrorLogEmail"]);
        }
    }
    // Returns the email address where to send error reports
    public static string ErrorLogEmail
    {
        get
        {
            return ConfigurationManager.AppSettings["ErrorLogEmail"];
        }
    }

    // Returns the maximum number of products to be displayed on a page
    public static int ProductsPerPage
    {
        get
        {
            return productsPerPage;
        }
    }
    // Returns the length of product descriptions in products lists
    public static int ProductDescriptionLength
    {
        get
        {
            return productDescriptionLength;
        }
    }
    // Returns the name of the site
    public static string SiteName
    {
        get
        {
            return siteName;
        }
    }
}
