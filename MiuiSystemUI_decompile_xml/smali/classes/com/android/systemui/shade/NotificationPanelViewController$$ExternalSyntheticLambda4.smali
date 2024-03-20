.class public final synthetic Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/shade/ShadeStateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onPanelStateChanged(I)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    move v2, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v2, v0

    .line 13
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 14
    iput-boolean v2, v3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isShadeOpening:Z

    .line 16
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 18
    invoke-virtual {v2}, Lcom/android/systemui/shade/QuickSettingsController;->updateExpansionEnabledAmbient()V

    .line 20
    const/4 v3, 0x2

    .line 23
    iget-object v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 24
    if-ne p1, v3, :cond_1

    .line 26
    iget v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCurrentPanelState:I

    .line 28
    if-eq v3, p1, :cond_1

    .line 30
    invoke-virtual {v2, v0}, Lcom/android/systemui/shade/QuickSettingsController;->setExpandImmediate(Z)V

    .line 32
    const/16 v3, 0x20

    .line 35
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 37
    :cond_1
    if-ne p1, v1, :cond_3

    .line 40
    iget-boolean v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSplitShadeEnabled:Z

    .line 42
    if-eqz v3, :cond_2

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 46
    move-result v3

    .line 49
    if-nez v3, :cond_2

    .line 50
    invoke-virtual {v2, v1}, Lcom/android/systemui/shade/QuickSettingsController;->setExpandImmediate(Z)V

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOpenCloseListener:Lcom/android/systemui/shade/ShadeControllerImpl$2;

    .line 55
    iget-object v1, v1, Lcom/android/systemui/shade/ShadeControllerImpl$2;->this$0:Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 57
    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/ShadeControllerImpl;->makeExpandedVisible(Z)V

    .line 59
    :cond_3
    if-nez p1, :cond_4

    .line 62
    invoke-virtual {v2, v0}, Lcom/android/systemui/shade/QuickSettingsController;->setExpandImmediate(Z)V

    .line 64
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsAnyMultiShadeExpanded:Z

    .line 67
    if-nez v0, :cond_4

    .line 69
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMaybeHideExpandedRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;

    .line 71
    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 73
    :cond_4
    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCurrentPanelState:I

    .line 76
    return-void
    .line 78
.end method
