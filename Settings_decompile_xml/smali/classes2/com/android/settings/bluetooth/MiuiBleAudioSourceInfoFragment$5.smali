.class Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$5;
.super Landroid/os/Handler;
.source "MiuiBleAudioSourceInfoFragment.java"


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
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;Landroid/os/Looper;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$5;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiBleAudioSourceInfoFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$5;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$fgetmScanAssistManager(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$5;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$fgetmBleBroadcastSourceInfo(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "handleMessage remove source info now"

    .line 359
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$5;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$fgetmScanAssistManager(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$5;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$fgetmBleBroadcastSourceInfo(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->removeBroadcastSource(BZ)Z

    :cond_1
    :goto_0
    return-void
.end method
