.class public final Lcom/android/systemui/volume/VolumeDialogImpl$7;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result p1

    .line 9
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->getActiveRow()Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 14
    move-result-object p1

    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowA11yStream:Z

    .line 18
    if-nez v0, :cond_1

    .line 20
    iget v0, p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    .line 22
    const/16 v1, 0xa

    .line 24
    if-ne v1, v0, :cond_1

    .line 26
    const/4 p1, 0x7

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    .line 29
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateRowsH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 33
    :goto_1
    return-void
    .line 36
.end method

.method public final onCaptionComponentStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    move-result p1

    .line 5
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result p2

    .line 9
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 10
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsView:Landroid/view/ViewGroup;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    if-eqz p1, :cond_0

    .line 16
    const/4 v1, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 v1, 0x8

    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 22
    :cond_1
    if-nez p1, :cond_2

    .line 25
    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->updateCaptionsIcon()V

    .line 28
    if-eqz p2, :cond_4

    .line 31
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHasSeenODICaptionsTooltip:Z

    .line 33
    if-nez p1, :cond_3

    .line 35
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    .line 37
    if-eqz p1, :cond_3

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 41
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipView:Landroid/view/View;

    .line 45
    const p2, 0x7f0a02da    # @id/dismiss

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object p1

    .line 53
    new-instance p2, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda6;

    .line 54
    const/4 v0, 0x3

    .line 56
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mODICaptionsTooltipViewStub:Landroid/view/ViewStub;

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 66
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/VolumeDialogImpl$H;

    .line 69
    new-instance p2, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;

    .line 71
    const/4 v0, 0x5

    .line 73
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V

    .line 74
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    :cond_4
    :goto_1
    return-void
    .line 80
.end method

.method public final onConfigurationChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/VolumeDialogImpl$CustomDialog;

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mConfigChanged:Z

    .line 10
    return-void
    .line 12
.end method

.method public final onDismissRequested(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    .line 4
    return-void
    .line 7
.end method

.method public final onLayoutDirectionChanged(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 6
    return-void
    .line 9
.end method

.method public final onScreenOff()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 2
    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    .line 5
    return-void
    .line 8
.end method

.method public final onShowCsdWarning(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->showCsdWarningH(II)V

    .line 4
    return-void
    .line 7
.end method

.method public final onShowRequested(IZI)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/volume/VolumeDialogImpl;->-$$Nest$mshowH(Lcom/android/systemui/volume/VolumeDialogImpl;IZI)V

    .line 4
    return-void
    .line 7
.end method

.method public final onShowSafetyWarning(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 2
    and-int/lit16 p1, p1, 0x401

    .line 4
    if-nez p1, :cond_0

    .line 6
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mShowing:Z

    .line 8
    if-eqz p1, :cond_2

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    .line 12
    monitor-enter p1

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/VolumeDialogImpl$5;

    .line 15
    if-eqz v0, :cond_1

    .line 17
    monitor-exit p1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$5;

    .line 21
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 23
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 25
    invoke-interface {v2}, Lcom/android/systemui/plugins/VolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    .line 27
    move-result-object v2

    .line 30
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl$5;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/content/Context;Landroid/media/AudioManager;)V

    .line 31
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarning:Lcom/android/systemui/volume/VolumeDialogImpl$5;

    .line 34
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 36
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 44
    :goto_0
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0
    .line 50
.end method

.method public final onShowSilentHint()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 8
    const/4 v0, 0x2

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final onShowVibrateHint()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSilentMode:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    .line 8
    const/4 v0, 0x0

    .line 10
    invoke-interface {p0, v0, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public final onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$7;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    .line 4
    return-void
    .line 7
.end method
