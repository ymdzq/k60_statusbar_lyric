.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/dagger/ReferenceGlobalRootComponent;


# instance fields
.field public activityManagerActivityTypeProvider:Ljavax/inject/Provider;

.field public final androidInternalsModule:Lcom/android/systemui/dagger/AndroidInternalsModule;

.field public buildInfoProvider:Ljavax/inject/Provider;

.field public cloudDataManagerProvider:Ljavax/inject/Provider;

.field public final context:Landroid/content/Context;

.field public deviceStateManagerFoldProvider:Ljavax/inject/Provider;

.field public dumpManagerProvider:Ljavax/inject/Provider;

.field public executionImplProvider:Ljavax/inject/Provider;

.field public factoryProvider:Ljavax/inject/Provider;

.field public fixedTimingTransitionProgressProvider:Ljavax/inject/Provider;

.field public final frameworkServicesModule:Lcom/android/systemui/dagger/FrameworkServicesModule;

.field public final globalModule:Lcom/android/systemui/dagger/GlobalModule;

.field public hingeSensorAngleProvider:Ljavax/inject/Provider;

.field public final instrumentationTest:Ljava/lang/Boolean;

.field public lifecycleScreenStatusProvider:Ljavax/inject/Provider;

.field public lowLightTransitionCoordinatorProvider:Ljavax/inject/Provider;

.field public miPlayPluginManagerProvider:Ljavax/inject/Provider;

.field public multiShadeInputProxyProvider:Ljavax/inject/Provider;

.field public physicsBasedUnfoldTransitionProgressProvider:Ljavax/inject/Provider;

.field public pluginDependencyProvider:Ljavax/inject/Provider;

.field public pluginEnablerImplProvider:Ljavax/inject/Provider;

.field public provideAccessibilityManagerProvider:Ljavax/inject/Provider;

.field public provideActivityManagerProvider:Ljavax/inject/Provider;

.field public provideActivityTaskManagerProvider:Ljavax/inject/Provider;

.field public provideAlarmManagerProvider:Ljavax/inject/Provider;

.field public provideAppOpsManagerProvider:Ljavax/inject/Provider;

.field public provideApplicationContextProvider:Ljavax/inject/Provider;

.field public provideAsyncLayoutInflaterProvider:Ljavax/inject/Provider;

.field public provideAudioManagerProvider:Ljavax/inject/Provider;

.field public provideBluetoothAdapterProvider:Ljavax/inject/Provider;

.field public provideBluetoothManagerProvider:Ljavax/inject/Provider;

.field public provideCaptioningManagerProvider:Ljavax/inject/Provider;

.field public provideCarrierConfigManagerProvider:Ljavax/inject/Provider;

.field public provideClipboardManagerProvider:Ljavax/inject/Provider;

.field public provideColorDisplayManagerProvider:Ljavax/inject/Provider;

.field public provideConnectivityManagagerProvider:Ljavax/inject/Provider;

.field public provideContentResolverProvider:Ljavax/inject/Provider;

.field public provideCrossWindowBlurListenersProvider:Ljavax/inject/Provider;

.field public provideDevicePolicyManagerProvider:Ljavax/inject/Provider;

.field public provideDeviceStateManagerProvider:Ljavax/inject/Provider;

.field public provideDisplayManagerProvider:Ljavax/inject/Provider;

.field public provideDisplayMetricsProvider:Ljavax/inject/Provider;

.field public provideExecutionProvider:Ljavax/inject/Provider;

.field public provideFaceManagerProvider:Ljavax/inject/Provider;

.field public provideFoldStateProvider:Ljavax/inject/Provider;

.field public provideIActivityManagerProvider:Ljavax/inject/Provider;

.field public provideIActivityTaskManagerProvider:Ljavax/inject/Provider;

.field public provideIAudioServiceProvider:Ljavax/inject/Provider;

.field public provideIBatteryStatsProvider:Ljavax/inject/Provider;

.field public provideIDreamManagerProvider:Ljavax/inject/Provider;

.field public provideINotificationManagerProvider:Ljavax/inject/Provider;

.field public provideIPackageManagerProvider:Ljavax/inject/Provider;

.field public provideIStatusBarServiceProvider:Ljavax/inject/Provider;

.field public provideIWallPaperManagerProvider:Ljavax/inject/Provider;

.field public provideIWindowManagerProvider:Ljavax/inject/Provider;

.field public provideInputManagerProvider:Ljavax/inject/Provider;

.field public provideInputMethodManagerProvider:Ljavax/inject/Provider;

.field public provideInteractionJankMonitorProvider:Ljavax/inject/Provider;

.field public provideIsTestHarnessProvider:Ljavax/inject/Provider;

.field public provideJobSchedulerProvider:Ljavax/inject/Provider;

.field public provideKeyguardManagerProvider:Ljavax/inject/Provider;

.field public provideLatencyTrackerProvider:Ljavax/inject/Provider;

.field public provideLauncherAppsProvider:Ljavax/inject/Provider;

.field public provideLockPatternUtilsProvider:Ljavax/inject/Provider;

.field public provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

.field public provideMainExecutorProvider:Ljavax/inject/Provider;

.field public provideMainHandlerProvider:Ljavax/inject/Provider;

.field public provideMainLooperProvider:Ljavax/inject/Provider;

.field public provideMetricsLoggerProvider:Ljavax/inject/Provider;

.field public provideNaturalRotationProgressProvider:Ljavax/inject/Provider;

.field public provideNetworkScoreManagerProvider:Ljavax/inject/Provider;

.field public provideNotificationManagerCompatProvider:Ljavax/inject/Provider;

.field public provideNotificationManagerProvider:Ljavax/inject/Provider;

.field public provideOptionalTelecomManagerProvider:Ljavax/inject/Provider;

.field public provideOptionalVibratorProvider:Ljavax/inject/Provider;

.field public provideOverlayManagerProvider:Ljavax/inject/Provider;

.field public providePackageManagerProvider:Ljavax/inject/Provider;

.field public providePackageManagerWrapperProvider:Ljavax/inject/Provider;

.field public providePermissionManagerProvider:Ljavax/inject/Provider;

.field public providePluginInstanceManagerFactoryProvider:Ljavax/inject/Provider;

.field public providePowerExemptionManagerProvider:Ljavax/inject/Provider;

.field public providePowerManagerProvider:Ljavax/inject/Provider;

.field public provideProgressForwarderProvider:Ljavax/inject/Provider;

.field public provideRoleManagerProvider:Ljavax/inject/Provider;

.field public provideSafetyCenterManagerProvider:Ljavax/inject/Provider;

.field public provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;

.field public provideShellProgressProvider:Ljavax/inject/Provider;

.field public provideShortcutManagerProvider:Ljavax/inject/Provider;

.field public provideSmartspaceManagerProvider:Ljavax/inject/Provider;

.field public provideStatsManagerProvider:Ljavax/inject/Provider;

.field public provideStatusBarScopedTransitionProvider:Ljavax/inject/Provider;

.field public provideStorageManagerProvider:Ljavax/inject/Provider;

.field public provideSubscriptionManagerProvider:Ljavax/inject/Provider;

.field public provideTelecomManagerProvider:Ljavax/inject/Provider;

.field public provideTelephonyManagerProvider:Ljavax/inject/Provider;

.field public provideTextClassificationManagerProvider:Ljavax/inject/Provider;

.field public provideTrustManagerProvider:Ljavax/inject/Provider;

.field public provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

.field public provideUiEventLoggerProvider:Ljavax/inject/Provider;

.field public provideUiModeManagerProvider:Ljavax/inject/Provider;

.field public provideUnfoldOnlyProvider:Ljavax/inject/Provider;

.field public provideUserManagerProvider:Ljavax/inject/Provider;

.field public provideVibratorProvider:Ljavax/inject/Provider;

.field public provideViewConfigurationProvider:Ljavax/inject/Provider;

.field public provideWifiManagerProvider:Ljavax/inject/Provider;

.field public provideWindowManagerProvider:Ljavax/inject/Provider;

.field public providerLayoutInflaterProvider:Ljavax/inject/Provider;

.field public providesBiometricManagerProvider:Ljavax/inject/Provider;

.field public providesChoreographerProvider:Ljavax/inject/Provider;

.field public providesFingerprintManagerProvider:Ljavax/inject/Provider;

.field public providesFoldStateListenerProvider:Ljavax/inject/Provider;

.field public providesFoldStateLoggerProvider:Ljavax/inject/Provider;

.field public providesFoldStateLoggingProvider:Ljavax/inject/Provider;

.field public providesPluginExecutorProvider:Ljavax/inject/Provider;

.field public providesPluginInstanceFactoryProvider:Ljavax/inject/Provider;

.field public providesPluginManagerProvider:Ljavax/inject/Provider;

.field public providesSensorManagerProvider:Ljavax/inject/Provider;

.field public qSExpansionPathInterpolatorProvider:Ljavax/inject/Provider;

.field public final referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

.field public resourceUnfoldTransitionConfigProvider:Ljavax/inject/Provider;

.field public screenLifecycleProvider:Ljavax/inject/Provider;

.field public uncaughtExceptionPreHandlerManagerProvider:Ljavax/inject/Provider;

.field public unfoldKeyguardVisibilityManagerImplProvider:Ljavax/inject/Provider;

.field public unfoldKeyguardVisibilityManagerProvider:Ljavax/inject/Provider;

.field public unfoldKeyguardVisibilityProvider:Ljavax/inject/Provider;

.field public final unfoldSharedInternalModule:Lcom/android/systemui/unfold/UnfoldSharedInternalModule;

.field public final unfoldSharedModule:Lcom/android/systemui/unfold/UnfoldSharedModule;

.field public final unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

.field public unfoldTransitionProgressForwarderProvider:Ljavax/inject/Provider;

.field public unfoldTransitionProgressProvider:Ljavax/inject/Provider;


# direct methods
.method public static bridge synthetic -$$Nest$fgetbuildInfoProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->buildInfoProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetcloudDataManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->cloudDataManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetcontext(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetdumpManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmiPlayPluginManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->miPlayPluginManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmultiShadeInputProxyProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->multiShadeInputProxyProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetpluginDependencyProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->pluginDependencyProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideAccessibilityManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideActivityManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideActivityManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideActivityTaskManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideActivityTaskManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideAlarmManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideAppOpsManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideAppOpsManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideApplicationContextProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideAudioManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideAudioManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideBluetoothAdapterProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideBluetoothAdapterProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideCaptioningManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideCaptioningManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideCarrierConfigManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideCarrierConfigManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideClipboardManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideClipboardManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideColorDisplayManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideColorDisplayManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideConnectivityManagagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideConnectivityManagagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideContentResolverProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideContentResolverProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideCrossWindowBlurListenersProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideCrossWindowBlurListenersProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideDevicePolicyManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideDevicePolicyManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideDeviceStateManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideDeviceStateManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideDisplayManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideDisplayManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideDisplayMetricsProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideDisplayMetricsProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideExecutionProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideExecutionProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideFaceManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideFaceManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideFoldStateProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideFoldStateProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideIActivityManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideIActivityManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideIActivityTaskManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideIActivityTaskManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideIAudioServiceProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideIAudioServiceProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideIDreamManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideIDreamManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideINotificationManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideIStatusBarServiceProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideIWallPaperManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideIWallPaperManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideIWindowManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideInputManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideInputManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideInteractionJankMonitorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideInteractionJankMonitorProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideIsTestHarnessProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideIsTestHarnessProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideJobSchedulerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideJobSchedulerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideKeyguardManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideKeyguardManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideLatencyTrackerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideLatencyTrackerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideLauncherAppsProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideLauncherAppsProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideLockPatternUtilsProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideLockPatternUtilsProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideMainDelayableExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideMainExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideMainHandlerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideMainLooperProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMainLooperProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideMetricsLoggerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideNaturalRotationProgressProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideNaturalRotationProgressProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideNotificationManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideOverlayManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideOverlayManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovidePackageManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providePackageManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovidePermissionManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providePermissionManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovidePowerExemptionManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providePowerExemptionManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovidePowerManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideProgressForwarderProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideProgressForwarderProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideRoleManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideRoleManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideSafetyCenterManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideSafetyCenterManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideSensorPrivacyManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideShellProgressProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideShellProgressProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideShortcutManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideShortcutManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideSmartspaceManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideSmartspaceManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideStatsManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideStatsManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideStatusBarScopedTransitionProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideStatusBarScopedTransitionProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideStorageManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideStorageManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideSubscriptionManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideSubscriptionManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideTelecomManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideTelecomManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideTelephonyManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideTelephonyManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideTrustManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideTrustManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideUiBackgroundExecutorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideUiEventLoggerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideUiModeManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideUiModeManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideUserManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideUserManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideVibratorProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideVibratorProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideViewConfigurationProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideViewConfigurationProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideWifiManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideWifiManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovideWindowManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetproviderLayoutInflaterProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovidesBiometricManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providesBiometricManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovidesChoreographerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providesChoreographerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovidesFingerprintManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providesFingerprintManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovidesFoldStateListenerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providesFoldStateListenerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovidesPluginManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providesPluginManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetprovidesSensorManagerProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providesSensorManagerProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetscreenLifecycleProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetunfoldTransitionProgressProvider(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->unfoldTransitionProgressProvider:Ljavax/inject/Provider;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$mambientDisplayConfiguration(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->ambientDisplayConfiguration()Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static bridge synthetic -$$Nest$mdisplayIdInteger(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->displayIdInteger()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static bridge synthetic -$$Nest$mmainResources(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/res/Resources;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static bridge synthetic -$$Nest$mmainSharedPreferences(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->mainSharedPreferences()Landroid/content/SharedPreferences;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static bridge synthetic -$$Nest$mmediaSessionManager(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/media/session/MediaSessionManager;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->mediaSessionManager()Landroid/media/session/MediaSessionManager;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static bridge synthetic -$$Nest$mnotificationMessagingUtil(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Lcom/android/internal/util/NotificationMessagingUtil;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->notificationMessagingUtil()Lcom/android/internal/util/NotificationMessagingUtil;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static bridge synthetic -$$Nest$mwallpaperManager(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)Landroid/app/WallpaperManager;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->wallpaperManager()Landroid/app/WallpaperManager;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public constructor <init>(Lcom/android/systemui/dagger/GlobalModule;Lcom/android/systemui/dagger/AndroidInternalsModule;Lcom/android/systemui/dagger/FrameworkServicesModule;Lcom/android/systemui/unfold/UnfoldTransitionModule;Lcom/android/systemui/unfold/UnfoldSharedModule;Lcom/android/systemui/unfold/UnfoldSharedInternalModule;Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 5
    iput-object p8, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->instrumentationTest:Ljava/lang/Boolean;

    .line 7
    iput-object p7, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    .line 11
    iput-object p6, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->unfoldSharedInternalModule:Lcom/android/systemui/unfold/UnfoldSharedInternalModule;

    .line 13
    iput-object p5, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->unfoldSharedModule:Lcom/android/systemui/unfold/UnfoldSharedModule;

    .line 15
    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->androidInternalsModule:Lcom/android/systemui/dagger/AndroidInternalsModule;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->globalModule:Lcom/android/systemui/dagger/GlobalModule;

    .line 19
    iput-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->frameworkServicesModule:Lcom/android/systemui/dagger/FrameworkServicesModule;

    .line 21
    invoke-virtual/range {p0 .. p8}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->initialize(Lcom/android/systemui/dagger/GlobalModule;Lcom/android/systemui/dagger/AndroidInternalsModule;Lcom/android/systemui/dagger/FrameworkServicesModule;Lcom/android/systemui/unfold/UnfoldTransitionModule;Lcom/android/systemui/unfold/UnfoldSharedModule;Lcom/android/systemui/unfold/UnfoldSharedInternalModule;Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 23
    invoke-virtual/range {p0 .. p8}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->initialize2(Lcom/android/systemui/dagger/GlobalModule;Lcom/android/systemui/dagger/AndroidInternalsModule;Lcom/android/systemui/dagger/FrameworkServicesModule;Lcom/android/systemui/unfold/UnfoldTransitionModule;Lcom/android/systemui/unfold/UnfoldSharedModule;Lcom/android/systemui/unfold/UnfoldSharedInternalModule;Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 26
    return-void
    .line 29
.end method

.method public static builder()Lcom/android/systemui/dagger/ReferenceGlobalRootComponent$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$Builder;-><init>()V

    .line 4
    return-object v0
    .line 7
.end method


# virtual methods
.method public final aTraceLoggerTransitionProgressListener()Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-direct {v0}, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;-><init>()V

    .line 9
    return-object v0
    .line 12
.end method

.method public final ambientDisplayConfiguration()Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->frameworkServicesModule:Lcom/android/systemui/dagger/FrameworkServicesModule;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 9
    invoke-direct {v0, p0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 11
    return-object v0
    .line 14
.end method

.method public final deviceFoldStateProvider()Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;
    .locals 12

    .line 1
    new-instance v11, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->resourceUnfoldTransitionConfigProvider:Ljavax/inject/Provider;

    .line 4
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->hingeAngleProvider()Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    .line 13
    move-result-object v2

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->screenStatusProvider()Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;

    .line 17
    move-result-object v3

    .line 20
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->deviceStateManagerFoldProvider:Ljavax/inject/Provider;

    .line 21
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    move-object v4, v0

    .line 27
    check-cast v4, Lcom/android/systemui/unfold/updates/FoldProvider;

    .line 28
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->activityManagerActivityTypeProvider:Ljavax/inject/Provider;

    .line 30
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 35
    move-object v5, v0

    .line 36
    check-cast v5, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;

    .line 37
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->unfoldKeyguardVisibilityProvider:Ljavax/inject/Provider;

    .line 39
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 44
    move-object v6, v0

    .line 45
    check-cast v6, Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityManagerImpl;

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->rotationChangeProvider()Lcom/android/systemui/unfold/updates/RotationChangeProvider;

    .line 48
    move-result-object v7

    .line 51
    iget-object v8, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    .line 54
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 59
    move-object v9, v0

    .line 60
    check-cast v9, Ljava/util/concurrent/Executor;

    .line 61
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 63
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 65
    move-result-object p0

    .line 68
    move-object v10, p0

    .line 69
    check-cast v10, Landroid/os/Handler;

    .line 70
    move-object v0, v11

    .line 72
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;-><init>(Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;Lcom/android/systemui/unfold/updates/FoldProvider;Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;Lcom/android/systemui/unfold/util/UnfoldKeyguardVisibilityManagerImpl;Lcom/android/systemui/unfold/updates/RotationChangeProvider;Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    .line 73
    return-object v11
    .line 76
.end method

.method public final displayIdInteger()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getInitializationChecker()Lcom/android/systemui/util/InitializationChecker;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/util/InitializationChecker;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->instrumentationTest:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result p0

    .line 9
    invoke-direct {v0, p0}, Lcom/android/systemui/util/InitializationChecker;-><init>(Z)V

    .line 10
    return-object v0
    .line 13
.end method

.method public final getSysUIComponent()Lcom/android/systemui/dagger/ReferenceSysUIComponent$Builder;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    invoke-direct {v0, p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentBuilder;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)V

    return-object v0
.end method

.method public final bridge synthetic getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->getSysUIComponent()Lcom/android/systemui/dagger/ReferenceSysUIComponent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final getWMComponentBuilder()Lcom/android/systemui/dagger/WMComponent$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentBuilder;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 4
    invoke-direct {v0, p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentBuilder;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;)V

    .line 6
    return-object v0
    .line 9
.end method

.method public final hingeAngleProvider()Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->unfoldSharedInternalModule:Lcom/android/systemui/unfold/UnfoldSharedInternalModule;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->resourceUnfoldTransitionConfigProvider:Ljavax/inject/Provider;

    .line 4
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 9
    check-cast v1, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->hingeSensorAngleProvider:Ljavax/inject/Provider;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iget-object v0, v1, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;->isHingeAngleEnabled$delegate:Lkotlin/Lazy;

    .line 17
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Boolean;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 34
    check-cast p0, Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    .line 35
    goto :goto_0

    .line 37
    :cond_0
    sget-object p0, Lcom/android/systemui/unfold/updates/hinge/EmptyHingeAngleProvider;->INSTANCE:Lcom/android/systemui/unfold/updates/hinge/EmptyHingeAngleProvider;

    .line 38
    :goto_0
    return-object p0
    .line 40
.end method

.method public final initialize(Lcom/android/systemui/dagger/GlobalModule;Lcom/android/systemui/dagger/AndroidInternalsModule;Lcom/android/systemui/dagger/FrameworkServicesModule;Lcom/android/systemui/unfold/UnfoldTransitionModule;Lcom/android/systemui/unfold/UnfoldSharedModule;Lcom/android/systemui/unfold/UnfoldSharedInternalModule;Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 2
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 4
    const/4 p3, 0x0

    .line 6
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 7
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 10
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 14
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 16
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 18
    const/4 p3, 0x1

    .line 20
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 21
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 24
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 28
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 30
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 32
    const/4 p3, 0x3

    .line 34
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 35
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 38
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->resourceUnfoldTransitionConfigProvider:Ljavax/inject/Provider;

    .line 42
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 44
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 46
    const/4 p3, 0x6

    .line 48
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 49
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 52
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideContentResolverProvider:Ljavax/inject/Provider;

    .line 56
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 58
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 60
    const/4 p3, 0x5

    .line 62
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 63
    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 66
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->factoryProvider:Ljavax/inject/Provider;

    .line 70
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 72
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 74
    const/16 p3, 0xa

    .line 76
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 78
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 81
    move-result-object p1

    .line 84
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providesSensorManagerProvider:Ljavax/inject/Provider;

    .line 85
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 87
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 89
    const/16 p3, 0xb

    .line 91
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 93
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 96
    move-result-object p1

    .line 99
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideUiBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 100
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 102
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 104
    const/16 p3, 0x9

    .line 106
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 108
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->hingeSensorAngleProvider:Ljavax/inject/Provider;

    .line 111
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 113
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 115
    const/16 p3, 0xe

    .line 117
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 119
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 122
    move-result-object p1

    .line 125
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 126
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 128
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 130
    const/16 p3, 0xd

    .line 132
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 134
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 137
    move-result-object p1

    .line 140
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    .line 141
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 143
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 145
    const/16 p3, 0xc

    .line 147
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 149
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 152
    move-result-object p1

    .line 155
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->lifecycleScreenStatusProvider:Ljavax/inject/Provider;

    .line 156
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 158
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 160
    const/16 p3, 0x10

    .line 162
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 164
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 167
    move-result-object p1

    .line 170
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideDeviceStateManagerProvider:Ljavax/inject/Provider;

    .line 171
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 173
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 175
    const/16 p3, 0xf

    .line 177
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 179
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 182
    move-result-object p1

    .line 185
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->deviceStateManagerFoldProvider:Ljavax/inject/Provider;

    .line 186
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 188
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 190
    const/16 p3, 0x12

    .line 192
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 194
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 197
    move-result-object p1

    .line 200
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideActivityManagerProvider:Ljavax/inject/Provider;

    .line 201
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 203
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 205
    const/16 p3, 0x11

    .line 207
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 209
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 212
    move-result-object p1

    .line 215
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->activityManagerActivityTypeProvider:Ljavax/inject/Provider;

    .line 216
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 218
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 220
    const/16 p3, 0x14

    .line 222
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 224
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 227
    move-result-object p1

    .line 230
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->unfoldKeyguardVisibilityManagerImplProvider:Ljavax/inject/Provider;

    .line 231
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 233
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 235
    const/16 p3, 0x13

    .line 237
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 239
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 242
    move-result-object p1

    .line 245
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->unfoldKeyguardVisibilityProvider:Ljavax/inject/Provider;

    .line 246
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 248
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 250
    const/16 p3, 0x15

    .line 252
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 254
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 257
    move-result-object p1

    .line 260
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideDisplayManagerProvider:Ljavax/inject/Provider;

    .line 261
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 263
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 265
    const/16 p3, 0x17

    .line 267
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 269
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMainLooperProvider:Ljavax/inject/Provider;

    .line 272
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 274
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 276
    const/16 p3, 0x16

    .line 278
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 280
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 283
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 285
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 287
    const/16 p3, 0x18

    .line 289
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 291
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 294
    move-result-object p1

    .line 297
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    .line 298
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 300
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 302
    const/16 p3, 0x8

    .line 304
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 306
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 309
    move-result-object p1

    .line 312
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideFoldStateProvider:Ljavax/inject/Provider;

    .line 313
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 315
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 317
    const/4 p3, 0x7

    .line 319
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 320
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->physicsBasedUnfoldTransitionProgressProvider:Ljavax/inject/Provider;

    .line 323
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 325
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 327
    const/16 p3, 0x19

    .line 329
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 331
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->fixedTimingTransitionProgressProvider:Ljavax/inject/Provider;

    .line 334
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 336
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 338
    const/4 p3, 0x4

    .line 340
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 341
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 344
    move-result-object p1

    .line 347
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->unfoldTransitionProgressProvider:Ljavax/inject/Provider;

    .line 348
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 350
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 352
    const/16 p3, 0x1a

    .line 354
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 356
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 359
    move-result-object p1

    .line 362
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideUnfoldOnlyProvider:Ljavax/inject/Provider;

    .line 363
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 365
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 367
    const/4 p3, 0x2

    .line 369
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 370
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 373
    move-result-object p1

    .line 376
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideShellProgressProvider:Ljavax/inject/Provider;

    .line 377
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 379
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 381
    const/16 p3, 0x1b

    .line 383
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 385
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 388
    move-result-object p1

    .line 391
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideActivityTaskManagerProvider:Ljavax/inject/Provider;

    .line 392
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 394
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 396
    const/16 p3, 0x1c

    .line 398
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 400
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 403
    move-result-object p1

    .line 406
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    .line 407
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 409
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 411
    const/16 p3, 0x1d

    .line 413
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 415
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 418
    move-result-object p1

    .line 421
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    .line 422
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 424
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 426
    const/16 p3, 0x1e

    .line 428
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 430
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 433
    move-result-object p1

    .line 436
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideUserManagerProvider:Ljavax/inject/Provider;

    .line 437
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 439
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 441
    const/16 p3, 0x1f

    .line 443
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 445
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 448
    move-result-object p1

    .line 451
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideLauncherAppsProvider:Ljavax/inject/Provider;

    .line 452
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 454
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 456
    const/16 p3, 0x20

    .line 458
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 460
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 463
    move-result-object p1

    .line 466
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideInteractionJankMonitorProvider:Ljavax/inject/Provider;

    .line 467
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 469
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 471
    const/16 p3, 0x21

    .line 473
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 475
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 478
    move-result-object p1

    .line 481
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providePackageManagerProvider:Ljavax/inject/Provider;

    .line 482
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 484
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 486
    const/16 p3, 0x22

    .line 488
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 490
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 493
    move-result-object p1

    .line 496
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideIActivityManagerProvider:Ljavax/inject/Provider;

    .line 497
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 499
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 501
    const/16 p3, 0x23

    .line 503
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 505
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 508
    move-result-object p1

    .line 511
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    .line 512
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 514
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 516
    const/16 p3, 0x26

    .line 518
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 520
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 523
    move-result-object p1

    .line 526
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providesPluginExecutorProvider:Ljavax/inject/Provider;

    .line 527
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 529
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 531
    const/16 p3, 0x27

    .line 533
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 535
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 538
    move-result-object p1

    .line 541
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    .line 542
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 544
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 546
    const/16 p3, 0x28

    .line 548
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 550
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 553
    move-result-object p1

    .line 556
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->pluginEnablerImplProvider:Ljavax/inject/Provider;

    .line 557
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 559
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 561
    const/16 p3, 0x29

    .line 563
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 565
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 568
    move-result-object p1

    .line 571
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providesPluginInstanceFactoryProvider:Ljavax/inject/Provider;

    .line 572
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 574
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 576
    const/16 p3, 0x25

    .line 578
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 580
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 583
    move-result-object p1

    .line 586
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providePluginInstanceManagerFactoryProvider:Ljavax/inject/Provider;

    .line 587
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 589
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 591
    const/16 p3, 0x2a

    .line 593
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 595
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 598
    move-result-object p1

    .line 601
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->uncaughtExceptionPreHandlerManagerProvider:Ljavax/inject/Provider;

    .line 602
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 604
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 606
    const/16 p3, 0x24

    .line 608
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 610
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 613
    move-result-object p1

    .line 616
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providesPluginManagerProvider:Ljavax/inject/Provider;

    .line 617
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 619
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 621
    const/16 p3, 0x2b

    .line 623
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 625
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideDisplayMetricsProvider:Ljavax/inject/Provider;

    .line 628
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 630
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 632
    const/16 p3, 0x2c

    .line 634
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 636
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 639
    move-result-object p1

    .line 642
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    .line 643
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 645
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 647
    const/16 p3, 0x2e

    .line 649
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 651
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    .line 654
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 656
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 658
    const/16 p3, 0x2d

    .line 660
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 662
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 665
    move-result-object p1

    .line 668
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providesFoldStateListenerProvider:Ljavax/inject/Provider;

    .line 669
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 671
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 673
    const/16 p3, 0x2f

    .line 675
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 677
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 680
    move-result-object p1

    .line 683
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideViewConfigurationProvider:Ljavax/inject/Provider;

    .line 684
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 686
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 688
    const/16 p3, 0x30

    .line 690
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 692
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 695
    move-result-object p1

    .line 698
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideLockPatternUtilsProvider:Ljavax/inject/Provider;

    .line 699
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 701
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 703
    const/16 p3, 0x31

    .line 705
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 707
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 710
    move-result-object p1

    .line 713
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideIsTestHarnessProvider:Ljavax/inject/Provider;

    .line 714
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 716
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 718
    const/16 p3, 0x32

    .line 720
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 722
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideIWallPaperManagerProvider:Ljavax/inject/Provider;

    .line 725
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 727
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 729
    const/16 p3, 0x33

    .line 731
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 733
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->executionImplProvider:Ljavax/inject/Provider;

    .line 736
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 738
    move-result-object p1

    .line 741
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideExecutionProvider:Ljavax/inject/Provider;

    .line 742
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 744
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 746
    const/16 p3, 0x34

    .line 748
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 750
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 753
    move-result-object p1

    .line 756
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providesFingerprintManagerProvider:Ljavax/inject/Provider;

    .line 757
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 759
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 761
    const/16 p3, 0x35

    .line 763
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 765
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 768
    move-result-object p1

    .line 771
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideFaceManagerProvider:Ljavax/inject/Provider;

    .line 772
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 774
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 776
    const/16 p3, 0x36

    .line 778
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 780
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 783
    move-result-object p1

    .line 786
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    .line 787
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 789
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 791
    const/16 p3, 0x37

    .line 793
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 795
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 798
    move-result-object p1

    .line 801
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 802
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 804
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 806
    const/16 p3, 0x38

    .line 808
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 810
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 813
    move-result-object p1

    .line 816
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideTrustManagerProvider:Ljavax/inject/Provider;

    .line 817
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 819
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 821
    const/16 p3, 0x39

    .line 823
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 825
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 828
    move-result-object p1

    .line 831
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providesChoreographerProvider:Ljavax/inject/Provider;

    .line 832
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 834
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 836
    const/16 p3, 0x3a

    .line 838
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 840
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 843
    move-result-object p1

    .line 846
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    .line 847
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 849
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 851
    const/16 p3, 0x3b

    .line 853
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 855
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 858
    move-result-object p1

    .line 861
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideDevicePolicyManagerProvider:Ljavax/inject/Provider;

    .line 862
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 864
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 866
    const/16 p3, 0x3c

    .line 868
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 870
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 873
    move-result-object p1

    .line 876
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->buildInfoProvider:Ljavax/inject/Provider;

    .line 877
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 879
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 881
    const/16 p3, 0x3d

    .line 883
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 885
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 888
    move-result-object p1

    .line 891
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    .line 892
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 894
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 896
    const/16 p3, 0x3e

    .line 898
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 900
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 903
    move-result-object p1

    .line 906
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideNaturalRotationProgressProvider:Ljavax/inject/Provider;

    .line 907
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 909
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 911
    const/16 p3, 0x3f

    .line 913
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 915
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 918
    move-result-object p1

    .line 921
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideStatusBarScopedTransitionProvider:Ljavax/inject/Provider;

    .line 922
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 924
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 926
    const/16 p3, 0x40

    .line 928
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 930
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 933
    move-result-object p1

    .line 936
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideShortcutManagerProvider:Ljavax/inject/Provider;

    .line 937
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 939
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 941
    const/16 p3, 0x41

    .line 943
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 945
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 948
    move-result-object p1

    .line 951
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideIDreamManagerProvider:Ljavax/inject/Provider;

    .line 952
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 954
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 956
    const/16 p3, 0x42

    .line 958
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 960
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 963
    move-result-object p1

    .line 966
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->cloudDataManagerProvider:Ljavax/inject/Provider;

    .line 967
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 969
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 971
    const/16 p3, 0x43

    .line 973
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 975
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 978
    move-result-object p1

    .line 981
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideVibratorProvider:Ljavax/inject/Provider;

    .line 982
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 984
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 986
    const/16 p3, 0x44

    .line 988
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 990
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 993
    move-result-object p1

    .line 996
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideLatencyTrackerProvider:Ljavax/inject/Provider;

    .line 997
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 999
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1001
    const/16 p3, 0x45

    .line 1003
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1005
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1008
    move-result-object p1

    .line 1011
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideSmartspaceManagerProvider:Ljavax/inject/Provider;

    .line 1012
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1014
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1016
    const/16 p3, 0x47

    .line 1018
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1020
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->unfoldTransitionProgressForwarderProvider:Ljavax/inject/Provider;

    .line 1023
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1025
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1027
    const/16 p3, 0x46

    .line 1029
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1031
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1034
    move-result-object p1

    .line 1037
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideProgressForwarderProvider:Ljavax/inject/Provider;

    .line 1038
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1040
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1042
    const/16 p3, 0x48

    .line 1044
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1046
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1049
    move-result-object p1

    .line 1052
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideKeyguardManagerProvider:Ljavax/inject/Provider;

    .line 1053
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1055
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1057
    const/16 p3, 0x49

    .line 1059
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1061
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1064
    move-result-object p1

    .line 1067
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providePackageManagerWrapperProvider:Ljavax/inject/Provider;

    .line 1068
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1070
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1072
    const/16 p3, 0x4a

    .line 1074
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1076
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1079
    move-result-object p1

    .line 1082
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideAudioManagerProvider:Ljavax/inject/Provider;

    .line 1083
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1085
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1087
    const/16 p3, 0x4b

    .line 1089
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1091
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1094
    move-result-object p1

    .line 1097
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;

    .line 1098
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1100
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1102
    const/16 p3, 0x4c

    .line 1104
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1106
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1109
    move-result-object p1

    .line 1112
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideStatsManagerProvider:Ljavax/inject/Provider;

    .line 1113
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1115
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1117
    const/16 p3, 0x4d

    .line 1119
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1121
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1124
    move-result-object p1

    .line 1127
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideCarrierConfigManagerProvider:Ljavax/inject/Provider;

    .line 1128
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1130
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1132
    const/16 p3, 0x4e

    .line 1134
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1136
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1139
    move-result-object p1

    .line 1142
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideSubscriptionManagerProvider:Ljavax/inject/Provider;

    .line 1143
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1145
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1147
    const/16 p3, 0x4f

    .line 1149
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1151
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1154
    move-result-object p1

    .line 1157
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideConnectivityManagagerProvider:Ljavax/inject/Provider;

    .line 1158
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1160
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1162
    const/16 p3, 0x50

    .line 1164
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1166
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1169
    move-result-object p1

    .line 1172
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideTelephonyManagerProvider:Ljavax/inject/Provider;

    .line 1173
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1175
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1177
    const/16 p3, 0x51

    .line 1179
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1181
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1184
    move-result-object p1

    .line 1187
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideWifiManagerProvider:Ljavax/inject/Provider;

    .line 1188
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1190
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1192
    const/16 p3, 0x52

    .line 1194
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1196
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1199
    move-result-object p1

    .line 1202
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideNetworkScoreManagerProvider:Ljavax/inject/Provider;

    .line 1203
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1205
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1207
    const/16 p3, 0x53

    .line 1209
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1211
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1214
    move-result-object p1

    .line 1217
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providesBiometricManagerProvider:Ljavax/inject/Provider;

    .line 1218
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1220
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1222
    const/16 p3, 0x54

    .line 1224
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1226
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1229
    move-result-object p1

    .line 1232
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providePowerExemptionManagerProvider:Ljavax/inject/Provider;

    .line 1233
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1235
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1237
    const/16 p3, 0x55

    .line 1239
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1241
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1244
    move-result-object p1

    .line 1247
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideCrossWindowBlurListenersProvider:Ljavax/inject/Provider;

    .line 1248
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1250
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1252
    const/16 p3, 0x56

    .line 1254
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1256
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1259
    move-result-object p1

    .line 1262
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideAlarmManagerProvider:Ljavax/inject/Provider;

    .line 1263
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1265
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1267
    const/16 p3, 0x57

    .line 1269
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1271
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1274
    move-result-object p1

    .line 1277
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providePermissionManagerProvider:Ljavax/inject/Provider;

    .line 1278
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1280
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1282
    const/16 p3, 0x58

    .line 1284
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1286
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1289
    move-result-object p1

    .line 1292
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideSafetyCenterManagerProvider:Ljavax/inject/Provider;

    .line 1293
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1295
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1297
    const/16 p3, 0x59

    .line 1299
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1301
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1304
    move-result-object p1

    .line 1307
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideColorDisplayManagerProvider:Ljavax/inject/Provider;

    .line 1308
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1310
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1312
    const/16 p3, 0x5b

    .line 1314
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1316
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1319
    move-result-object p1

    .line 1322
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideBluetoothManagerProvider:Ljavax/inject/Provider;

    .line 1323
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1325
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1327
    const/16 p3, 0x5a

    .line 1329
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1331
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1334
    move-result-object p1

    .line 1337
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideBluetoothAdapterProvider:Ljavax/inject/Provider;

    .line 1338
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1340
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1342
    const/16 p3, 0x5c

    .line 1344
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1346
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1349
    move-result-object p1

    .line 1352
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->miPlayPluginManagerProvider:Ljavax/inject/Provider;

    .line 1353
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1355
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1357
    const/16 p3, 0x5d

    .line 1359
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1361
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1364
    move-result-object p1

    .line 1367
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->pluginDependencyProvider:Ljavax/inject/Provider;

    .line 1368
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1370
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1372
    const/16 p3, 0x5e

    .line 1374
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1376
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1379
    move-result-object p1

    .line 1382
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideRoleManagerProvider:Ljavax/inject/Provider;

    .line 1383
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1385
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1387
    const/16 p3, 0x5f

    .line 1389
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1391
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1394
    move-result-object p1

    .line 1397
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideIAudioServiceProvider:Ljavax/inject/Provider;

    .line 1398
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1400
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1402
    const/16 p3, 0x60

    .line 1404
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1406
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1409
    move-result-object p1

    .line 1412
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideCaptioningManagerProvider:Ljavax/inject/Provider;

    .line 1413
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1415
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1417
    const/16 p3, 0x61

    .line 1419
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1421
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1424
    move-result-object p1

    .line 1427
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideTelecomManagerProvider:Ljavax/inject/Provider;

    .line 1428
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 1430
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 1432
    const/16 p3, 0x62

    .line 1434
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 1436
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 1439
    move-result-object p1

    .line 1442
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideIBatteryStatsProvider:Ljavax/inject/Provider;

    .line 1443
    return-void
    .line 1445
.end method

.method public final initialize2(Lcom/android/systemui/dagger/GlobalModule;Lcom/android/systemui/dagger/AndroidInternalsModule;Lcom/android/systemui/dagger/FrameworkServicesModule;Lcom/android/systemui/unfold/UnfoldTransitionModule;Lcom/android/systemui/unfold/UnfoldSharedModule;Lcom/android/systemui/unfold/UnfoldSharedInternalModule;Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 2
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 4
    const/16 p3, 0x63

    .line 6
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 8
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 11
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideIActivityTaskManagerProvider:Ljavax/inject/Provider;

    .line 15
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 17
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 19
    const/16 p3, 0x64

    .line 21
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 23
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 26
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideInputManagerProvider:Ljavax/inject/Provider;

    .line 30
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 32
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 34
    const/16 p3, 0x65

    .line 36
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 38
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 41
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideUiModeManagerProvider:Ljavax/inject/Provider;

    .line 45
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 47
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 49
    const/16 p3, 0x66

    .line 51
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 53
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 56
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideAppOpsManagerProvider:Ljavax/inject/Provider;

    .line 60
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 62
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 64
    const/16 p3, 0x67

    .line 66
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 68
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 71
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providesFoldStateLoggingProvider:Ljavax/inject/Provider;

    .line 75
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 77
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 79
    const/16 p3, 0x68

    .line 81
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 83
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 86
    move-result-object p1

    .line 89
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->providesFoldStateLoggerProvider:Ljavax/inject/Provider;

    .line 90
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 92
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 94
    const/16 p3, 0x69

    .line 96
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 98
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 101
    move-result-object p1

    .line 104
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideJobSchedulerProvider:Ljavax/inject/Provider;

    .line 105
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 107
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 109
    const/16 p3, 0x6a

    .line 111
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 113
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 116
    move-result-object p1

    .line 119
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideTextClassificationManagerProvider:Ljavax/inject/Provider;

    .line 120
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 122
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 124
    const/16 p3, 0x6b

    .line 126
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 128
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 131
    move-result-object p1

    .line 134
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideClipboardManagerProvider:Ljavax/inject/Provider;

    .line 135
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 137
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 139
    const/16 p3, 0x6c

    .line 141
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 143
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 146
    move-result-object p1

    .line 149
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideStorageManagerProvider:Ljavax/inject/Provider;

    .line 150
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 152
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 154
    const/16 p3, 0x6d

    .line 156
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 158
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 161
    move-result-object p1

    .line 164
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideOverlayManagerProvider:Ljavax/inject/Provider;

    .line 165
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 167
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 169
    const/16 p3, 0x6e

    .line 171
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 173
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 176
    move-result-object p1

    .line 179
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideNotificationManagerCompatProvider:Ljavax/inject/Provider;

    .line 180
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 182
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 184
    const/16 p3, 0x6f

    .line 186
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 188
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 191
    move-result-object p1

    .line 194
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->unfoldKeyguardVisibilityManagerProvider:Ljavax/inject/Provider;

    .line 195
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 197
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 199
    const/16 p3, 0x70

    .line 201
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 203
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 206
    move-result-object p1

    .line 209
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideIPackageManagerProvider:Ljavax/inject/Provider;

    .line 210
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 212
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 214
    const/16 p3, 0x71

    .line 216
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 218
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 221
    move-result-object p1

    .line 224
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideOptionalTelecomManagerProvider:Ljavax/inject/Provider;

    .line 225
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 227
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 229
    const/16 p3, 0x72

    .line 231
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 233
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 236
    move-result-object p1

    .line 239
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideInputMethodManagerProvider:Ljavax/inject/Provider;

    .line 240
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 242
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 244
    const/16 p3, 0x73

    .line 246
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 248
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 251
    move-result-object p1

    .line 254
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->multiShadeInputProxyProvider:Ljavax/inject/Provider;

    .line 255
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 257
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 259
    const/16 p3, 0x74

    .line 261
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 263
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 266
    move-result-object p1

    .line 269
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideOptionalVibratorProvider:Ljavax/inject/Provider;

    .line 270
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 272
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 274
    const/16 p3, 0x75

    .line 276
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 278
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 281
    move-result-object p1

    .line 284
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->qSExpansionPathInterpolatorProvider:Ljavax/inject/Provider;

    .line 285
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 287
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 289
    const/16 p3, 0x76

    .line 291
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 293
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 296
    move-result-object p1

    .line 299
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->lowLightTransitionCoordinatorProvider:Ljavax/inject/Provider;

    .line 300
    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;

    .line 302
    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->referenceGlobalRootComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;

    .line 304
    const/16 p3, 0x77

    .line 306
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;I)V

    .line 308
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 311
    move-result-object p1

    .line 314
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideAsyncLayoutInflaterProvider:Ljavax/inject/Provider;

    .line 315
    return-void
    .line 317
.end method

.method public final mainResources()Landroid/content/res/Resources;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 7
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 8
    return-object p0
    .line 11
.end method

.method public final mainSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->frameworkServicesModule:Lcom/android/systemui/dagger/FrameworkServicesModule;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 14
    move-result-object p0

    .line 17
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 18
    return-object p0
    .line 21
.end method

.method public final mediaRouter2Manager()Landroid/media/MediaRouter2Manager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 2
    invoke-static {p0}, Landroid/media/MediaRouter2Manager;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;

    .line 4
    move-result-object p0

    .line 7
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 8
    return-object p0
    .line 11
.end method

.method public final mediaSessionManager()Landroid/media/session/MediaSessionManager;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 2
    const-class v0, Landroid/media/session/MediaSessionManager;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Landroid/media/session/MediaSessionManager;

    .line 10
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 12
    return-object p0
    .line 15
.end method

.method public final namedListOfString()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 2
    invoke-static {p0}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPrivilegedPluginsFactory;->providesPrivilegedPlugins(Landroid/content/Context;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final notificationMessagingUtil()Lcom/android/internal/util/NotificationMessagingUtil;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->androidInternalsModule:Lcom/android/systemui/dagger/AndroidInternalsModule;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Lcom/android/internal/util/NotificationMessagingUtil;

    .line 9
    invoke-direct {v0, p0}, Lcom/android/internal/util/NotificationMessagingUtil;-><init>(Landroid/content/Context;)V

    .line 11
    return-object v0
    .line 14
.end method

.method public final pluginPrefs()Lcom/android/systemui/shared/plugins/PluginPrefs;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 2
    invoke-static {p0}, Lcom/android/systemui/plugins/PluginsModule_ProvidesPluginPrefsFactory;->providesPluginPrefs(Landroid/content/Context;)Lcom/android/systemui/shared/plugins/PluginPrefs;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final rotationChangeProvider()Lcom/android/systemui/unfold/updates/RotationChangeProvider;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/unfold/updates/RotationChangeProvider;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideDisplayManagerProvider:Ljavax/inject/Provider;

    .line 4
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 9
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 10
    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 14
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 19
    check-cast p0, Landroid/os/Handler;

    .line 20
    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/unfold/updates/RotationChangeProvider;-><init>(Landroid/hardware/display/DisplayManager;Landroid/content/Context;Landroid/os/Handler;)V

    .line 22
    return-object v0
    .line 25
.end method

.method public final screenStatusProvider()Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->unfoldTransitionModule:Lcom/android/systemui/unfold/UnfoldTransitionModule;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->lifecycleScreenStatusProvider:Ljavax/inject/Provider;

    .line 4
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    return-object p0
    .line 15
.end method

.method public final wallpaperManager()Landroid/app/WallpaperManager;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->context:Landroid/content/Context;

    .line 2
    const-class v0, Landroid/app/WallpaperManager;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/WallpaperManager;

    .line 10
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 12
    return-object p0
    .line 15
.end method
