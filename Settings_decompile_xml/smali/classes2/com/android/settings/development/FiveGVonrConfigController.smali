.class public Lcom/android/settings/development/FiveGVonrConfigController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "FiveGVonrConfigController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mVonrReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$mupdateState(Lcom/android/settings/development/FiveGVonrConfigController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/development/FiveGVonrConfigController;->updateState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v0, Lcom/android/settings/development/FiveGVonrConfigController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/development/FiveGVonrConfigController$1;-><init>(Lcom/android/settings/development/FiveGVonrConfigController;)V

    iput-object v0, p0, Lcom/android/settings/development/FiveGVonrConfigController;->mVonrReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p2, :cond_0

    .line 35
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/android/settings/development/FiveGVonrConfigController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isDisable(Landroid/content/Context;)Z
    .locals 2

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "airplane_mode_on"

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, p1

    .line 103
    :goto_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-nez p0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    move p1, v0

    :cond_2
    return p1
.end method

.method public static isSearchable(Landroid/content/Context;)Z
    .locals 4

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    .line 110
    :goto_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    .line 111
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/settings/development/FiveGVonrConfigController;->isVoNRSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p0, :cond_1

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method private static isVoNRSupported()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "miui.telephony.TelephonyManagerEx"

    .line 116
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDefault"

    const/4 v3, 0x0

    .line 117
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x1

    .line 118
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 119
    invoke-virtual {v2, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "isVoNRSupported"

    new-array v5, v0, [Ljava/lang/Class;

    .line 120
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 121
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v0, [Ljava/lang/Object;

    .line 122
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 124
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/android/settings/development/FiveGVonrConfigController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/development/FiveGVonrConfigController;->mVonrReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private updateState()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/settings/development/FiveGVonrConfigController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/development/FiveGVonrConfigController;->isDisable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsDisabled()V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsEnabled()V

    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "voice_over_new_radio"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 42
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/settings/development/FiveGVonrConfigController;->isVoNRSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPause()V
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/development/FiveGVonrConfigController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/settings/development/FiveGVonrConfigController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/development/FiveGVonrConfigController;->mVonrReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/development/FiveGVonrConfigController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/development/FiveGVonrConfigController;->registerBroadcastReceiver()V

    .line 66
    invoke-direct {p0}, Lcom/android/settings/development/FiveGVonrConfigController;->updateState()V

    :cond_0
    return-void
.end method
