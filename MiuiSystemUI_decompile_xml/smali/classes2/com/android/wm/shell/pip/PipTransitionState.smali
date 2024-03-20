.class public final Lcom/android/wm/shell/pip/PipTransitionState;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mInSwipePipToHomeTransition:Z

.field public final mOnPipTransitionStateChangedListeners:Ljava/util/List;

.field public mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mOnPipTransitionStateChangedListeners:Ljava/util/List;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final isInPip()Z
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-lt p0, v0, :cond_0

    .line 5
    const/4 v1, 0x5

    .line 7
    if-eq p0, v1, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
    .line 12
.end method

.method public final setTransitionState(I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 2
    if-eq v0, p1, :cond_4

    .line 4
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mOnPipTransitionStateChangedListeners:Ljava/util/List;

    .line 8
    check-cast v2, Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v3

    .line 15
    if-ge v1, v3, :cond_3

    .line 16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;

    .line 22
    iget v3, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 24
    iget-object v2, v2, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 26
    iget-object v2, v2, Lcom/android/wm/shell/pip/phone/PipController;->mOnIsInPipStateChangedListener:Ljava/util/function/Consumer;

    .line 28
    if-eqz v2, :cond_2

    .line 30
    const/4 v4, 0x5

    .line 32
    const/4 v5, 0x1

    .line 33
    if-lt v3, v5, :cond_0

    .line 34
    if-eq v3, v4, :cond_0

    .line 36
    move v3, v5

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    move v3, v0

    .line 40
    :goto_1
    if-lt p1, v5, :cond_1

    .line 41
    if-eq p1, v4, :cond_1

    .line 43
    goto :goto_2

    .line 45
    :cond_1
    move v5, v0

    .line 46
    :goto_2
    if-eq v5, v3, :cond_2

    .line 47
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    move-result-object v3

    .line 52
    invoke-interface {v2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 53
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 56
    goto :goto_0

    .line 58
    :cond_3
    iput p1, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 59
    :cond_4
    return-void
    .line 61
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    iget v2, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 5
    const/4 v3, 0x1

    .line 7
    if-eqz v2, :cond_5

    .line 8
    if-eq v2, v3, :cond_4

    .line 10
    if-eq v2, v0, :cond_3

    .line 12
    const/4 v0, 0x3

    .line 14
    if-eq v2, v0, :cond_2

    .line 15
    const/4 v0, 0x4

    .line 17
    if-eq v2, v0, :cond_1

    .line 18
    const/4 v0, 0x5

    .line 20
    if-ne v2, v0, :cond_0

    .line 21
    const-string v0, "exiting-pip"

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    const-string v2, "Unknown state: "

    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    iget p0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 43
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    throw v0

    .line 47
    :cond_1
    const-string v0, "entered-pip"

    .line 48
    goto :goto_0

    .line 50
    :cond_2
    const-string v0, "entering-pip"

    .line 51
    goto :goto_0

    .line 53
    :cond_3
    const-string v0, "entry-scheduled"

    .line 54
    goto :goto_0

    .line 56
    :cond_4
    const-string/jumbo v0, "task-appeared"

    .line 57
    goto :goto_0

    .line 60
    :cond_5
    const-string/jumbo v0, "undefined"

    .line 61
    :goto_0
    const/4 v2, 0x0

    .line 64
    aput-object v0, v1, v2

    .line 65
    iget-boolean p0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    .line 67
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    move-result-object p0

    .line 72
    aput-object p0, v1, v3

    .line 73
    const-string p0, "PipTransitionState(mState=%s, mInSwipePipToHomeTransition=%b)"

    .line 75
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 80
    return-object p0
    .line 81
.end method
