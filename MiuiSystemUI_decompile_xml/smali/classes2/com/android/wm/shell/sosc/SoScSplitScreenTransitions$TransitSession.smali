.class Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field mCanceled:Z

.field mConsumedCallback:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionConsumedCallback;

.field final mExtraTransitType:I

.field mFinishedCallback:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;

.field mRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

.field final mTransition:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;Landroid/os/IBinder;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;Landroid/os/IBinder;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;Landroid/window/RemoteTransition;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;Landroid/os/IBinder;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;Landroid/window/RemoteTransition;I)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->this$0:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->mTransition:Landroid/os/IBinder;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->mConsumedCallback:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionConsumedCallback;

    .line 5
    iput-object p4, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;

    if-eqz p5, :cond_0

    .line 6
    new-instance p3, Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->-$$Nest$fgetmTransitions(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;)Lcom/android/wm/shell/transition/Transitions;

    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 8
    invoke-direct {p3, p1, p5}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Landroid/window/RemoteTransition;)V

    iput-object p3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->mRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    .line 9
    iput-object p2, p3, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mTransition:Landroid/os/IBinder;

    .line 10
    :cond_0
    iput p6, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->mExtraTransitType:I

    return-void
.end method


# virtual methods
.method public cancel(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->mCanceled:Z

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->setFinishedCallback(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;)V

    .line 5
    return-void
    .line 8
.end method

.method public onConsumed(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->mConsumedCallback:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionConsumedCallback;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionConsumedCallback;->onConsumed(Z)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;->onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setConsumedCallback(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionConsumedCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->mConsumedCallback:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionConsumedCallback;

    .line 2
    return-void
    .line 4
.end method

.method public setFinishedCallback(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;

    .line 2
    return-void
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "TransitSession "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->mTransition:Landroid/os/IBinder;

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method
