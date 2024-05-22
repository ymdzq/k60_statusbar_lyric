.class public final Lcom/android/keyguard/KeyguardMoveRightController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/keyguard/MiuiKeyguardCameraView$CallBack;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardMoveRightController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardMoveRightController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMoveRightController$1;->this$0:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimUpdate(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveRightController$1;->this$0:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/KeyguardMoveHelper$2;

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveHelper$2;->this$0:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mCallback:Lcom/android/keyguard/KeyguardMoveHelper$Callback;

    .line 8
    const/4 v0, 0x1

    .line 10
    check-cast p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->onHorizontalMove(FZ)V

    .line 13
    return-void
    .line 16
.end method

.method public final onBackAnimationEnd()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveRightController$1;->this$0:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/KeyguardMoveHelper$2;

    .line 4
    iget-object v0, v0, Lcom/android/keyguard/KeyguardMoveHelper$2;->this$0:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 6
    iget-object v1, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mCallback:Lcom/android/keyguard/KeyguardMoveHelper$Callback;

    .line 8
    check-cast v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 10
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->onHorizontalMove(FZ)V

    .line 14
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mSwipingInProgress:Z

    .line 18
    iget-object p0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/KeyguardMoveHelper$2;

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {v3}, Lcom/android/keyguard/KeyguardMoveHelper$2;->updateCanShowGxzw(Z)V

    .line 25
    return-void
    .line 28
.end method

.method public final onCancelAnimationEnd()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveRightController$1;->this$0:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/KeyguardMoveHelper$2;

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMoveHelper$2;->onCancelAnimationEnd(Z)V

    .line 7
    iget-object p0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/KeyguardMoveHelper$2;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const/4 p0, 0x1

    .line 15
    invoke-static {p0}, Lcom/android/keyguard/KeyguardMoveHelper$2;->updateCanShowGxzw(Z)V

    .line 16
    return-void
    .line 19
.end method

.method public final onCompletedAnimationEnd()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveRightController$1;->this$0:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/KeyguardMoveHelper$2;

    .line 4
    iget-object v0, v0, Lcom/android/keyguard/KeyguardMoveHelper$2;->this$0:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 6
    iget-object v1, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mCallback:Lcom/android/keyguard/KeyguardMoveHelper$Callback;

    .line 8
    check-cast v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 10
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->onHorizontalMove(FZ)V

    .line 14
    iput-boolean v3, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mSwipingInProgress:Z

    .line 17
    iget-object p0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/KeyguardMoveHelper$2;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {v3}, Lcom/android/keyguard/KeyguardMoveHelper$2;->updateCanShowGxzw(Z)V

    .line 24
    return-void
    .line 27
.end method

.method public final onVisibilityChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveRightController$1;->this$0:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 2
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mCameraViewShowing:Z

    .line 4
    if-eqz p1, :cond_0

    .line 6
    const/16 p1, 0x8

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/KeyguardMoveHelper$2;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {p1}, Lcom/android/keyguard/KeyguardMoveHelper$2;->updateRightMoveIconLayoutVisibility(I)V

    .line 17
    iget-boolean p1, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mIsOnIconTouchDown:Z

    .line 20
    if-eqz p1, :cond_1

    .line 22
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mCameraViewShowing:Z

    .line 24
    xor-int/lit8 p0, p0, 0x1

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-static {p0}, Lcom/android/keyguard/KeyguardMoveHelper$2;->updateCanShowGxzw(Z)V

    .line 31
    :cond_1
    return-void
    .line 34
.end method

.method public final updatePreViewBackground()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveRightController$1;->this$0:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI_LITE_VERSION:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardMoveRightController$4;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMoveRightController$4;-><init>(Lcom/android/keyguard/KeyguardMoveRightController;)V

    .line 14
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 17
    const/4 v1, 0x0

    .line 19
    new-array v1, v1, [Ljava/lang/Void;

    .line 20
    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 22
    :goto_0
    return-void
    .line 25
.end method
