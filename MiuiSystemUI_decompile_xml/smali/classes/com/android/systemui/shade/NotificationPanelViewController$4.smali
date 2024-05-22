.class public final Lcom/android/systemui/shade/NotificationPanelViewController$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$4;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDelayedDozeAmountAnimationRunning()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$4;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mWillPlayDelayedDozeAmountAnimation:Z

    .line 4
    if-nez v0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mWillPlayDelayedDozeAmountAnimation:Z

    .line 10
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 12
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->logDelayingClockWakeUpAnimation(Z)V

    .line 14
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardMediaController:Lcom/android/systemui/media/controls/ui/KeyguardMediaController;

    .line 17
    invoke-virtual {v1}, Lcom/android/systemui/media/controls/ui/KeyguardMediaController;->refreshMediaPosition()V

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->positionClockAndNotifications(Z)V

    .line 22
    :goto_0
    return-void
    .line 25
.end method

.method public final onFullyHiddenChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$4;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateForHeadsUp()V

    .line 6
    return-void
    .line 9
.end method

.method public final onPulseExpansionChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$4;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->requestScrollerTopPaddingUpdate(Z)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method
