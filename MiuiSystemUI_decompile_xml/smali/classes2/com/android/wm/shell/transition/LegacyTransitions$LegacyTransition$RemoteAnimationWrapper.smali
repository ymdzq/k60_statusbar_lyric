.class public final Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition$RemoteAnimationWrapper;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition$RemoteAnimationWrapper;->this$0:Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;

    .line 2
    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationCancelled()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition$RemoteAnimationWrapper;->this$0:Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;

    .line 2
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mCancelled:Z

    .line 5
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mNonApps:[Landroid/view/RemoteAnimationTarget;

    .line 8
    iput-object v0, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mWallpapers:[Landroid/view/RemoteAnimationTarget;

    .line 10
    iput-object v0, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mApps:[Landroid/view/RemoteAnimationTarget;

    .line 12
    invoke-static {p0}, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->-$$Nest$mcheckApply(Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;)V

    .line 14
    return-void
    .line 17
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition$RemoteAnimationWrapper;->this$0:Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;

    .line 2
    iput p1, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mTransit:I

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mApps:[Landroid/view/RemoteAnimationTarget;

    .line 6
    iput-object p3, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mWallpapers:[Landroid/view/RemoteAnimationTarget;

    .line 8
    iput-object p4, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mNonApps:[Landroid/view/RemoteAnimationTarget;

    .line 10
    iput-object p5, p0, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->mFinishCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 12
    invoke-static {p0}, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->-$$Nest$mcheckApply(Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;)V

    .line 14
    return-void
    .line 17
.end method
