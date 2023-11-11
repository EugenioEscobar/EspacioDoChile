using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(EspacioDoChile.Startup))]
namespace EspacioDoChile
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
