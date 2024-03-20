.class Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$4;
.super Ljava/lang/Object;
.source "MiuiBluetoothShareBroadcastFragment.java"

# interfaces
.implements Lcom/android/settings/bluetooth/MiuiBleAudioUitls$HintDialogEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeButtonClicked(BI)V
    .locals 2

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNegativeButtonClicked srcId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " hintType = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiuiBluetoothShareBroadcastFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fgetmIsAddingBusy(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fgetmAddingSourceDevicePreference(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 411
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 412
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 414
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fgetmAddingSourceDevicePreference(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 415
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fputmAddingSourceDevicePreference(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;)V

    .line 416
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fputmIsAddingBusy(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Z)V

    :cond_1
    return-void
.end method

.method public onPositiveButtonClicked(BI)V
    .locals 6

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPositiveButtonClicked srcId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hintType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MiuiBluetoothShareBroadcastFragment"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fgetmIsAddingBusy(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fgetmAddingSourceDevicePreference(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fgetmAddingSourceDevicePreference(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fputmAddingSourceDevicePreference(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;)V

    .line 394
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {v0, v4}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fputmIsAddingBusy(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Z)V

    :cond_1
    const/4 v0, 0x7

    if-ne p2, v0, :cond_2

    .line 398
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {v0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$mgetSourceInfoBySourceId(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;B)Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object v0

    .line 399
    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {v5}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fgetmScanAssistManager(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    .line 400
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->-$$Nest$fgetmScanAssistManager(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    move-result-object p0

    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result p1

    .line 402
    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getBroadcastChannelsSyncStatus()Ljava/util/List;

    move-result-object p2

    .line 401
    invoke-virtual {p0, p1, v4, p2, v4}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->updateBroadcastSource(BILjava/util/List;Z)Z

    :cond_2
    return-void
.end method
