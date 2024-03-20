.class public Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "DevelopmentSettingsDashboardFragment.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;
.implements Lcom/android/settings/development/OemUnlockDialogHost;
.implements Lcom/android/settings/development/AdbDialogHost;
.implements Lcom/android/settings/development/AdbClearKeysDialogHost;
.implements Lcom/android/settings/development/LogPersistDialogHost;
.implements Lcom/android/settings/development/BluetoothRebootDialog$OnRebootDialogListener;
.implements Lcom/android/settings/development/DemoModeDialogHost;
.implements Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController$Callback;
.implements Lcom/android/settings/development/NfcRebootDialog$OnNfcRebootDialogConfirmedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$BluetoothOnModeChangedListener;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private final btBroadcastAudioReceiver:Landroid/content/BroadcastReceiver;

.field carDiagnosticParent:Landroidx/preference/PreferenceGroup;

.field carDiagnosticPreference:Landroidx/preference/CheckBoxPreference;

.field private clickCount:I

.field private firstTime:J

.field private hasRequested:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

.field private final mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

.field private final mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothOnModeChangedListener:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$BluetoothOnModeChangedListener;

.field private mBroadcastService:Landroid/bluetooth/BluetoothLeBroadcast;

.field private final mBroadcastServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mClickCount:I

.field private final mDevelopEnabled:Landroid/net/Uri;

.field private final mDeveloperSettingsObserver:Landroid/database/ContentObserver;

.field private final mEnableAdbReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAvailable:Z

.field private mLastTime:J

.field private mMiuiDesktopModeGuideSettingsObserver:Landroid/database/ContentObserver;

.field private mPreferenceControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemPropertiesChanged:Ljava/lang/Runnable;

.field private miuiExperienceOptimization:Landroidx/preference/CheckBoxPreference;

.field private miuiExperienceOptimizationParent:Landroidx/preference/PreferenceGroup;


# direct methods
.method public static synthetic $r8$lambda$jYEvwDRp2u3BPB4BCuGG94Zrv7Y(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->lambda$hideMiuiCarDiagnosticPreference$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetclickCount(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->clickCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfirstTime(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->firstTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothA2dp(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothA2dpConfigStore(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Lcom/android/settings/development/BluetoothA2dpConfigStore;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBroadcastService(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Landroid/bluetooth/BluetoothLeBroadcast;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBroadcastService:Landroid/bluetooth/BluetoothLeBroadcast;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreferenceControllers(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmiuiExperienceOptimization(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->miuiExperienceOptimization:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmiuiExperienceOptimizationParent(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Landroidx/preference/PreferenceGroup;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->miuiExperienceOptimizationParent:Landroidx/preference/PreferenceGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputclickCount(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->clickCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfirstTime(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->firstTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothA2dp(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroid/bluetooth/BluetoothA2dp;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBroadcastService(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroid/bluetooth/BluetoothLeBroadcast;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBroadcastService:Landroid/bluetooth/BluetoothLeBroadcast;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisableDeveloperOptions(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->disableDeveloperOptions()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSpecificCodecStatus(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroid/bluetooth/BluetoothCodecStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->setSpecificCodecStatus(Landroid/bluetooth/BluetoothCodecStatus;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/BluetoothA2dpConfigStore;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/BluetoothA2dpConfigStore;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1245
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$10;

    sget v1, Lcom/android/settings/R$xml;->development_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$10;-><init>(I)V

    sput-object v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string/jumbo v0, "no_debugging_features"

    .line 354
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-direct {v0}, Lcom/android/settings/development/BluetoothA2dpConfigStore;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mIsAvailable:Z

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->hasRequested:Z

    .line 154
    new-instance v1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$1;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mEnableAdbReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    new-instance v1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$2;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    .line 201
    new-instance v1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBroadcastServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 229
    new-instance v1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$4;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->btBroadcastAudioReceiver:Landroid/content/BroadcastReceiver;

    .line 281
    new-instance v1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$5;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$5;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 311
    new-instance v1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$6;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$6;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    const-string v1, "development_settings_enabled"

    .line 325
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mDevelopEnabled:Landroid/net/Uri;

    .line 326
    new-instance v1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$7;

    new-instance v2, Landroid/os/Handler;

    .line 327
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$7;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mDeveloperSettingsObserver:Landroid/database/ContentObserver;

    .line 499
    iput v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->clickCount:I

    const/4 v1, 0x0

    .line 534
    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->carDiagnosticParent:Landroidx/preference/PreferenceGroup;

    .line 535
    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->carDiagnosticPreference:Landroidx/preference/CheckBoxPreference;

    .line 536
    iput v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mClickCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/BluetoothA2dpConfigStore;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;",
            "Lcom/android/settings/development/BluetoothA2dpConfigStore;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 994
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 995
    new-instance v1, Lcom/android/settings/development/PreferVonrController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/development/PreferVonrController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    new-instance v1, Lcom/android/settings/development/SystemServerHeapDumpPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/SystemServerHeapDumpPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1002
    new-instance v1, Lcom/android/settings/development/DevelopmentMemtagPagePreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/DevelopmentMemtagPagePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1003
    new-instance v1, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1004
    new-instance v1, Lcom/android/settings/development/StayAwakePreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/development/StayAwakePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1005
    new-instance v1, Lcom/android/settings/development/HdcpCheckingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/HdcpCheckingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1006
    new-instance v1, Lcom/android/settings/development/GpoVersionPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/GpoVersionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1008
    new-instance v1, Lcom/android/settings/development/DarkUIPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DarkUIPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    new-instance v1, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string/jumbo v2, "snoop_logger_filters_dashboard"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1012
    new-instance v1, Lcom/android/settings/development/BluetoothSnoopLogFilterProfilePbapPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothSnoopLogFilterProfilePbapPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1013
    new-instance v1, Lcom/android/settings/development/BluetoothSnoopLogFilterProfileMapPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothSnoopLogFilterProfileMapPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1014
    new-instance v1, Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/settings/development/OemUnlockPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1019
    new-instance v1, Lcom/android/settings/development/WebViewAppPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WebViewAppPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1020
    new-instance v1, Lcom/android/settings/development/CoolColorTemperaturePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/CoolColorTemperaturePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1021
    new-instance v1, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1022
    new-instance v1, Lcom/android/settings/development/SelectDSUPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/SelectDSUPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1023
    new-instance v1, Lcom/android/settings/development/AdbPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/AdbPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1024
    new-instance v1, Lcom/android/settings/development/ClearAdbKeysPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/ClearAdbKeysPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1028
    new-instance v1, Lcom/android/settings/development/AdbAuthorizationTimeoutPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/AdbAuthorizationTimeoutPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1029
    new-instance v1, Lcom/android/settings/development/LocalTerminalPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/LocalTerminalPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1032
    new-instance v1, Lcom/android/settings/development/AutomaticSystemServerHeapDumpPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/AutomaticSystemServerHeapDumpPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1033
    new-instance v1, Lcom/android/settings/development/MockLocationAppPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/MockLocationAppPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1034
    new-instance v1, Lcom/android/settings/development/MockModemPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/MockModemPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1035
    new-instance v1, Lcom/android/settings/development/DebugViewAttributesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DebugViewAttributesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1036
    new-instance v1, Lcom/android/settings/development/SelectDebugAppPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/SelectDebugAppPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1037
    new-instance v1, Lcom/android/settings/development/EnableSensorsHalLogPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/EnableSensorsHalLogPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    new-instance v1, Lcom/android/settings/development/WaitForDebuggerPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WaitForDebuggerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    new-instance v1, Lcom/android/settings/development/EnableGpuDebugLayersPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/EnableGpuDebugLayersPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    new-instance v1, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1041
    new-instance v1, Lcom/android/settings/development/ForcePeakRefreshRatePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ForcePeakRefreshRatePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1042
    new-instance v1, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/EnableVerboseVendorLoggingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    new-instance v1, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1044
    new-instance v1, Lcom/android/settings/development/ArtVerifierPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ArtVerifierPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1045
    new-instance v1, Lcom/android/settings/development/LogdSizePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/LogdSizePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1046
    new-instance v1, Lcom/android/settings/development/LogPersistPreferenceController;

    invoke-direct {v1, p0, p3, p2}, Lcom/android/settings/development/LogPersistPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1047
    new-instance v1, Lcom/android/settings/development/CameraLaserSensorPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/CameraLaserSensorPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    new-instance v1, Lcom/android/settings/development/WifiDisplayCertificationPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WifiDisplayCertificationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
    new-instance v1, Lcom/android/settings/development/CellularNetworkPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/development/CellularNetworkPreferenceController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1053
    invoke-static {v0, p0}, Lcom/android/settings/VendorUtils;->addWifiCoverageExtendPreferenceController(Ljava/util/List;Landroid/content/Context;)V

    .line 1055
    new-instance v1, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1056
    new-instance v1, Lcom/android/settings/development/MiuiWifiFastRepairController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/MiuiWifiFastRepairController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1057
    new-instance v1, Lcom/android/settings/development/WifiScanThrottlingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WifiScanThrottlingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1058
    new-instance v1, Lcom/android/settings/development/WifiNonPersistentMacRandomizationPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WifiNonPersistentMacRandomizationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    new-instance v1, Lcom/android/settings/development/MobileDataAlwaysOnPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/MobileDataAlwaysOnPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    new-instance v1, Lcom/android/settings/development/TetheringHardwareAccelPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/TetheringHardwareAccelPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1063
    new-instance v1, Lcom/android/settings/development/BluetoothAbsoluteVolumePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothAbsoluteVolumePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1065
    new-instance v1, Lcom/android/settings/development/BluetoothPageScanPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothPageScanPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    new-instance v1, Lcom/android/settings/development/PtsTestController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/PtsTestController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1067
    new-instance v1, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothOppHighSpeedPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1068
    new-instance v1, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1069
    new-instance v1, Lcom/android/settings/development/BluetoothMapVersionPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothMapVersionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1070
    new-instance v1, Lcom/android/settings/development/BluetoothLeAudioPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/BluetoothLeAudioPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    new-instance v1, Lcom/android/settings/development/BluetoothLeAudioDeviceDetailsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothLeAudioDeviceDetailsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1072
    new-instance v1, Lcom/android/settings/development/BluetoothLeAudioAllowListPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/BluetoothLeAudioAllowListPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1073
    new-instance v1, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1074
    new-instance v1, Lcom/android/settings/development/BluetoothLeAudioHwOffloadPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/BluetoothLeAudioHwOffloadPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1077
    new-instance v1, Lcom/android/settings/development/BluetoothLHDCAudioQualityPreferenceController;

    invoke-direct {v1, p0, p2, p4}, Lcom/android/settings/development/BluetoothLHDCAudioQualityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1079
    new-instance v1, Lcom/android/settings/development/BluetoothLHDCAudioLatencyPreferenceController;

    invoke-direct {v1, p0, p2, p4}, Lcom/android/settings/development/BluetoothLHDCAudioLatencyPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1082
    new-instance v1, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1083
    new-instance v1, Lcom/android/settings/development/NfcStackDebugLogPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/NfcStackDebugLogPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1084
    new-instance v1, Lcom/android/settings/development/NfcSnoopLogPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/NfcSnoopLogPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1085
    new-instance v1, Lcom/android/settings/development/NfcVerboseVendorLogPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/NfcVerboseVendorLogPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1086
    new-instance v1, Lcom/android/settings/development/ShowTapsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ShowTapsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1087
    new-instance v1, Lcom/android/settings/development/PointerLocationPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/PointerLocationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    new-instance v1, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    new-instance v1, Lcom/android/settings/development/ShowLayoutBoundsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ShowLayoutBoundsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    new-instance v1, Lcom/android/settings/development/ShowRefreshRatePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ShowRefreshRatePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1091
    new-instance v1, Lcom/android/settings/development/RtlLayoutPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/RtlLayoutPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1092
    new-instance v1, Lcom/android/settings/development/WindowAnimationScalePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WindowAnimationScalePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1093
    new-instance v1, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    new-instance v1, Lcom/android/settings/development/TransparentNavigationBarPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/TransparentNavigationBarPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    new-instance v1, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    new-instance v1, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1097
    new-instance v1, Lcom/android/settings/development/SecondaryDisplayPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/SecondaryDisplayPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1098
    new-instance v1, Lcom/android/settings/development/GpuViewUpdatesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/GpuViewUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1099
    new-instance v1, Lcom/android/settings/development/HardwareLayersUpdatesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/HardwareLayersUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    new-instance v1, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1101
    new-instance v1, Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1102
    new-instance v1, Lcom/android/settings/development/ForceDarkPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ForceDarkPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1103
    new-instance v1, Lcom/android/settings/development/EnableBlursPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/EnableBlursPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1104
    new-instance v1, Lcom/android/settings/development/ForceMSAAPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ForceMSAAPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1105
    new-instance v1, Lcom/android/settings/development/HardwareOverlaysPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/HardwareOverlaysPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1106
    new-instance v1, Lcom/android/settings/development/SimulateColorSpacePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/SimulateColorSpacePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1107
    new-instance v1, Lcom/android/settings/development/UsbAudioRoutingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/UsbAudioRoutingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1108
    new-instance v1, Lcom/android/settings/development/StrictModePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/StrictModePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1109
    new-instance v1, Lcom/android/settings/development/ProfileGpuRenderingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ProfileGpuRenderingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1110
    new-instance v1, Lcom/android/settings/development/RootManagementPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/RootManagementPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1111
    new-instance v1, Lcom/android/settings/development/KeepActivitiesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/KeepActivitiesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1112
    new-instance v1, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1113
    new-instance v1, Lcom/android/settings/development/CachedAppsFreezerPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/CachedAppsFreezerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1114
    new-instance v1, Lcom/android/settings/development/ShowFirstCrashDialogPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ShowFirstCrashDialogPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    new-instance v1, Lcom/android/settings/development/AppsNotRespondingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/AppsNotRespondingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1116
    new-instance v1, Lcom/android/settings/development/NotificationChannelWarningsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/NotificationChannelWarningsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1117
    new-instance v1, Lcom/android/settings/development/AllowAppsOnExternalPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/AllowAppsOnExternalPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    new-instance v1, Lcom/android/settings/development/ResizableActivityPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ResizableActivityPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1119
    new-instance v1, Lcom/android/settings/development/FreeformWindowsPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/FreeformWindowsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1120
    new-instance v1, Lcom/android/settings/development/DesktopModePreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/DesktopModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1121
    new-instance v1, Lcom/android/settings/development/NonResizableMultiWindowPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/NonResizableMultiWindowPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1122
    new-instance v1, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1123
    new-instance v1, Lcom/android/settings/development/EnableGnssRawMeasFullTrackingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/EnableGnssRawMeasFullTrackingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1128
    new-instance v1, Lcom/android/settings/development/DemoModePreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/DemoModePreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1130
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string/jumbo v2, "quick_settings_tiles"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1132
    new-instance v1, Lcom/android/settings/development/AdbWirelessDefaultLaunchPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/AdbWirelessDefaultLaunchPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    new-instance v1, Lcom/android/settings/development/LowFlickerBacklightController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/LowFlickerBacklightController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1135
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v2, "feature_flags_dashboard"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1136
    new-instance v1, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1138
    new-instance v1, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-direct {v1, p0, p2, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1140
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v2, "density"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1145
    new-instance v1, Lcom/android/settings/development/TarePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/TarePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1146
    new-instance v1, Lcom/android/settings/development/autofill/AutofillCategoryController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/development/autofill/AutofillCategoryController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1147
    new-instance v1, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/development/autofill/AutofillLoggingLevelPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1148
    new-instance v1, Lcom/android/settings/development/autofill/AutofillResetOptionsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/autofill/AutofillResetOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1150
    new-instance v1, Lcom/android/settings/development/DevelopmentEnableController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/DevelopmentEnableController;-><init>(Landroid/content/Context;Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1151
    new-instance v1, Lcom/android/settings/development/DeviceLockStateController;

    invoke-direct {v1, p1}, Lcom/android/settings/development/DeviceLockStateController;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1152
    new-instance v1, Lcom/android/settings/development/AdbInstallPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/development/AdbInstallPreferenceController;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1153
    new-instance v1, Lcom/android/settings/development/AdbInputPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/development/AdbInputPreferenceController;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1154
    new-instance v1, Lcom/android/settings/development/SelectLogLevelPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/development/SelectLogLevelPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1155
    new-instance v1, Lcom/android/settings/development/MiuiOptimizationController;

    invoke-direct {v1, p1}, Lcom/android/settings/development/MiuiOptimizationController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1156
    new-instance v1, Lcom/android/settings/development/MiuiCarDiagnosticController;

    invoke-direct {v1, p1}, Lcom/android/settings/development/MiuiCarDiagnosticController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1157
    new-instance v1, Lcom/android/settings/development/CTAPrivacyModeController;

    invoke-direct {v1, p1}, Lcom/android/settings/development/CTAPrivacyModeController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1158
    new-instance v1, Lcom/android/settings/development/MiuiDirectEnterSystemController;

    invoke-direct {v1, p1}, Lcom/android/settings/development/MiuiDirectEnterSystemController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1159
    new-instance v1, Lcom/android/settings/development/DangerousOptionsController;

    invoke-direct {v1, p1}, Lcom/android/settings/development/DangerousOptionsController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1160
    new-instance v1, Lcom/android/settings/development/SecondSpaceDeleteController;

    invoke-direct {v1, p1, p2}, Lcom/android/settings/development/SecondSpaceDeleteController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1161
    new-instance p1, Lcom/android/settings/development/BluetoothAptxAdaptiveModePreferenceController;

    invoke-direct {p1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAptxAdaptiveModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1164
    new-instance p1, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;

    invoke-direct {p1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    new-instance p1, Lcom/android/settings/development/BluetoothAudioSampleRatePreferenceController;

    invoke-direct {p1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioSampleRatePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1168
    new-instance p1, Lcom/android/settings/development/BluetoothAudioBitsPerSamplePreferenceController;

    invoke-direct {p1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioBitsPerSamplePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1170
    new-instance p1, Lcom/android/settings/development/BluetoothAudioChannelModePreferenceController;

    invoke-direct {p1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioChannelModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1172
    new-instance p1, Lcom/android/settings/development/BluetoothAudioQualityPreferenceController;

    invoke-direct {p1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioQualityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1184
    new-instance p1, Lcom/android/settings/development/bluetooth/BluetoothHDAudioPreferenceController;

    invoke-direct {p1, p0, p2, p4, p3}, Lcom/android/settings/development/bluetooth/BluetoothHDAudioPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController$Callback;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1186
    new-instance p1, Lcom/android/settings/development/storage/SharedDataPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/storage/SharedDataPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1187
    new-instance p1, Lcom/android/settings/development/OverlaySettingsPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/OverlaySettingsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1188
    new-instance p1, Lcom/android/settings/development/StylusHandwritingPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/StylusHandwritingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1189
    new-instance p1, Lcom/android/settings/development/IngressRateLimitPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/IngressRateLimitPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1190
    new-instance p1, Lcom/android/settings/development/BackAnimationPreferenceController;

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/BackAnimationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    new-instance p1, Lcom/android/settings/development/PhantomProcessPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/PhantomProcessPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    new-instance p1, Lcom/android/settings/theme/ContrastPreferenceController;

    const-class p2, Landroid/app/UiModeManager;

    .line 1193
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/theme/ContrastPreferenceController;-><init>(Landroid/content/Context;Landroid/app/UiModeManager;)V

    .line 1192
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1194
    new-instance p1, Lcom/android/settings/development/ForceEnableNotesRolePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/ForceEnableNotesRolePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1196
    new-instance p1, Lcom/android/settings/development/MiuiTimeFloatingWindowController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/MiuiTimeFloatingWindowController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1197
    new-instance p1, Lcom/android/settings/development/InputDebugLevelPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/InputDebugLevelPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1198
    new-instance p1, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    invoke-direct {p1, p0, p3}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1199
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "speed_mode_enable"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 1201
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "speedMode="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "DevSettingsDashboard"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 1203
    new-instance p1, Lcom/android/settings/development/SpeedModeToolsPreferenceController;

    const-string/jumbo p2, "speed_mode"

    invoke-direct {p1, p0, p2}, Lcom/android/settings/development/SpeedModeToolsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1209
    :cond_0
    new-instance p1, Lcom/android/settings/development/MiuiAppCacheOptimizationController;

    invoke-direct {p1, p0}, Lcom/android/settings/development/MiuiAppCacheOptimizationController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private disableDeveloperOptions()V
    .locals 3

    .line 950
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 953
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V

    .line 954
    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object v0

    .line 955
    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->blockPokes()V

    .line 956
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 957
    instance-of v2, v1, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    if-eqz v2, :cond_2

    .line 958
    check-cast v1, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    .line 959
    invoke-virtual {v1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsDisabled()V

    goto :goto_0

    .line 960
    :cond_2
    instance-of v2, v1, Lcom/android/settings/development/SpeedModeToolsPreferenceController;

    if-eqz v2, :cond_1

    .line 961
    check-cast v1, Lcom/android/settings/development/SpeedModeToolsPreferenceController;

    .line 962
    invoke-virtual {v1}, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    goto :goto_0

    .line 965
    :cond_3
    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->unblockPokes()V

    .line 966
    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    return-void
.end method

.method private enableDeveloperOptions()V
    .locals 2

    .line 935
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 938
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V

    .line 939
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 940
    instance-of v1, v0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    if-eqz v1, :cond_2

    .line 941
    check-cast v0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    invoke-virtual {v0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsEnabled()V

    goto :goto_0

    .line 942
    :cond_2
    instance-of v1, v0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;

    if-eqz v1, :cond_1

    .line 943
    check-cast v0, Lcom/android/settings/development/SpeedModeToolsPreferenceController;

    .line 944
    invoke-virtual {v0}, Lcom/android/settings/development/SpeedModeToolsPreferenceController;->onDeveloperOptionsSwitchEnabled()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private handleQsTileLongPressActionIfAny()V
    .locals 3

    .line 584
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "android.service.quicksettings.action.QS_TILE_PREFERENCES"

    .line 585
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Developer options started from qstile long-press"

    const-string v2, "DevSettingsDashboard"

    .line 589
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.extra.COMPONENT_NAME"

    .line 590
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    if-nez v0, :cond_1

    return-void

    .line 599
    :cond_1
    const-class v1, Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 600
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/android/settings/development/AdbWirelessDefaultLaunchPreferenceController;

    .line 600
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/AdbWirelessDefaultLaunchPreferenceController;

    .line 601
    invoke-virtual {v0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Long press from wireless debugging qstile"

    .line 603
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/development/WirelessDebuggingFragment;

    .line 605
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v0, 0x727

    .line 606
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 607
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_2
    :goto_0
    return-void
.end method

.method private hideMiuiCarDiagnosticPreference()V
    .locals 2

    .line 540
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "miui_car_diagnosis"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->carDiagnosticPreference:Landroidx/preference/CheckBoxPreference;

    .line 543
    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->carDiagnosticParent:Landroidx/preference/PreferenceGroup;

    .line 544
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->carDiagnosticPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 546
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    .line 547
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "autofill_reset_developer_options"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    .line 548
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method private hideMiuiExperienceOtimization()V
    .locals 2

    .line 502
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "miui_experience_optimization"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->miuiExperienceOptimization:Landroidx/preference/CheckBoxPreference;

    .line 505
    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->miuiExperienceOptimizationParent:Landroidx/preference/PreferenceGroup;

    .line 506
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->miuiExperienceOptimization:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 508
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "autofill_reset_developer_options"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$9;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$9;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method private isBroadcastOnlySourceSupport()Z
    .locals 2

    .line 1269
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_broadcast_developmentSettings_switch"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x0

    if-ne p0, v1, :cond_0

    const-string p0, "bluetooth.profile.bap.broadcast.source.enabled"

    .line 1272
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private synthetic lambda$hideMiuiCarDiagnosticPreference$0(Landroidx/preference/Preference;)Z
    .locals 9

    .line 549
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->carDiagnosticPreference:Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->carDiagnosticParent:Landroidx/preference/PreferenceGroup;

    if-nez p1, :cond_0

    goto :goto_2

    .line 552
    :cond_0
    iget p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mClickCount:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v1, :cond_2

    .line 553
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "miui_car_diagnosis"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 555
    :goto_0
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->carDiagnosticPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 556
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->carDiagnosticParent:Landroidx/preference/PreferenceGroup;

    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->carDiagnosticPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 558
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 559
    iget-wide v5, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mLastTime:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x3e8

    cmp-long p1, v5, v7

    if-gtz p1, :cond_3

    .line 560
    iget p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mClickCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mClickCount:I

    goto :goto_1

    .line 562
    :cond_3
    iput v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mClickCount:I

    .line 564
    :goto_1
    iput-wide v3, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mLastTime:J

    :cond_4
    :goto_2
    return v0
.end method

.method private registerReceivers()V
    .locals 4

    .line 908
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mEnableAdbReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settingslib.development.AbstractEnableAdbController.ENABLE_ADB_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 909
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 912
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED"

    .line 913
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 914
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 916
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->isBroadcastOnlySourceSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.xiaomi.bluetooth.ACTION_BROADCAST_AUDIO_STATUS_CHANGED"

    .line 918
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    .line 919
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 920
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 921
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->btBroadcastAudioReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private setSpecificCodecStatus(Landroid/bluetooth/BluetoothCodecStatus;)V
    .locals 4

    const-string v0, "DevSettingsDashboard"

    const-string/jumbo v1, "setSpecificCodecStatus()"

    .line 252
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 255
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 258
    :cond_1
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    monitor-enter v1

    .line 262
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v2, :cond_3

    .line 263
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 264
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result p1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 266
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object p0

    .line 267
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 268
    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v2, "LDAC"

    .line 270
    invoke-virtual {p1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const-string v2, "LDAC"

    .line 271
    invoke-virtual {p1, v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    const-string p1, "DevSettingsDashboard"

    const-string/jumbo v2, "setSpecificCodecStatus() end"

    .line 272
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private unregisterReceivers()V
    .locals 2

    .line 926
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mEnableAdbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 927
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 928
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->isBroadcastOnlySourceSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->btBroadcastAudioReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 930
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->btBroadcastAudioReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 897
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    const/4 p0, 0x0

    return-object p0

    .line 901
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 902
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v2, Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-direct {v2}, Lcom/android/settings/development/BluetoothA2dpConfigStore;-><init>()V

    .line 901
    invoke-static {p1, v0, v1, p0, v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/BluetoothA2dpConfigStore;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    return-object p1
.end method

.method getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1217
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "DevSettingsDashboard"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x27

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1265
    const-class p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 888
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 889
    sget p0, Lcom/android/settings/R$xml;->placeholder_prefs:I

    return p0

    .line 891
    :cond_0
    sget p0, Lcom/android/settings/R$xml;->development_settings:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9

    .line 385
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 387
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->setIfOnlyAvailableForAdmins(Z)V

    .line 388
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 411
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->enableDeveloperOptions()V

    .line 413
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->handleQsTileLongPressActionIfAny()V

    goto :goto_0

    .line 415
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->disableDeveloperOptions()V

    .line 418
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->isSecondSpace(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "storage_category"

    .line 419
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 420
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 425
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->string_off:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 426
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->string_KB:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x40

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 427
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 428
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->string_MB:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 429
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 430
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 431
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "select_logd_size"

    .line 432
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz v2, :cond_3

    .line 434
    invoke-virtual {v2, v0}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 439
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "debug_networking_category"

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_4

    const-string v2, "bluetooth_enable_pts_test"

    .line 441
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 447
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->hideMiuiExperienceOtimization()V

    .line 448
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->hideMiuiCarDiagnosticPreference()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "DevSettingsDashboard"

    .line 450
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->hasRequested:Z

    if-nez v0, :cond_5

    .line 453
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v2, "hightlight_broadcast_preference"

    .line 455
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "bluetooth_broadcast_enable"

    .line 457
    invoke-virtual {p0, v0}, Lmiuix/preference/PreferenceFragment;->requestHighlight(Ljava/lang/String;)V

    .line 458
    iput-boolean p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->hasRequested:Z

    .line 464
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->showingMiuiDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 465
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v2, "miui_experience_optimization"

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 466
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 468
    :cond_6
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$8;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mMiuiDesktopModeGuideSettingsObserver:Landroid/database/ContentObserver;

    .line 483
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 484
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mMiuiDesktopModeGuideSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, p1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    .line 391
    :cond_7
    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mIsAvailable:Z

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result p1

    if-nez p1, :cond_8

    .line 394
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->development_settings_not_available:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 396
    :cond_8
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 860
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 861
    instance-of v3, v2, Lcom/android/settings/development/OnActivityResultListener;

    if-eqz v3, :cond_0

    .line 864
    check-cast v2, Lcom/android/settings/development/OnActivityResultListener;

    .line 865
    invoke-interface {v2, p1, p2, p3}, Lcom/android/settings/development/OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 870
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onAdbClearKeysDialogConfirmed()V
    .locals 1

    .line 744
    const-class v0, Lcom/android/settings/development/ClearAdbKeysPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/ClearAdbKeysPreferenceController;

    .line 746
    invoke-virtual {p0}, Lcom/android/settings/development/ClearAdbKeysPreferenceController;->onClearAdbKeysConfirmed()V

    return-void
.end method

.method public onBluetoothCodecChanged()V
    .locals 2

    .line 1222
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 1223
    instance-of v1, v0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/android/settings/development/bluetooth/BluetoothCodecDialogPreferenceController;

    if-nez v1, :cond_0

    .line 1225
    check-cast v0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;

    .line 1226
    invoke-virtual {v0}, Lcom/android/settings/development/bluetooth/AbstractBluetoothPreferenceController;->onBluetoothCodecUpdated()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onBluetoothHDAudioEnabled(Z)V
    .locals 2

    .line 1233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBluetoothHDAudioEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevSettingsDashboard"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 1235
    instance-of v1, v0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;

    if-eqz v1, :cond_0

    .line 1236
    check-cast v0, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/development/bluetooth/AbstractBluetoothDialogPreferenceController;->onHDAudioEnabled(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 373
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 377
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 378
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 615
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->registerReceivers()V

    .line 618
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 621
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    if-eqz v0, :cond_1

    .line 626
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->isBroadcastOnlySourceSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 627
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBroadcastServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 629
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 630
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$BluetoothOnModeChangedListener;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$BluetoothOnModeChangedListener;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothOnModeChangedListener:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$BluetoothOnModeChangedListener;

    .line 631
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 632
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothOnModeChangedListener:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$BluetoothOnModeChangedListener;

    .line 631
    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->addOnModeChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnModeChangedListener;)V

    .line 635
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 489
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroy()V

    .line 490
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mMiuiDesktopModeGuideSettingsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mMiuiDesktopModeGuideSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 4

    .line 640
    invoke-super {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->onDestroyView()V

    .line 641
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->unregisterReceivers()V

    .line 643
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 645
    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    .line 646
    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 647
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->isBroadcastOnlySourceSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1a

    .line 648
    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBroadcastService:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 649
    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBroadcastService:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 650
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothOnModeChangedListener:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$BluetoothOnModeChangedListener;

    if-eqz v2, :cond_0

    .line 651
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->removeOnModeChangedListener(Landroid/media/AudioManager$OnModeChangedListener;)V

    .line 652
    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothOnModeChangedListener:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$BluetoothOnModeChangedListener;

    :cond_0
    return-void
.end method

.method onDisableDevelopmentOptionsConfirmed()V
    .locals 0

    .line 981
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->disableDeveloperOptions()V

    return-void
.end method

.method onDisableDevelopmentOptionsRejected()V
    .locals 1

    .line 988
    const-class v0, Lcom/android/settings/development/DevelopmentEnableController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/DevelopmentEnableController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentEnableController;->setChecked(Z)V

    return-void
.end method

.method public onDisableLogPersistDialogConfirmed()V
    .locals 1

    .line 751
    const-class v0, Lcom/android/settings/development/LogPersistPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/LogPersistPreferenceController;

    .line 753
    invoke-virtual {p0}, Lcom/android/settings/development/LogPersistPreferenceController;->onDisableLogPersistDialogConfirmed()V

    return-void
.end method

.method public onDisableLogPersistDialogRejected()V
    .locals 1

    .line 758
    const-class v0, Lcom/android/settings/development/LogPersistPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/LogPersistPreferenceController;

    .line 760
    invoke-virtual {p0}, Lcom/android/settings/development/LogPersistPreferenceController;->onDisableLogPersistDialogRejected()V

    return-void
.end method

.method public onEnableAdbDialogConfirmed()V
    .locals 1

    .line 729
    const-class v0, Lcom/android/settings/development/AdbPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/AdbPreferenceController;

    .line 731
    invoke-virtual {p0}, Lcom/android/settings/development/AdbPreferenceController;->onAdbDialogConfirmed()V

    return-void
.end method

.method public onEnableAdbDialogDismissed()V
    .locals 1

    .line 737
    const-class v0, Lcom/android/settings/development/AdbPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/AdbPreferenceController;

    .line 739
    invoke-virtual {p0}, Lcom/android/settings/development/AdbPreferenceController;->onAdbDialogDismissed()V

    return-void
.end method

.method public onEnableDemoModeConfirmed()V
    .locals 1

    .line 766
    const-class v0, Lcom/android/settings/development/DemoModePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/DemoModePreferenceController;

    .line 768
    invoke-virtual {p0}, Lcom/android/settings/development/DemoModePreferenceController;->onEnableDemoModeConfirmed()V

    return-void
.end method

.method public onEnableDemoModeDismissed()V
    .locals 1

    .line 773
    const-class v0, Lcom/android/settings/development/DemoModePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/DemoModePreferenceController;

    .line 775
    invoke-virtual {p0}, Lcom/android/settings/development/DemoModePreferenceController;->onEnableDemoModeDismissed()V

    return-void
.end method

.method onEnableDevelopmentOptionsConfirmed()V
    .locals 0

    .line 970
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->enableDeveloperOptions()V

    return-void
.end method

.method onEnableDevelopmentOptionsRejected()V
    .locals 1

    .line 977
    const-class v0, Lcom/android/settings/development/DevelopmentEnableController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/DevelopmentEnableController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentEnableController;->setChecked(Z)V

    return-void
.end method

.method public onNfcRebootDialogCanceled()V
    .locals 1

    .line 836
    const-class v0, Lcom/android/settings/development/NfcSnoopLogPreferenceController;

    .line 837
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/NfcSnoopLogPreferenceController;

    .line 838
    invoke-virtual {v0}, Lcom/android/settings/development/NfcSnoopLogPreferenceController;->onNfcRebootDialogCanceled()V

    .line 840
    const-class v0, Lcom/android/settings/development/NfcVerboseVendorLogPreferenceController;

    .line 841
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/NfcVerboseVendorLogPreferenceController;

    .line 842
    invoke-virtual {p0}, Lcom/android/settings/development/NfcVerboseVendorLogPreferenceController;->onNfcRebootDialogCanceled()V

    return-void
.end method

.method public onNfcRebootDialogConfirmed()V
    .locals 1

    .line 825
    const-class v0, Lcom/android/settings/development/NfcSnoopLogPreferenceController;

    .line 826
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/NfcSnoopLogPreferenceController;

    .line 827
    invoke-virtual {v0}, Lcom/android/settings/development/NfcSnoopLogPreferenceController;->onNfcRebootDialogConfirmed()V

    .line 829
    const-class v0, Lcom/android/settings/development/NfcVerboseVendorLogPreferenceController;

    .line 830
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/NfcVerboseVendorLogPreferenceController;

    .line 831
    invoke-virtual {p0}, Lcom/android/settings/development/NfcVerboseVendorLogPreferenceController;->onNfcRebootDialogConfirmed()V

    return-void
.end method

.method public onOemUnlockDialogConfirmed()V
    .locals 1

    .line 715
    const-class v0, Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/OemUnlockPreferenceController;

    .line 717
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->onOemUnlockConfirmed()V

    return-void
.end method

.method public onOemUnlockDialogDismissed()V
    .locals 1

    .line 722
    const-class v0, Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/OemUnlockPreferenceController;

    .line 724
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->onOemUnlockDismissed()V

    return-void
.end method

.method public onRebootDialogCanceled()V
    .locals 1

    .line 803
    const-class v0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    .line 804
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    .line 805
    invoke-virtual {v0}, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->onRebootDialogCanceled()V

    .line 807
    const-class v0, Lcom/android/settings/development/BluetoothLeAudioHwOffloadPreferenceController;

    .line 808
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/BluetoothLeAudioHwOffloadPreferenceController;

    .line 810
    invoke-virtual {v0}, Lcom/android/settings/development/BluetoothLeAudioHwOffloadPreferenceController;->onRebootDialogCanceled()V

    .line 812
    const-class v0, Lcom/android/settings/development/BluetoothLeAudioPreferenceController;

    .line 813
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/BluetoothLeAudioPreferenceController;

    .line 815
    invoke-virtual {v0}, Lcom/android/settings/development/BluetoothLeAudioPreferenceController;->onRebootDialogCanceled()V

    .line 817
    const-class v0, Lcom/android/settings/development/BluetoothLeAudioAllowListPreferenceController;

    .line 818
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/BluetoothLeAudioAllowListPreferenceController;

    .line 820
    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothLeAudioAllowListPreferenceController;->onRebootDialogCanceled()V

    return-void
.end method

.method public onRebootDialogConfirmed()V
    .locals 1

    .line 781
    const-class v0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    .line 782
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    .line 783
    invoke-virtual {v0}, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->onRebootDialogConfirmed()V

    .line 785
    const-class v0, Lcom/android/settings/development/BluetoothLeAudioHwOffloadPreferenceController;

    .line 786
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/BluetoothLeAudioHwOffloadPreferenceController;

    .line 788
    invoke-virtual {v0}, Lcom/android/settings/development/BluetoothLeAudioHwOffloadPreferenceController;->onRebootDialogConfirmed()V

    .line 790
    const-class v0, Lcom/android/settings/development/BluetoothLeAudioPreferenceController;

    .line 791
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/BluetoothLeAudioPreferenceController;

    .line 793
    invoke-virtual {v0}, Lcom/android/settings/development/BluetoothLeAudioPreferenceController;->onRebootDialogConfirmed()V

    .line 795
    const-class v0, Lcom/android/settings/development/BluetoothLeAudioAllowListPreferenceController;

    .line 796
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/BluetoothLeAudioAllowListPreferenceController;

    .line 798
    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothLeAudioAllowListPreferenceController;->onRebootDialogConfirmed()V

    return-void
.end method

.method public onSettingChanged()V
    .locals 2

    .line 847
    const-class v0, Lcom/android/settings/development/BluetoothSnoopLogFilterProfileMapPreferenceController;

    .line 848
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/BluetoothSnoopLogFilterProfileMapPreferenceController;

    .line 850
    const-class v1, Lcom/android/settings/development/BluetoothSnoopLogFilterProfilePbapPreferenceController;

    .line 851
    invoke-virtual {p0, v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/BluetoothSnoopLogFilterProfilePbapPreferenceController;

    .line 853
    invoke-virtual {v0}, Lcom/android/settings/development/BluetoothSnoopLogFilterProfileMapPreferenceController;->onSettingChanged()V

    .line 854
    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothSnoopLogFilterProfilePbapPreferenceController;->onSettingChanged()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 359
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 360
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mDevelopEnabled:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mDeveloperSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 366
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 367
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 368
    iget-object p0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mDeveloperSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    .line 674
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eq p2, p1, :cond_7

    if-eqz p2, :cond_0

    .line 677
    invoke-static {p0}, Lcom/android/settings/development/EnableDevelopmentSettingWarningDialog;->show(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    goto :goto_1

    .line 679
    :cond_0
    const-class p1, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    .line 680
    invoke-virtual {p0, p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    .line 682
    const-class p2, Lcom/android/settings/development/BluetoothLeAudioHwOffloadPreferenceController;

    .line 683
    invoke-virtual {p0, p2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p2

    check-cast p2, Lcom/android/settings/development/BluetoothLeAudioHwOffloadPreferenceController;

    .line 685
    const-class v0, Lcom/android/settings/development/NfcSnoopLogPreferenceController;

    .line 686
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/NfcSnoopLogPreferenceController;

    .line 688
    const-class v1, Lcom/android/settings/development/NfcVerboseVendorLogPreferenceController;

    .line 689
    invoke-virtual {p0, v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/development/NfcVerboseVendorLogPreferenceController;

    .line 691
    const-class v2, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;

    .line 692
    invoke-virtual {p0, v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;

    if-eqz p1, :cond_1

    .line 696
    invoke-virtual {p1}, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->isDefaultValue()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_1
    if-eqz p2, :cond_2

    .line 697
    invoke-virtual {p2}, Lcom/android/settings/development/BluetoothLeAudioHwOffloadPreferenceController;->isDefaultValue()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_2
    if-eqz v0, :cond_3

    .line 698
    invoke-virtual {v0}, Lcom/android/settings/development/NfcSnoopLogPreferenceController;->isDefaultValue()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_3
    if-eqz v1, :cond_4

    .line 700
    invoke-virtual {v1}, Lcom/android/settings/development/NfcVerboseVendorLogPreferenceController;->isDefaultValue()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    if-eqz v2, :cond_6

    .line 702
    invoke-virtual {v2}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->isDefaultValue()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 705
    :cond_5
    invoke-static {p0}, Lcom/android/settings/development/DisableDevSettingsDialogFragment;->show(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    goto :goto_1

    .line 703
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->disableDeveloperOptions()V

    .line 709
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 708
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 709
    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/settings/search/SearchFeatureProvider;->sendPreIndexIntent(Landroid/content/Context;)V

    :cond_7
    return-void
.end method

.method protected shouldSkipForInitialSUW()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
