.class Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$4;
.super Ljava/lang/Object;
.source "MiuiBleAudioSourceInfoFragment.java"

# interfaces
.implements Lcom/android/settings/bluetooth/MiuiBleAudioUitls$HintDialogEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeButtonClicked(BI)V
    .locals 1

    .line 335
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onNegativeButtonClicked srcId= "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " hintType = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiBleAudioSourceInfoFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPositiveButtonClicked(BI)V
    .locals 3

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPositiveButtonClicked srcId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " hintType = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiBleAudioSourceInfoFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    .line 317
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$fgetmScanAssistManager(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$fgetmBleBroadcastSourceInfo(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "remove source info confirmed "

    .line 319
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$fgetmBleBroadcastSourceInfo(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls;->getSyncState(Landroid/bluetooth/BleBroadcastSourceInfo;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    const-string p1, "broadcast is in sync need update the state to not sync and then can remove it! "

    .line 322
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$fgetmScanAssistManager(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$fgetmBleBroadcastSourceInfo(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$fgetmBleBroadcastSourceInfo(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getBroadcastChannelsSyncStatus()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->updateBroadcastSource(BILjava/util/List;Z)Z

    .line 327
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x1

    .line 328
    iput p2, p1, Landroid/os/Message;->what:I

    .line 329
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$4;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method
