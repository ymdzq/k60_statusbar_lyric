.class public final synthetic Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    :pswitch_0
    goto :goto_0

    .line 9
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 12
    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 14
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 16
    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceWindowCollapsed:Z

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 20
    return-void

    .line 23
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 24
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 26
    invoke-virtual {p0, v2}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 28
    return-void

    .line 31
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingFinished()V

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onUnlockHintFinished()V

    .line 37
    iput-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintAnimationRunning:Z

    .line 40
    return-void

    .line 42
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 43
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 45
    cmpl-float v0, v0, v1

    .line 47
    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHideExpandedRunnable:Ljava/lang/Runnable;

    .line 51
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 53
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 55
    :cond_0
    return-void

    .line 58
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 59
    invoke-static {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->$r8$lambda$emnSzHjtVeCb7NG-TXbCA2cbjYw(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 61
    return-void

    .line 64
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 65
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNextCollapseSpeedUpFactor:F

    .line 67
    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->fling(FFZZ)V

    .line 69
    return-void

    .line 72
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 73
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 77
    move-result-object v0

    .line 80
    sget-object v1, Lcom/android/systemui/shade/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    .line 81
    invoke-interface {v0, p0, v1}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 83
    return-void

    .line 86
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 87
    invoke-static {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->$r8$lambda$oTrOQyzWUQJQ_cXkfAHnaU-PI6A(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 89
    return-void

    .line 92
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 93
    const/high16 v0, 0x3f800000    # 1.0f

    .line 95
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->collapse(FZ)V

    .line 97
    return-void

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
    .line 102
.end method
