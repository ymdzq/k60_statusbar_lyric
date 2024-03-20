.class public final synthetic Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;FFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    .line 5
    iput p2, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda0;->f$1:F

    .line 7
    iput p3, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda0;->f$2:F

    .line 9
    iput p4, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda0;->f$3:F

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    .line 2
    iget v1, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda0;->f$1:F

    .line 4
    iget v2, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda0;->f$2:F

    .line 6
    iget p0, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda0;->f$3:F

    .line 8
    iget-object v0, v0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    sget v3, Lcom/android/wm/shell/back/TouchTracker;->LINEAR_DISTANCE:I

    .line 15
    iget-object v0, v0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchTracker:Lcom/android/wm/shell/back/TouchTracker;

    .line 17
    if-ltz v3, :cond_0

    .line 19
    int-to-float v1, v3

    .line 21
    iput v1, v0, Lcom/android/wm/shell/back/TouchTracker;->mLinearDistance:F

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    iput v1, v0, Lcom/android/wm/shell/back/TouchTracker;->mLinearDistance:F

    .line 25
    :goto_0
    iput v2, v0, Lcom/android/wm/shell/back/TouchTracker;->mMaxDistance:F

    .line 27
    iput p0, v0, Lcom/android/wm/shell/back/TouchTracker;->mNonLinearFactor:F

    .line 29
    return-void
    .line 31
.end method
