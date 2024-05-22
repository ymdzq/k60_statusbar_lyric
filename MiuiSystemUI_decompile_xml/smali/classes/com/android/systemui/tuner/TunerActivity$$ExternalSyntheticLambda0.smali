.class public final synthetic Lcom/android/systemui/tuner/TunerActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/fragments/FragmentService;

    .line 2
    sget p0, Lcom/android/systemui/tuner/TunerActivity;->$r8$clinit:I

    .line 4
    iget-object p0, p1, Lcom/android/systemui/fragments/FragmentService;->mHosts:Landroid/util/ArrayMap;

    .line 6
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 8
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 25
    check-cast p1, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    .line 26
    iget-object p1, p1, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    .line 28
    iget-object p1, p1, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Landroid/app/FragmentController;

    .line 30
    invoke-virtual {p1}, Landroid/app/FragmentController;->dispatchDestroy()V

    .line 32
    goto :goto_0

    .line 35
    :cond_0
    return-void
    .line 36
.end method
