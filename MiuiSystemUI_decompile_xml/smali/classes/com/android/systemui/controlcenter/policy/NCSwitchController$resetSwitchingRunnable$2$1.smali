.class public final Lcom/android/systemui/controlcenter/policy/NCSwitchController$resetSwitchingRunnable$2$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/NCSwitchController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/NCSwitchController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController$resetSwitchingRunnable$2$1;->this$0:Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController$resetSwitchingRunnable$2$1;->this$0:Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->getPanelViewController()Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 4
    move-result-object v0

    .line 7
    iget-boolean v0, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNCSwitching:Z

    .line 8
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController$resetSwitchingRunnable$2$1;->this$0:Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 10
    iget-object v2, v1, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->mControlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 12
    iget-boolean v2, v2, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->ncSwitching:Z

    .line 14
    if-eqz v0, :cond_0

    .line 16
    iget-object v0, v1, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->listeners:Ljava/util/ArrayList;

    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 33
    check-cast v1, Lcom/android/systemui/controlcenter/policy/NCSwitchController$PrepareForNCSwitcherListener;

    .line 34
    invoke-interface {v1}, Lcom/android/systemui/controlcenter/policy/NCSwitchController$PrepareForNCSwitcherListener;->notifyNCSwitchingEnd()V

    .line 36
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    if-eqz v2, :cond_1

    .line 41
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController$resetSwitchingRunnable$2$1;->this$0:Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 43
    iget-object v1, v1, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->mControlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 45
    iput-boolean v0, v1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->ncSwitching:Z

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController$resetSwitchingRunnable$2$1;->this$0:Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 49
    iget-boolean v2, v1, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->switchedToControl:Z

    .line 51
    if-nez v2, :cond_2

    .line 53
    iget-boolean v2, v1, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->blurSwitched:Z

    .line 55
    if-eqz v2, :cond_3

    .line 57
    :cond_2
    iget-object v1, v1, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->mControlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 59
    invoke-virtual {v1}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isCollapsed()Z

    .line 61
    move-result v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController$resetSwitchingRunnable$2$1;->this$0:Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 67
    invoke-virtual {v1}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->getPanelViewController()Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 69
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 73
    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController$resetSwitchingRunnable$2$1;->this$0:Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 79
    invoke-virtual {v1, v0}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->setSwitchedToControl(Z)V

    .line 81
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController$resetSwitchingRunnable$2$1;->this$0:Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 84
    invoke-virtual {v1, v0}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->setBlurSwitched(Z)V

    .line 86
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController$resetSwitchingRunnable$2$1;->this$0:Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 89
    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->changePanelState(F)V

    .line 92
    :cond_3
    return-void
    .line 95
.end method
