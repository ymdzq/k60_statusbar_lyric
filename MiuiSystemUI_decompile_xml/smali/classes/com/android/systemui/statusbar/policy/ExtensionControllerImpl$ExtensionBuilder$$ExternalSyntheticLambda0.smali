.class public final synthetic Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
