.class Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$3;
.super Ljava/lang/Object;
.source "MiuiBleAudioSourceInfoFragment.java"

# interfaces
.implements Lcom/android/settings/bluetooth/MiuiBleAudioUitls$PasswordDialogEventCallback;


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

    .line 292
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeButtonClicked(B)V
    .locals 0

    const-string p0, "MiuiBleAudioSourceInfoFragment"

    const-string/jumbo p1, "onNegativeButtonClicked "

    .line 305
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPositiveButtonClicked(BLjava/lang/String;)V
    .locals 2

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPositiveButtonClicked  password = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiBleAudioSourceInfoFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$fgetmScanAssistManager(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "set password confirmed "

    .line 298
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$3;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$fgetmScanAssistManager(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->setBroadcastCode(BLjava/lang/String;Z)Z

    :cond_0
    return-void
.end method
