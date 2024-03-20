.class public final Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_2

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 9
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 11
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEditorHelper;->releaseEnterSurfaceControl()V

    .line 13
    return-void

    .line 16
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 17
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDismissView:Lcom/android/systemui/statusbar/views/DismissView;

    .line 19
    if-nez p0, :cond_0

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 24
    :goto_0
    return-void

    .line 27
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 28
    iget-boolean v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNssCoveredQs:Z

    .line 30
    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 34
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->getHeaderHeight()I

    .line 36
    move-result v0

    .line 39
    int-to-float v0, v0

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateScrollerTopPadding(F)V

    .line 41
    goto :goto_1

    .line 44
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->access$calculateNotificationsTopPadding$s95694906(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)F

    .line 45
    move-result v0

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateScrollerTopPadding(F)V

    .line 49
    :goto_1
    return-void

    .line 52
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateDismissView()V

    .line 55
    return-void

    .line 58
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 59
    iget-wide v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->runCount:J

    .line 61
    const-wide/16 v3, 0x1

    .line 63
    add-long/2addr v3, v1

    .line 65
    iput-wide v3, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->runCount:J

    .line 66
    const/4 v0, 0x2

    .line 68
    int-to-long v3, v0

    .line 69
    rem-long/2addr v1, v3

    .line 70
    long-to-int v0, v1

    .line 71
    const-wide/16 v1, 0x1000

    .line 72
    const-string v3, "mHidePanelRun"

    .line 74
    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 76
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 84
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingCollapseRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 88
    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandedFraction(F)V

    .line 92
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpanding:Z

    .line 95
    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingFinished()V

    .line 99
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    .line 102
    const/4 v1, 0x0

    .line 104
    if-eqz v0, :cond_3

    .line 105
    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateExpansionAndVisibility()V

    .line 109
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMPanelAppeared(Z)V

    .line 112
    return-void

    .line 115
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 116
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateVisibility(Z)V

    .line 118
    return-void

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 122
.end method
