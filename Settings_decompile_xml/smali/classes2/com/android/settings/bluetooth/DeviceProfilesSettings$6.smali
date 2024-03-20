.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$6;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


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

    .line 1662
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$6;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    const-string p1, "DeviceProfilesSettings"

    const-string/jumbo v0, "onHfpServiceConnected()"

    .line 1665
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$6;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmBluetoothHfpLock(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1667
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$6;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fputmBluetoothHfp(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/bluetooth/BluetoothHeadset;)V

    const-string/jumbo p2, "support_audio_share"

    const/4 v0, 0x0

    .line 1668
    invoke-static {p2, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$6;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .line 1669
    invoke-virtual {p2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    const-string v1, "audio_share_container"

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$6;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .line 1670
    invoke-static {p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$misAudioOn(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 1671
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$6;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .line 1672
    invoke-virtual {p2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    const-string v1, "audio_share_switch_pre"

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    .line 1673
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$6;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .line 1674
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const-string v1, "audio_share_volume_pre"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    if-eqz p2, :cond_0

    .line 1676
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string p2, "DeviceProfilesSettings"

    const-string v1, "mBluetoothHfp.isAudioOn() == on, prefAudioShareSwitch.setDisabled"

    .line 1677
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p0, :cond_1

    .line 1680
    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 1683
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    const-string p1, "DeviceProfilesSettings"

    const-string/jumbo v0, "onHfpServiceDisconnected()"

    .line 1688
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$6;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmBluetoothHfpLock(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1690
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$6;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$mcloseProfileProxy(Lcom/android/settings/bluetooth/DeviceProfilesSettings;I)V

    .line 1691
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
