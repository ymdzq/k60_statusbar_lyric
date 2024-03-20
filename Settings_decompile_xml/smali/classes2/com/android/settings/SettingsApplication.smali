.class public Lcom/android/settings/SettingsApplication;
.super Lmiuix/autodensity/MiuixApplication;
.source "SettingsApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsApplication$DeviceProvisionedObserver;,
        Lcom/android/settings/SettingsApplication$InitTask;
    }
.end annotation


# static fields
.field private static ENABLEQIGSAW:Z

.field private static HEADSETPLUGIN:Ljava/lang/String;

.field private static HEADSETPLUGIN_ENABLE:I

.field private static HEADSETPLUGIN_INITED:I

.field private static HEADSETPLUGIN_INITED_NOTIFY:Ljava/lang/String;

.field private static HEADSETPLUGIN_NOTSET:I

.field public static final PROC_USER_ID:I

.field private static SP_QIGSAW_ENABLE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public ENABLEQIGSAWINITED:Z

.field private final TOPIC:Ljava/lang/String;

.field private mHomeActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/homepage/SettingsHomepageActivity;",
            ">;"
        }
    .end annotation
.end field

.field public mMainProcess:Z

.field public mQigsawStarted:I


# direct methods
.method static bridge synthetic -$$Nest$mdeleteV5Shortcuts(Lcom/android/settings/SettingsApplication;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsApplication;->deleteV5Shortcuts(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mensureOpenSmMonitor(Lcom/android/settings/SettingsApplication;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/SettingsApplication;->ensureOpenSmMonitor()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCloud(Lcom/android/settings/SettingsApplication;ZLandroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SettingsApplication;->updateCloud(ZLandroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetHEADSETPLUGIN()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/SettingsApplication;->HEADSETPLUGIN:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetHEADSETPLUGIN_ENABLE()I
    .locals 1

    .line 0
    sget v0, Lcom/android/settings/SettingsApplication;->HEADSETPLUGIN_ENABLE:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 84
    const-class v0, Lcom/android/settings/SettingsApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/SettingsApplication;->TAG:Ljava/lang/String;

    const-string v0, "HeadsetPluginDefault"

    const/4 v1, 0x2

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/SettingsApplication;->ENABLEQIGSAW:Z

    const-string v0, "BLUETOOTHHEADSETPLUGIN"

    .line 90
    sput-object v0, Lcom/android/settings/SettingsApplication;->HEADSETPLUGIN:Ljava/lang/String;

    const-string v0, "BLUETOOTHHEADSETPLUGIN_INITED"

    .line 91
    sput-object v0, Lcom/android/settings/SettingsApplication;->HEADSETPLUGIN_INITED_NOTIFY:Ljava/lang/String;

    const/4 v0, 0x1

    .line 94
    sput v0, Lcom/android/settings/SettingsApplication;->HEADSETPLUGIN_ENABLE:I

    const/4 v1, -0x1

    .line 95
    sput v1, Lcom/android/settings/SettingsApplication;->HEADSETPLUGIN_NOTSET:I

    .line 96
    sput v0, Lcom/android/settings/SettingsApplication;->HEADSETPLUGIN_INITED:I

    const-string/jumbo v0, "sp_qigsaw_enable"

    .line 97
    sput-object v0, Lcom/android/settings/SettingsApplication;->SP_QIGSAW_ENABLE:Ljava/lang/String;

    .line 102
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    sput v0, Lcom/android/settings/SettingsApplication;->PROC_USER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Lmiuix/autodensity/MiuixApplication;-><init>()V

    const-string v0, "SECURITY_TOPIC"

    .line 86
    iput-object v0, p0, Lcom/android/settings/SettingsApplication;->TOPIC:Ljava/lang/String;

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/android/settings/SettingsApplication;->ENABLEQIGSAWINITED:Z

    .line 99
    iput-boolean v0, p0, Lcom/android/settings/SettingsApplication;->mMainProcess:Z

    .line 101
    sget v0, Lcom/android/settings/SettingsApplication;->HEADSETPLUGIN_NOTSET:I

    iput v0, p0, Lcom/android/settings/SettingsApplication;->mQigsawStarted:I

    .line 104
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/SettingsApplication;->mHomeActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private checkEnableQigsaw(Landroid/content/Context;)Z
    .locals 1

    .line 309
    sget-object p0, Lcom/android/settings/SettingsApplication;->SP_QIGSAW_ENABLE:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "enableQigsaw"

    const/4 v0, 0x1

    .line 311
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private deleteV5Shortcuts(Landroid/content/Context;)V
    .locals 2

    .line 279
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "key_delete_v5_shortcuts"

    .line 280
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/ShortcutHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/ShortcutHelper;

    move-result-object p1

    .line 283
    sget-object v0, Lcom/android/settings/ShortcutHelper$Shortcut;->OPTIMIZE_CENTER:Lcom/android/settings/ShortcutHelper$Shortcut;

    invoke-virtual {p1, v0}, Lcom/android/settings/ShortcutHelper;->removeShortcut(Lcom/android/settings/ShortcutHelper$Shortcut;)V

    .line 284
    sget-object v0, Lcom/android/settings/ShortcutHelper$Shortcut;->POWER_CENTER:Lcom/android/settings/ShortcutHelper$Shortcut;

    invoke-virtual {p1, v0}, Lcom/android/settings/ShortcutHelper;->removeShortcut(Lcom/android/settings/ShortcutHelper$Shortcut;)V

    .line 285
    sget-object v0, Lcom/android/settings/ShortcutHelper$Shortcut;->VIRUS_CENTER:Lcom/android/settings/ShortcutHelper$Shortcut;

    invoke-virtual {p1, v0}, Lcom/android/settings/ShortcutHelper;->removeShortcut(Lcom/android/settings/ShortcutHelper$Shortcut;)V

    .line 286
    sget-object v0, Lcom/android/settings/ShortcutHelper$Shortcut;->PERM_CENTER:Lcom/android/settings/ShortcutHelper$Shortcut;

    invoke-virtual {p1, v0}, Lcom/android/settings/ShortcutHelper;->removeShortcut(Lcom/android/settings/ShortcutHelper$Shortcut;)V

    .line 287
    sget-object v0, Lcom/android/settings/ShortcutHelper$Shortcut;->NETWORK_ASSISTANT:Lcom/android/settings/ShortcutHelper$Shortcut;

    invoke-virtual {p1, v0}, Lcom/android/settings/ShortcutHelper;->removeShortcut(Lcom/android/settings/ShortcutHelper$Shortcut;)V

    .line 288
    sget-object v0, Lcom/android/settings/ShortcutHelper$Shortcut;->ANTISPAM:Lcom/android/settings/ShortcutHelper$Shortcut;

    invoke-virtual {p1, v0}, Lcom/android/settings/ShortcutHelper;->removeShortcut(Lcom/android/settings/ShortcutHelper$Shortcut;)V

    .line 289
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private ensureOpenSmMonitor()V
    .locals 5

    .line 263
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "misettings_st_enable_sm"

    const/4 v3, 0x0

    .line 264
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    move v3, v4

    :cond_0
    if-nez v3, :cond_1

    .line 268
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 270
    sget-object v1, Lcom/android/settings/SettingsApplication;->TAG:Ljava/lang/String;

    const-string v2, "ensureOpenSmMonitor: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/report/InternationalCompat;->init(Landroid/content/Context;)V

    return-void
.end method

.method private updateCloud(ZLandroid/content/Context;)V
    .locals 5

    const-string v0, "bt_plugin_settings_qigsaw"

    .line 318
    :try_start_0
    sget-object v1, Lcom/android/settings/SettingsApplication;->SP_QIGSAW_ENABLE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 321
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "enableQigsaw"

    .line 322
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 323
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v1, ""

    const-string v2, "bt_plugin_settings_miuix"

    const-string v3, "#"

    if-eqz p1, :cond_2

    .line 326
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lcom/android/settings/SettingsApplication;->PROC_USER_ID:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 328
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/android/settings/bluetooth/plugin/BluetoothCloudControlTools;->PLUGIN_MIUIX_VERSION:Ljava/lang/String;

    .line 329
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 330
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/settings/bluetooth/plugin/BluetoothCloudControlTools;->PLUGIN_MIUIX_VERSION:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 334
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/SettingsApplication;->mMainProcess:Z

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/android/settings/SettingsApplication;->ENABLEQIGSAW:Z

    if-nez p1, :cond_5

    iget-boolean p0, p0, Lcom/android/settings/SettingsApplication;->ENABLEQIGSAWINITED:Z

    if-nez p0, :cond_5

    .line 335
    :cond_3
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/android/settings/SettingsApplication;->PROC_USER_ID:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 337
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 338
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 341
    :cond_4
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 343
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 344
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 349
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 5

    .line 225
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    :try_start_0
    const-string v0, "com.android.settings"

    .line 227
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SettingsApplication;->mMainProcess:Z

    if-eqz v0, :cond_2

    .line 229
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsApplication;->checkEnableQigsaw(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 230
    sget-boolean v0, Lcom/android/settings/SettingsApplication;->ENABLEQIGSAW:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/settings/SettingsApplication;->ENABLEQIGSAW:Z

    if-eqz v0, :cond_2

    .line 232
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->newBuilder()Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;

    move-result-object v0

    .line 233
    invoke-virtual {v0, v2}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->splitLoadMode(I)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;

    move-result-object v0

    new-instance v3, Lcom/android/settings/bluetooth/plugin/reporter/SampleLogger;

    invoke-direct {v3}, Lcom/android/settings/bluetooth/plugin/reporter/SampleLogger;-><init>()V

    .line 234
    invoke-virtual {v0, v3}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->logger(Lcom/iqiyi/android/qigsaw/core/common/SplitLog$Logger;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;

    move-result-object v0

    .line 235
    invoke-virtual {v0, v1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->verifySignature(Z)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/plugin/reporter/SampleSplitLoadReporter;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/plugin/reporter/SampleSplitLoadReporter;-><init>(Landroid/content/Context;)V

    .line 236
    invoke-virtual {v0, v1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->loadReporter(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/plugin/reporter/SampleSplitInstallReporter;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/plugin/reporter/SampleSplitInstallReporter;-><init>(Landroid/content/Context;)V

    .line 237
    invoke-virtual {v0, v1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->installReporter(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/plugin/reporter/SampleSplitUninstallReporter;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/plugin/reporter/SampleSplitUninstallReporter;-><init>(Landroid/content/Context;)V

    .line 238
    invoke-virtual {v0, v1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->uninstallReporter(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/plugin/reporter/SampleSplitUpdateReporter;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/plugin/reporter/SampleSplitUpdateReporter;-><init>(Landroid/content/Context;)V

    .line 239
    invoke-virtual {v0, v1}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->updateReporter(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;)Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->build()Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;

    move-result-object v0

    .line 241
    new-instance v1, Lcom/android/settings/bluetooth/plugin/downloader/SampleDownloader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "bluetooth"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "plugins"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/settings/bluetooth/plugin/downloader/SampleDownloader;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->install(Landroid/content/Context;Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;)V

    .line 243
    iput-boolean v2, p0, Lcom/android/settings/SettingsApplication;->ENABLEQIGSAWINITED:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 247
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public getHomeActivity()Lcom/android/settings/homepage/SettingsHomepageActivity;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/settings/SettingsApplication;->mHomeActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    return-object p0
.end method

.method public getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string p0, "activity"

    .line 294
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 295
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 299
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 300
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 301
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_1

    .line 302
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_2
    return-object p1
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/android/settings/SettingsApplication;->mMainProcess:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settings/SettingsApplication;->ENABLEQIGSAW:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/SettingsApplication;->ENABLEQIGSAWINITED:Z

    if-eqz v0, :cond_1

    .line 218
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->onApplicationGetResources(Landroid/content/res/Resources;)V

    .line 220
    :cond_1
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 253
    invoke-super {p0, p1}, Lmiuix/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 254
    iget p0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    .line 256
    invoke-static {p0}, Lcom/android/settings/utils/TabletUtils;->changeDeviceForm(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 258
    invoke-static {p0}, Lcom/android/settings/utils/TabletUtils;->changeDeviceForm(I)V

    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 166
    invoke-super {p0}, Lmiuix/autodensity/MiuixApplication;->onCreate()V

    .line 169
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/core/instrumentation/ElapsedTimeUtils;->assignSuwFinishedTimeStamp(Landroid/content/Context;)V

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsApplication;->setSpaEnvironment()V

    const-string/jumbo v0, "settings_support_large_screen"

    .line 176
    invoke-static {p0, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    invoke-static {p0}, Landroidx/window/embedding/SplitController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/SplitController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/window/embedding/SplitController;->isSplitSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isUserSetupComplete(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    new-instance v0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;

    invoke-direct {v0, p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->initRules()V

    goto :goto_0

    .line 181
    :cond_1
    new-instance v0, Lcom/android/settings/SettingsApplication$DeviceProvisionedObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsApplication$DeviceProvisionedObserver;-><init>(Lcom/android/settings/SettingsApplication;)V

    invoke-virtual {v0}, Lcom/android/settings/SettingsApplication$DeviceProvisionedObserver;->registerContentObserver()V

    .line 187
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/android/settings/utils/DisplayCutoutHelper;->adapter(Landroid/app/Application;)V

    .line 190
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_3

    return-void

    .line 199
    :cond_3
    new-instance v0, Lcom/android/settings/SettingsApplication$InitTask;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SettingsApplication$InitTask;-><init>(Lcom/android/settings/SettingsApplication;Landroid/content/Context;)V

    .line 200
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 203
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/SettingsApplication;->mMainProcess:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/settings/SettingsApplication;->ENABLEQIGSAW:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/SettingsApplication;->ENABLEQIGSAWINITED:Z

    if-eqz v0, :cond_5

    .line 204
    :cond_4
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->onApplicationCreated()V

    .line 205
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/android/settings/SettingsApplication;->PROC_USER_ID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/settings/SettingsApplication;->HEADSETPLUGIN_INITED_NOTIFY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/settings/SettingsApplication;->HEADSETPLUGIN_INITED:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 208
    sget v0, Lcom/android/settings/SettingsApplication;->HEADSETPLUGIN_INITED:I

    iput v0, p0, Lcom/android/settings/SettingsApplication;->mQigsawStarted:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 211
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 159
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 160
    invoke-static {}, Lcom/android/settingslib/applications/AppIconCacheManager;->getInstance()Lcom/android/settingslib/applications/AppIconCacheManager;

    invoke-static {}, Lcom/android/settingslib/applications/AppIconCacheManager;->release()V

    return-void
.end method

.method public setHomeActivity(Lcom/android/settings/homepage/SettingsHomepageActivity;)V
    .locals 1

    .line 150
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/SettingsApplication;->mHomeActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected setSpaEnvironment()V
    .locals 2

    .line 117
    sget-object v0, Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;->INSTANCE:Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;

    new-instance v1, Lcom/android/settings/spa/SettingsSpaEnvironment;

    invoke-direct {v1, p0}, Lcom/android/settings/spa/SettingsSpaEnvironment;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;->reset(Lcom/android/settingslib/spa/framework/common/SpaEnvironment;)V

    return-void
.end method

.method public shouldAdaptAutoDensity()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
