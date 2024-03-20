.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$12;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;->handleCheckBoxPreferenceEnabled(Landroidx/preference/CheckBoxPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    .line 2288
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$12;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "DeviceProfilesSettings"

    .line 2292
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$12;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fputmLC3Switching(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    const-string v1, "leAudioPre: Timeout to set mLC3Switching false"

    .line 2293
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$12;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .line 2295
    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "le_audio_pre"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    .line 2296
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$12;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "miui_store_audio_share_device_address"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 2297
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$12;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getLeAudioStatus()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$12;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .line 2298
    invoke-virtual {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHfpConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$12;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$misSCOOn(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$12;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$misLeAudioCgOn(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$12;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetisSingleHeadsetConn(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$12;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmDeviceMacAddress(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object p0

    .line 2299
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2300
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string p0, "leAudioPre: Timeout to enable LC3 Pref"

    .line 2301
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2304
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
