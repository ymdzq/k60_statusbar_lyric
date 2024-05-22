.class public final Lcom/android/wm/shell/transition/SoScMixedHandler$MixedTransition;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAnimType:I

.field public mFinishWCT:Landroid/window/WindowContainerTransaction;

.field public mInFlightSubAnimations:I

.field public mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

.field public final mTransition:Landroid/os/IBinder;

.field public final mType:I


# direct methods
.method public constructor <init>(Landroid/os/IBinder;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$MixedTransition;->mAnimType:I

    .line 6
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 9
    iput-object v1, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$MixedTransition;->mFinishWCT:Landroid/window/WindowContainerTransaction;

    .line 11
    iput v0, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 13
    iput p2, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$MixedTransition;->mType:I

    .line 15
    iput-object p1, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final joinFinishArgs(Landroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$MixedTransition;->mFinishWCT:Landroid/window/WindowContainerTransaction;

    .line 4
    if-nez v0, :cond_0

    .line 6
    iput-object p1, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$MixedTransition;->mFinishWCT:Landroid/window/WindowContainerTransaction;

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x1

    .line 11
    invoke-virtual {v0, p1, p0}, Landroid/window/WindowContainerTransaction;->merge(Landroid/window/WindowContainerTransaction;Z)V

    .line 12
    :cond_1
    :goto_0
    return-void
    .line 15
.end method
