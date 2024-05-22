.class public abstract Lcom/android/systemui/unfold/UnfoldTransitionModule_ProvidesFoldStateLoggingProviderFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static providesFoldStateLoggingProvider(Lcom/android/systemui/unfold/UnfoldTransitionModule;Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;Ldagger/Lazy;)Ljava/util/Optional;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object p0, p1, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;->isHingeAngleEnabled$delegate:Lkotlin/Lazy;

    .line 5
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Ljava/lang/Boolean;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    new-instance p0, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;

    .line 19
    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 24
    check-cast p1, Lcom/android/systemui/unfold/updates/FoldStateProvider;

    .line 25
    new-instance p2, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 27
    invoke-direct {p2}, Lcom/android/systemui/util/time/SystemClockImpl;-><init>()V

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/unfold/FoldStateLoggingProviderImpl;-><init>(Lcom/android/systemui/unfold/updates/FoldStateProvider;Lcom/android/systemui/util/time/SystemClockImpl;)V

    .line 32
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 35
    move-result-object p0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 40
    move-result-object p0

    .line 43
    :goto_0
    return-object p0
    .line 44
.end method
