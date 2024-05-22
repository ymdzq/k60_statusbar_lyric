.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

.field public final synthetic f$1:Landroid/app/PendingIntent;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$$ExternalSyntheticLambda1;->f$1:Landroid/app/PendingIntent;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda1;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mActionClickLogger:Lcom/android/systemui/statusbar/ActionClickLogger;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$$ExternalSyntheticLambda1;->f$1:Landroid/app/PendingIntent;

    .line 6
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ActionClickLogger;->logKeyguardGone(Landroid/app/PendingIntent;)V

    .line 8
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 11
    move-result-object v1

    .line 14
    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :catch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda1;

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda1;->handleClick()Z

    .line 20
    move-result p0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 27
    check-cast p0, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 29
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 31
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 33
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 39
    iget-object v2, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 40
    const/4 v3, 0x2

    .line 42
    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(IZ)V

    .line 43
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/ShadeControllerImpl;->notifyVisibilityChanged(Z)V

    .line 46
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeControllerImpl;->mAssistManagerLazy:Ldagger/Lazy;

    .line 49
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 51
    move-result-object p0

    .line 54
    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    .line 55
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->hideCurrentSession()V

    .line 59
    :cond_0
    return v1
    .line 62
.end method
