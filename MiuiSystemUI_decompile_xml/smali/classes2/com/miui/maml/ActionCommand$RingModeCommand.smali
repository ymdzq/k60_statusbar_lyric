.class Lcom/miui/maml/ActionCommand$RingModeCommand;
.super Lcom/miui/maml/ActionCommand$NotificationReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mToggleHelper:Lcom/miui/maml/ActionCommand$ModeToggleHelper;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "ring_mode"

    .line 2
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    .line 4
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/maml/ActionCommand$NotificationReceiver;-><init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/miui/maml/ActionCommand$ModeToggleHelper;

    .line 9
    const/4 v0, 0x0

    .line 11
    invoke-direct {p1, v0}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;-><init>(Lcom/miui/maml/ActionCommand$1;)V

    .line 12
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lcom/miui/maml/ActionCommand$ModeToggleHelper;

    .line 15
    const-string v0, "normal"

    .line 17
    const/4 v1, 0x2

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->addMode(Ljava/lang/String;I)V

    .line 20
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lcom/miui/maml/ActionCommand$ModeToggleHelper;

    .line 23
    const-string/jumbo v0, "silent"

    .line 25
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->addMode(Ljava/lang/String;I)V

    .line 29
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lcom/miui/maml/ActionCommand$ModeToggleHelper;

    .line 32
    const-string/jumbo v0, "vibrate"

    .line 34
    const/4 v1, 0x1

    .line 37
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->addMode(Ljava/lang/String;I)V

    .line 38
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lcom/miui/maml/ActionCommand$ModeToggleHelper;

    .line 41
    invoke-virtual {p0, p2}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->build(Ljava/lang/String;)Z

    .line 43
    move-result p0

    .line 46
    if-nez p0, :cond_0

    .line 47
    new-instance p0, Ljava/lang/StringBuilder;

    .line 49
    const-string p1, "invalid ring mode command value: "

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 62
    const-string p1, "ActionCommand"

    .line 63
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    return-void
    .line 68
.end method


# virtual methods
.method public doPerform()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lcom/miui/maml/ActionCommand$ModeToggleHelper;

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->click()V

    .line 9
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mToggleHelper:Lcom/miui/maml/ActionCommand$ModeToggleHelper;

    .line 12
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->getModeId()I

    .line 14
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    .line 18
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/miui/maml/ActionCommand$StatefulActionCommand;->updateState(I)V

    .line 23
    return-void
    .line 26
.end method

.method public update()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/miui/maml/ActionCommand;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    .line 6
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 8
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 12
    const-string v1, "audio"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Landroid/media/AudioManager;

    .line 20
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$RingModeCommand;->mAudioManager:Landroid/media/AudioManager;

    .line 24
    if-nez v0, :cond_1

    .line 26
    return-void

    .line 28
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    .line 29
    move-result v0

    .line 32
    invoke-virtual {p0, v0}, Lcom/miui/maml/ActionCommand$StatefulActionCommand;->updateState(I)V

    .line 33
    return-void
    .line 36
.end method
