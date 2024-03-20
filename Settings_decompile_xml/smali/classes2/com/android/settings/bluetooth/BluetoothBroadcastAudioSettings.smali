.class public Lcom/android/settings/bluetooth/BluetoothBroadcastAudioSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "BluetoothBroadcastAudioSettings.java"


# static fields
.field private static mBroadcastEnabled:Z = false

.field private static mBroadcastPropertyChecked:Z = false


# instance fields
.field private mAutoDisablePreference:Landroidx/preference/Preference;

.field mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static isBroadcastEnabled()Z
    .locals 1

    .line 125
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothBroadcastAudioSettings;->mBroadcastEnabled:Z

    return v0
.end method

.method private static isBroadcastPropertyChecked()Z
    .locals 1

    .line 117
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothBroadcastAudioSettings;->mBroadcastPropertyChecked:Z

    return v0
.end method

.method private static setBroadcastEnabled(Z)V
    .locals 0

    .line 129
    sput-boolean p0, Lcom/android/settings/bluetooth/BluetoothBroadcastAudioSettings;->mBroadcastEnabled:Z

    return-void
.end method

.method private static setBroadcastProperty(Z)V
    .locals 0

    .line 121
    sput-boolean p0, Lcom/android/settings/bluetooth/BluetoothBroadcastAudioSettings;->mBroadcastPropertyChecked:Z

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 8
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

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothBroadcastAudioSettings;->isBroadcastPropertyChecked()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string/jumbo v1, "persist.vendor.service.bt.adv_audio_mask"

    .line 137
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_0

    const-string/jumbo v1, "persist.bluetooth.broadcast_ui"

    .line 139
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 140
    :goto_0
    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothBroadcastAudioSettings;->setBroadcastEnabled(Z)V

    .line 141
    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothBroadcastAudioSettings;->setBroadcastProperty(Z)V

    .line 144
    :cond_1
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothBroadcastAudioSettings;->isBroadcastEnabled()Z

    move-result v1

    const-string v4, "BluetoothBroadcastAudioSettings"

    if-nez v1, :cond_2

    const-string p0, "[ZZQ] createPreferenceControllers mBroadcastEnabled is false"

    .line 145
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    const-string v1, "createPreferenceControllers for Broadcast"

    .line 149
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :try_start_0
    const-class v1, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;

    .line 154
    const-class v4, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;

    new-array v5, v2, [Ljava/lang/Class;

    .line 156
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    .line 157
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    .line 158
    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    .line 159
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 160
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    const-string p1, "bluetooth_broadcast_enable"

    aput-object p1, v5, v2

    .line 162
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 163
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "setFragment"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v6, Landroidx/fragment/app/Fragment;

    aput-object v6, v2, v3

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 164
    invoke-virtual {v2, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroidx/fragment/app/Fragment$InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catch_0
    move-exception p0

    .line 170
    :try_start_1
    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothBroadcastAudioSettings;->setBroadcastEnabled(Z)V

    .line 171
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "BluetoothBroadcastAudioSettings"

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 113
    sget p0, Lcom/android/settings/R$xml;->bluetooth_broadcast_audio_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastAudioSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_0

    const-string p0, "BluetoothBroadcastAudioSettings"

    const-string p1, "Bluetooth is not supported on this device"

    .line 68
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "ba_auto_disable"

    .line 73
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastAudioSettings;->mAutoDisablePreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_1

    .line 75
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastAudioSettings;->mAutoDisablePreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastAudioSettings;->mAutoDisablePreference:Landroidx/preference/Preference;

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 95
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 96
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BluetoothBroadcastAudioSettings"

    const-string/jumbo v2, "set scan mode connectable"

    .line 98
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x15

    .line 99
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    .line 101
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastAudioSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 82
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 83
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BluetoothBroadcastAudioSettings"

    const-string/jumbo v2, "set scan mode connectable and discoverable"

    .line 85
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x17

    .line 86
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastAudioSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
