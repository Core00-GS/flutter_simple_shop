//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <dd_js_util/dd_js_util_plugin.h>
#include <dd_models/dd_models_plugin_c_api.h>
#include <permission_handler_windows/permission_handler_windows_plugin.h>
#include <url_launcher_windows/url_launcher_windows.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  DdJsUtilPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("DdJsUtilPlugin"));
  DdModelsPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("DdModelsPluginCApi"));
  PermissionHandlerWindowsPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("PermissionHandlerWindowsPlugin"));
  UrlLauncherWindowsRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("UrlLauncherWindows"));
}
