.class public final synthetic Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Item;

    .line 2
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Item;->sortOrder()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method
