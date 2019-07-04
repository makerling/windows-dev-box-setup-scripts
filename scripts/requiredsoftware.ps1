#installing dependencies for dev environment via chocolatey

cinst chocolateygui -y
cinst dotnetfx -y
cinst git.install -y
cinst Google Chrome -y
cinst visualstudio2017community -y

#installing workloads/components for building FLEx9
#default vsinstaller location vs 2017
$vsStudioInstaller = "C:\Program Files (x86)\Microsoft Visual Studio\Installer\vs_installer.exe"
$vsStudioInstallLocation = "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community"

#workload/component IDs 
#from here: https://docs.microsoft.com/en-us/visualstudio/install/workload-component-id-vs-community?vs-2017&view=vs-2017

#.NET desktop development workload
$wkload1ID = "Microsoft.VisualStudio.Workload.ManagedDesktop"

#Desktop development with C++ workload
$wkload2ID = "Microsoft.VisualStudio.Workload.NativeDesktop"

#Python development workload
$wkload3ID = "Microsoft.VisualStudio.Workload.Python"

#.NET Core cross-platform development workload
$wkload4ID = "Microsoft.VisualStudio.Workload.NetCoreTools"

#Universal Windows Platform development workload
$wkload5ID = "Microsoft.VisualStudio.Workload.Universal"

#Windows Universal CRT SDK component
$cmp1ID = "Microsoft.Component.VC.Runtime.UCRTSDK"

#Windows 8.1 SDK component
$cmp2ID = "Microsoft.VisualStudio.Component.Windows81SDK"

#https://stackoverflow.com/questions/2608144/how-to-split-long-commands-over-multiple-lines-in-powershell
{& $vsStudioInstaller @Args} | % Invoke @(
  '--add'
  $wkload1ID
  '--add'
  $wkload2ID
  '--add'
  $wkload3ID
  '--add'
  $wkload4ID
  '--add'
  $wkload5ID
  '--add'
  $cmp1ID
  '--add'
  $cmp2ID
  '--passive'
  '--norestart'
)
