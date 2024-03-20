.class public final synthetic Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    .line 5
    iput-boolean p2, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    .line 2
    iget-boolean p0, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$1:Z

    .line 4
    iget-object v0, v0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 6
    iget-boolean v1, v0, Lcom/android/wm/shell/back/BackAnimationController;->mPostCommitAnimationInProgress:Z

    .line 8
    if-eqz v1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iput-boolean p0, v0, Lcom/android/wm/shell/back/BackAnimationController;->mTriggerBack:Z

    .line 13
    iget-object v0, v0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchTracker:Lcom/android/wm/shell/back/TouchTracker;

    .line 15
    iget-boolean v1, v0, Lcom/android/wm/shell/back/TouchTracker;->mTriggerBack:Z

    .line 17
    if-eq v1, p0, :cond_1

    .line 19
    if-nez p0, :cond_1

    .line 21
    const/4 v1, 0x1

    .line 23
    iput-boolean v1, v0, Lcom/android/wm/shell/back/TouchTracker;->mCancelled:Z

    .line 24
    :cond_1
    iput-boolean p0, v0, Lcom/android/wm/shell/back/TouchTracker;->mTriggerBack:Z

    .line 26
    :goto_0
    return-void
    .line 28
.end method
