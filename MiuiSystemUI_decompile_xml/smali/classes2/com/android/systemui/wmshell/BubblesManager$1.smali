.class public final Lcom/android/systemui/wmshell/BubblesManager$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wmshell/BubblesManager;

.field public final synthetic val$bubbles:Lcom/android/wm/shell/bubbles/Bubbles;

.field public final synthetic val$keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wmshell/BubblesManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/wm/shell/bubbles/Bubbles;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager$1;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/wmshell/BubblesManager$1;->val$keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/wmshell/BubblesManager$1;->val$bubbles:Lcom/android/wm/shell/bubbles/Bubbles;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager$1;->val$keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 6
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager$1;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/wmshell/BubblesManager;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 16
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreamingOrInPreview()Z

    .line 18
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    const-string v2, "Bubbles"

    .line 24
    const-string v3, "Failed to query dream manager."

    .line 26
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    move v0, v1

    .line 31
    :goto_0
    if-nez v0, :cond_0

    .line 32
    const/4 v1, 0x1

    .line 34
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$1;->val$bubbles:Lcom/android/wm/shell/bubbles/Bubbles;

    .line 35
    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 37
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 39
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 41
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda1;

    .line 43
    const/4 v3, 0x2

    .line 45
    invoke-direct {v2, p0, v1, v3}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;ZI)V

    .line 46
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 49
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 51
    return-void
    .line 54
.end method
