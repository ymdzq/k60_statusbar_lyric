.class public final Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;
.super Landroid/media/IVolumeController$Stub;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 2
    invoke-direct {p0}, Landroid/media/IVolumeController$Stub;-><init>()V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 12
    const-string v1, ".VC"

    .line 14
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    .line 20
    return-void
    .line 22
.end method


# virtual methods
.method public final dismiss()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    .line 6
    const-string v1, "dismiss requested"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 13
    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 15
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-virtual {v0, v2, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 19
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 23
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 26
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 28
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 30
    return-void
    .line 33
.end method

.method public final displayCsdWarning(II)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    .line 6
    const-string v1, "displayCsdWarning durMs="

    .line 8
    invoke-static {v1, p2, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 15
    const/16 v0, 0x11

    .line 17
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 19
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 23
    return-void
    .line 26
.end method

.method public final displaySafeVolumeWarning(I)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    const-string v2, "displaySafeVolumeWarning "

    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {p1}, Lcom/android/systemui/volume/Util;->audioManagerFlagsToString(I)Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 29
    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 31
    const/16 v1, 0xe

    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 35
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 41
    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 45
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 48
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 50
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 53
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 57
    return-void
    .line 60
.end method

.method public final masterMuteChanged(I)V
    .locals 0

    .line 1
    sget-boolean p1, Lcom/android/systemui/volume/D;->BUG:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    .line 6
    const-string p1, "masterMuteChanged"

    .line 8
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public final setA11yMode(I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    .line 6
    const-string/jumbo v1, "setA11yMode to "

    .line 8
    invoke-static {v1, p1, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    :cond_0
    if-eqz p1, :cond_2

    .line 14
    const/4 v0, 0x1

    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    .line 19
    const-string v1, "Invalid accessibility mode "

    .line 21
    invoke-static {v1, p1, v0}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    goto :goto_0

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 27
    iput-boolean v0, p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowA11yStream:Z

    .line 29
    goto :goto_0

    .line 31
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 32
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowA11yStream:Z

    .line 35
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 37
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 39
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowA11yStream:Z

    .line 41
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    move-result-object p0

    .line 46
    const/16 v0, 0xf

    .line 47
    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 49
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 53
    return-void
    .line 56
.end method

.method public final setLayoutDirection(I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    .line 6
    const-string/jumbo v1, "setLayoutDirection"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 16
    const/16 v0, 0x8

    .line 18
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 21
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 25
    return-void
    .line 28
.end method

.method public final volumeChanged(II)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v2, "volumeChanged "

    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-static {p1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, " "

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-static {p2}, Lcom/android/systemui/volume/Util;->audioManagerFlagsToString(I)Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 42
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 44
    const/4 v0, 0x1

    .line 46
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 47
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 51
    return-void
    .line 54
.end method
