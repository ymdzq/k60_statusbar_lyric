.class public final synthetic Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/PipTransition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PipTransition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/pip/PipTransition;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/pip/PipTransition;

    .line 2
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mHasFadeOut:Z

    .line 4
    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 8
    iget v0, v0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 10
    const/4 v1, 0x4

    .line 12
    const/4 v2, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    move v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/pip/PipTransition;->fadeExistingPip(Z)V

    .line 21
    :cond_1
    return-void
    .line 24
.end method
