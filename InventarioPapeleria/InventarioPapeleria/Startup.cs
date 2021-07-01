using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(InventarioPapeleria.Startup))]
namespace InventarioPapeleria
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
