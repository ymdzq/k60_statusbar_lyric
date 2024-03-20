.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


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

    .line 2191
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 5

    const-string p1, "MiuiHeadsetFragment"

    const-string/jumbo v0, "onHfpServiceConnected()"

    .line 2194
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmBluetoothHfpLock(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2196
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fputmBluetoothHfp(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroid/bluetooth/BluetoothHeadset;)V

    .line 2197
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iget-object v0, p2, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetBattery:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    if-eqz v0, :cond_0

    .line 2198
    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmBluetoothHfp(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->onHfpChanged(Landroid/bluetooth/BluetoothHeadset;)V

    .line 2200
    :cond_0
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iget-object v0, p2, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetRename:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 2201
    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmBluetoothHfp(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->onHfpConnected(Landroid/bluetooth/BluetoothHeadset;)V

    .line 2202
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iget-object v0, p2, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetRename:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmBluetoothHfp(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p2

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    if-ne p2, v1, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, v3

    :goto_0
    invoke-virtual {v0, p2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->onHfpChanged(Z)V

    :cond_2
    const-string/jumbo p2, "support_audio_share"

    .line 2204
    invoke-static {p2, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    .line 2205
    invoke-virtual {p2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    const-string v0, "audio_share_container"

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    .line 2206
    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$misAudioOn(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z

    move-result p2

    if-ne p2, v2, :cond_4

    .line 2207
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    .line 2208
    invoke-virtual {p2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    const-string v0, "audio_share_switch_pre"

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    .line 2209
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    .line 2210
    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "audio_share_volume_pre"

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    if-eqz p2, :cond_3

    .line 2212
    invoke-virtual {p2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string p2, "MiuiHeadsetFragment"

    const-string v4, "mBluetoothHfp.isAudioOn() == on, prefAudioShareSwitch.setDisabled"

    .line 2213
    invoke-static {p2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v0, :cond_4

    .line 2216
    invoke-virtual {v0, v3}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 2219
    :cond_4
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmBluetoothHfp(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    if-ne p2, v1, :cond_8

    .line 2220
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmSupportInear(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmInearTest(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 2221
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmInearTest(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2223
    :cond_5
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmShowAutoAck(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmAutoAck(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 2224
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmAutoAck(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2226
    :cond_6
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmSupportSilentUpgrade(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmSilentUpgrade(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 2227
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmSilentUpgrade(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2229
    :cond_7
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmVirtualSurroundSound(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 2230
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmVirtualSurroundSound(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 2233
    :cond_8
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmSupportInear(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmInearTest(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 2234
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmInearTest(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2236
    :cond_9
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmShowAutoAck(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmAutoAck(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 2237
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmAutoAck(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2239
    :cond_a
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmSupportSilentUpgrade(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmSilentUpgrade(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 2240
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmSilentUpgrade(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2242
    :cond_b
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmVirtualSurroundSound(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 2243
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmVirtualSurroundSound(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2246
    :cond_c
    :goto_1
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mupdateHeadTrackEnable(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    .line 2247
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_d

    .line 2249
    :try_start_1
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->connect(Landroid/bluetooth/BluetoothDevice;)V

    .line 2250
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmWorkHandler(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmWorkHandler(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    move-result-object p0

    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_2
    const-string p0, "MiuiHeadsetFragment"

    const-string p2, "connect the device mma"

    .line 2252
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    :cond_d
    :goto_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    const-string p1, "MiuiHeadsetFragment"

    const-string/jumbo v0, "onHfpServiceDisconnected()"

    .line 2260
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmBluetoothHfpLock(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2262
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mcloseProfileProxy(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;I)V

    .line 2263
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
