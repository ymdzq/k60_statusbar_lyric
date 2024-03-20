.class Lcom/android/settings/bluetooth/BluetoothSettings$12;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0

    .line 1346
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$12;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1349
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBluetoothReceiver.onReceive() intent="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED"

    .line 1351
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "android.bluetooth.extra.CODEC_STATUS"

    .line 1352
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothCodecStatus;

    .line 1354
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received BluetoothCodecStatus="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$12;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-$$Nest$mupdateCodecIcon(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    goto/16 :goto_3

    :cond_0
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 1356
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, "android.bluetooth.profile.extra.STATE"

    const-string v4, "android.bluetooth.device.extra.DEVICE"

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 1357
    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1360
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 1361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received CONNECTION_STATE_CHANGED state="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " device="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v2, :cond_1

    .line 1364
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$12;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-$$Nest$mupdateCodecIcon(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    goto/16 :goto_3

    :cond_1
    if-nez p1, :cond_c

    .line 1366
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$12;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {p0, p2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-$$Nest$mupdateCodecIcon(Lcom/android/settings/bluetooth/BluetoothSettings;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_3

    :cond_2
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 1368
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$12;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    .line 1369
    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->access$000(Lcom/android/settings/bluetooth/BluetoothSettings;)Landroid/content/Intent;

    move-result-object v1

    const-string v6, "from"

    const-string/jumbo v7, "null"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, "Wireless transmission"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1370
    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1373
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    if-eqz p2, :cond_c

    if-ne p1, v2, :cond_c

    .line 1375
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "Bluetooth device name"

    .line 1376
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1377
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$12;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1378
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$12;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3

    :cond_3
    const-string v1, "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED"

    .line 1380
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1382
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 1384
    :try_start_0
    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 1386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " device is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , and state is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v2, :cond_4

    .line 1388
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$12;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {p2, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-$$Nest$mupdateLeAudioCodecIcon(Lcom/android/settings/bluetooth/BluetoothSettings;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    .line 1390
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$12;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {p2, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-$$Nest$mtwoLeNotAllDisconnected(Lcom/android/settings/bluetooth/BluetoothSettings;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 1391
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$12;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {p2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-$$Nest$mupdateCodecIcon(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ACTION_LE_AUDIO_CONNECTION_STATE_CHANGED failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :cond_5
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$12;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-$$Nest$mupdateAospLeAudioCodecIcon(Lcom/android/settings/bluetooth/BluetoothSettings;Landroid/bluetooth/BluetoothDevice;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception p0

    .line 1401
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " updateAospLeAudioCodecIcon failed "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_6
    const-string v1, "android.bluetooth.action.LE_AUDIO_ACTIVE_DEVICE_CHANGED"

    .line 1403
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 1404
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    const-string v1, "MultiA2dp.ACTION.RESET_STATE_CHANGED"

    .line 1411
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1412
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_c

    .line 1414
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$12;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object p2, p2, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    .line 1415
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 1416
    instance-of p2, p2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez p2, :cond_8

    goto :goto_1

    .line 1420
    :cond_8
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$12;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    .line 1421
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz p0, :cond_c

    const-string/jumbo p1, "updateSummary!"

    .line 1423
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->updateSummary()V

    goto :goto_3

    :cond_9
    :goto_1
    const-string/jumbo p0, "the preference is null or not BluetoothDevicePreference!"

    .line 1417
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1405
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$12;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_c

    .line 1406
    invoke-virtual {p1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1407
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$12;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1409
    :cond_b
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$12;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0xc8

    invoke-virtual {p0, v5, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_c
    :goto_3
    return-void
.end method
