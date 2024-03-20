.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$11;
.super Landroid/content/BroadcastReceiver;
.source "MiuiHeadsetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V
    .locals 0

    .line 2509
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$11;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 2512
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiHeadsetFragment"

    if-nez p1, :cond_0

    const-string p0, "Received mBluetoothHfpAudioStateReceiver intent with null action"

    .line 2514
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "android.bluetooth.profile.extra.STATE"

    const/4 v1, -0x1

    .line 2518
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 2519
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBluetoothHfpAudioStateReceiver BluetoothProfile.EXTRA_STATE ="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0xc

    const-string v1, "le_audio_pre"

    if-ne p1, p2, :cond_2

    .line 2521
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$11;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isDualModeDevice()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2522
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$11;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    .line 2523
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/CheckBoxPreference;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 2525
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string p0, "leAudioPre.setEnabled(false) when STATE_AUDIO_CONNECTED"

    .line 2526
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/16 p2, 0xa

    if-ne p1, p2, :cond_6

    .line 2531
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$11;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isDualModeDevice()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2532
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$11;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    .line 2533
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 2534
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$11;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "miui_store_audio_share_device_address"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_3

    .line 2535
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$11;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmLC3Switching(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$11;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDeviceMacAddress(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 2536
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string p0, "leAudioPre.setEnabled(true) when STATE_AUDIO_DISCONNECTED"

    .line 2537
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 2541
    :cond_4
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$11;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    .line 2542
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v1, "audio_share_switch_pre"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 2543
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$11;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    .line 2544
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const-string v1, "audio_share_volume_pre"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    if-eqz p1, :cond_5

    .line 2546
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string p1, "BluetoothHeadset.STATE_AUDIO_DISCONNECTED, prefAudioShareSwitch.setEnabled"

    .line 2547
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz p0, :cond_6

    .line 2550
    invoke-virtual {p0, p2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_6
    return-void
.end method
