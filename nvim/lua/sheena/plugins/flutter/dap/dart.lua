local dap = require('dap')
dap.adapters.dart = {
  type = "executable",
  command = "node",
  args = {"/home/sheenazien/Documents/Code/apps/Dart-Code/out/dist/debug.js", "flutter"}
}
dap.configurations.dart = {
  {
    type = "dart",
    request = "launch",
    name = "Launch flutter",
    dartSdkPath = os.getenv('HOME').."/flutter/bin/cache/dart-sdk/",
    flutterSdkPath = os.getenv('HOME').."/flutter",
    program = "${workspaceFolder}/lib/main.dart",
    cwd = "${workspaceFolder}",
  }
}
