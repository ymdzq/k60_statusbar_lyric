.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$10;
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

    .line 2402
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 2405
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBluetoothMultiA2DPStateResultReceiver.Receive intent="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiHeadsetFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "Received intent with null action"

    .line 2408
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "MultiA2dp.ACTION.RESET_STATE_CHANGED"

    const/4 v2, 0x1

    if-ne p1, v1, :cond_2

    const-string p1, "action == ACTION_MULTIA2DP_STATE_RESULT_CHANGED"

    .line 2413
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 2414
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    const-string v0, "MultiA2dp.EXTRA.STATE"

    const/4 v1, -0x1

    .line 2415
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 2416
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2417
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mhandleMultiA2DPState(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;I)V

    goto/16 :goto_0

    .line 2419
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    .line 2420
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const-string p1, "audio_share_switch_pre"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    if-eqz p0, :cond_7

    .line 2422
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const-string p2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    if-eq p1, p2, :cond_3

    const-string p2, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    if-ne p1, p2, :cond_7

    :cond_3
    const-string/jumbo p1, "support_audio_share"

    const/4 p2, 0x0

    .line 2426
    invoke-static {p1, p2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmBluetoothA2dp(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object p1

    const/4 p2, 0x2

    if-eqz p1, :cond_4

    .line 2427
    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getActiveDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    .line 2428
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    .line 2429
    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result p1

    if-ne p1, v2, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    .line 2430
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string p2, "audio_share_container"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2431
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmAudioShareContainer(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/PreferenceGroup;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const-string p1, "getActiveDevice() == null,remove audio share container"

    .line 2432
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    :cond_6
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$10;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mupdateCodecIndex(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    :cond_7
    :goto_0
    return-void
.end method
