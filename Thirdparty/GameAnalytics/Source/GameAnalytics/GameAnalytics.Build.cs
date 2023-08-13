using System.IO;
using Flax.Build;
using Flax.Build.NativeCpp;

/// <summary>
/// GameAnalytics SDK
/// </summary>
public class GameAnalytics : DepsModule
{
    /// <inheritdoc />
    public override void Init()
    {
        base.Init();

        LicenseType = LicenseTypes.Custom;
        LicenseFilePath = "LICENSE";
        BinaryModuleName = null;
        BuildNativeCode = false;
    }

    /// <inheritdoc />
    public override void Setup(BuildOptions options)
    {
        base.Setup(options);

        var binariesFolder = Path.Combine(FolderPath, "Binaries", options.Platform.Target.ToString());
        switch (options.Platform.Target)
        {
        case TargetPlatform.Windows:
			options.OutputFiles.Add("ws2_32.lib");
			options.OutputFiles.Add("gdi32.lib");
			options.OutputFiles.Add("crypt32.lib");
			options.OutputFiles.Add(Path.Combine(binariesFolder, "Sqlite.lib"));
			options.OutputFiles.Add(Path.Combine(binariesFolder, "libcurl.lib"));
			options.OutputFiles.Add(Path.Combine(binariesFolder, "libeay32.lib"));
            options.OutputFiles.Add(Path.Combine(binariesFolder, "ssleay32.lib"));
			options.OutputFiles.Add(Path.Combine(binariesFolder, "GameAnalytics.lib"));
            break;
        case TargetPlatform.Linux:
        case TargetPlatform.Mac:
			options.DependencyFiles.Add(Path.Combine(binariesFolder, "libSqlite.a"));
            options.Libraries.Add(Path.Combine(binariesFolder, "libSqlite.a"));
            options.DependencyFiles.Add(Path.Combine(binariesFolder, "libcurl.a"));
            options.Libraries.Add(Path.Combine(binariesFolder, "libcurl.a"));
			options.DependencyFiles.Add(Path.Combine(binariesFolder, "libcrypto.a"));
            options.Libraries.Add(Path.Combine(binariesFolder, "libcrypto.a"));
			options.DependencyFiles.Add(Path.Combine(binariesFolder, "libssl.a"));
            options.Libraries.Add(Path.Combine(binariesFolder, "libssl.a"));
			options.DependencyFiles.Add(Path.Combine(binariesFolder, "libGameAnalytics.a"));
            options.Libraries.Add(Path.Combine(binariesFolder, "libGameAnalytics.a"));
            break;
        }
    }
}
