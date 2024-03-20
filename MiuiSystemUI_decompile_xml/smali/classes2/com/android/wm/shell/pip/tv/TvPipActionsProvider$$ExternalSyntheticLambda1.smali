.class public final synthetic Lcom/android/wm/shell/pip/tv/TvPipActionsProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/wm/shell/pip/tv/TvPipAction;

    .line 2
    iget p0, p1, Lcom/android/wm/shell/pip/tv/TvPipAction;->mActionType:I

    .line 4
    const/4 p1, 0x4

    .line 6
    if-ne p0, p1, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
    .line 12
.end method
