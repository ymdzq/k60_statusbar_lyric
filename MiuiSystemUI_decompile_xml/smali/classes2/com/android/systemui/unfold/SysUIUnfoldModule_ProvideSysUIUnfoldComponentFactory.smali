.class public abstract Lcom/android/systemui/unfold/SysUIUnfoldModule_ProvideSysUIUnfoldComponentFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideSysUIUnfoldComponent(Lcom/android/systemui/unfold/SysUIUnfoldModule;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/unfold/SysUIUnfoldComponent$Factory;)Ljava/util/Optional;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const/4 p0, 0x0

    .line 5
    invoke-virtual {p1, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 9
    check-cast p1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    .line 10
    invoke-virtual {p2, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p2

    .line 15
    check-cast p2, Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;

    .line 16
    invoke-virtual {p3, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    .line 22
    if-eqz p1, :cond_1

    .line 24
    if-eqz p2, :cond_1

    .line 26
    if-nez p0, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {p4, p1, p2, p0}, Lcom/android/systemui/unfold/SysUIUnfoldComponent$Factory;->create(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;)Lcom/android/systemui/unfold/SysUIUnfoldComponent;

    .line 31
    move-result-object p0

    .line 34
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 35
    move-result-object p0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 40
    move-result-object p0

    .line 43
    :goto_1
    return-object p0
    .line 44
.end method
