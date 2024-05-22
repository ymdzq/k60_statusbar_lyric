.class public final synthetic Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 8
    iput-object p4, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 10
    iput-object p5, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
    .line 17
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 12
    check-cast v1, Landroid/os/IBinder;

    .line 14
    iget-object v2, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 16
    check-cast v2, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 18
    iget-object v3, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 20
    check-cast v3, Landroid/window/WindowContainerTransaction;

    .line 22
    iget-object p0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    .line 24
    check-cast p0, Landroid/window/WindowContainerTransactionCallback;

    .line 26
    iget-object v0, v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    .line 28
    iget-object v0, v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mStartedTransitions:Landroid/util/ArrayMap;

    .line 30
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-interface {v2, v3, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 35
    return-void

    .line 38
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 39
    check-cast v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;

    .line 41
    iget-object v1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 43
    check-cast v1, Landroid/window/IRemoteTransition;

    .line 45
    iget-object v2, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 47
    check-cast v2, Landroid/window/IRemoteTransition;

    .line 49
    iget-object v3, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 51
    check-cast v3, Landroid/window/IRemoteTransition;

    .line 53
    iget-object p0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    .line 55
    check-cast p0, Landroid/window/IRemoteTransition;

    .line 57
    iget-object v0, v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;->this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    .line 59
    iput-object v1, v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mExitTransition:Landroid/window/IRemoteTransition;

    .line 61
    iput-object v2, v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mOccludeTransition:Landroid/window/IRemoteTransition;

    .line 63
    iput-object v3, v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mOccludeByDreamTransition:Landroid/window/IRemoteTransition;

    .line 65
    iput-object p0, v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mUnoccludeTransition:Landroid/window/IRemoteTransition;

    .line 67
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 70
.end method
