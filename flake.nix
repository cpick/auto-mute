{
  description = "Mute system volume on login and screen lock";

  outputs =
    { self }:
    {
      darwinModules.default = {
        launchd.agents.auto-mute = {
          command = ./auto-mute;
          serviceConfig.KeepAlive = true;
        };
      };
    };
}
