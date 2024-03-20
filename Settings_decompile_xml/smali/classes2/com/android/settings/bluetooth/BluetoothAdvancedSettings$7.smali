.class Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$7;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAdvancedSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 499
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btBroadcastAudioReceiver action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAdvancedSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    .line 501
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmBroadcastAudioPreOnlySource(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroidx/preference/SwitchPreference;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "com.xiaomi.bluetooth.ACTION_BROADCAST_AUDIO_STATUS_CHANGED"

    .line 504
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 505
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$mupdateBroadcastAudioPreference(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    const-string p1, "broadcast_status"

    .line 506
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 507
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->bluetooth_broadcast_audio_started_toast:I

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 509
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 511
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    .line 512
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_2
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/16 v0, 0xa

    .line 514
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 516
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    iget-object p2, p2, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p2, :cond_3

    .line 517
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    .line 518
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothRestrictState(Landroid/content/Context;)Z

    move-result p2

    goto :goto_0

    :cond_3
    move p2, v1

    .line 520
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmAudioManager(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/16 v3, 0xc

    if-ne p1, v3, :cond_5

    if-eq v0, v2, :cond_5

    const/4 p1, 0x2

    if-eq v0, p1, :cond_5

    const/4 p1, 0x3

    if-eq v0, p1, :cond_5

    .line 521
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    .line 525
    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$misHearingAidConnected(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$mgetBroadcastStatus(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    if-eqz p2, :cond_6

    :cond_5
    move v1, v2

    .line 527
    :cond_6
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$7;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmBroadcastAudioPreOnlySource(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroidx/preference/SwitchPreference;

    move-result-object p0

    xor-int/lit8 p1, v1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_7
    :goto_1
    return-void
.end method
