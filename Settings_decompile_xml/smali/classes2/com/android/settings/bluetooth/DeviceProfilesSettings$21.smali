.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$21;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;
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

    .line 2913
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$21;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2916
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$21;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .line 2917
    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "audio_share_switch_pre"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x2

    .line 2918
    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getActiveDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 2919
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$21;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmBluetoothA2dp(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v2

    const-string v3, "DeviceProfilesSettings"

    if-eqz v2, :cond_4

    const-string v2, "audio_share_container"

    const/4 v4, 0x0

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    .line 2922
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2923
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v0, "getActiveDevice() == null,disable checkbox"

    .line 2924
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$21;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$21;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmAudioShareContainer(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2928
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$21;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$21;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmAudioShareContainer(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroidx/preference/PreferenceGroup;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const-string p0, "getActiveDevice() == null,remove audio share container"

    .line 2929
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2932
    :cond_1
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$21;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmManager(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    .line 2933
    invoke-virtual {v5, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    .line 2934
    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$21;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    if-eq v1, v6, :cond_3

    if-eqz v5, :cond_3

    .line 2935
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isLEAConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "LEA "

    if-eqz v0, :cond_2

    .line 2937
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2938
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 2939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " isconnected,disable checkbox"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$21;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$21;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmAudioShareContainer(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2943
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$21;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$21;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmAudioShareContainer(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroidx/preference/PreferenceGroup;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 2944
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " isconnected,remove audio share container"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p0, "mBluetoothA2dp.getActiveDevice() != null"

    .line 2947
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p0, "mBluetoothA2dp == null"

    .line 2951
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method
