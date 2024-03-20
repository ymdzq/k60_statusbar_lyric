.class public abstract Lcom/android/systemui/people/ui/view/PeopleViewBinder;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final ViewOutlineProvider:Lcom/android/systemui/people/ui/view/PeopleViewBinder$ViewOutlineProvider$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/people/ui/view/PeopleViewBinder$ViewOutlineProvider$1;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/people/ui/view/PeopleViewBinder$ViewOutlineProvider$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/people/ui/view/PeopleViewBinder;->ViewOutlineProvider:Lcom/android/systemui/people/ui/view/PeopleViewBinder$ViewOutlineProvider$1;

    .line 7
    return-void
    .line 9
.end method

.method public static final bind(Landroid/view/ViewGroup;Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/people/PeopleSpaceActivity$$ExternalSyntheticLambda0;)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$1;

    .line 6
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p2, p1, p3, v2}, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 9
    const/4 p3, 0x3

    .line 12
    invoke-static {v0, v2, v2, v1, p3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 13
    invoke-static {p2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 16
    move-result-object v0

    .line 19
    new-instance v1, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$2;

    .line 20
    invoke-direct {v1, p2, p1, p0, v2}, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$2;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;Landroid/view/ViewGroup;Lkotlin/coroutines/Continuation;)V

    .line 22
    invoke-static {v0, v2, v2, v1, p3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 25
    invoke-static {p2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 28
    move-result-object p0

    .line 31
    new-instance v0, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$3;

    .line 32
    invoke-direct {v0, p2, p1, v2}, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$3;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;Lkotlin/coroutines/Continuation;)V

    .line 34
    invoke-static {p0, v2, v2, v0, p3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 37
    return-void
    .line 40
.end method

.method public static setTileViews(Landroid/view/View;IILjava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 9

    .line 1
    invoke-virtual {p0, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 2
    move-result-object p2

    .line 5
    check-cast p2, Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    sget-object v0, Lcom/android/systemui/people/ui/view/PeopleViewBinder;->ViewOutlineProvider:Lcom/android/systemui/people/ui/view/PeopleViewBinder$ViewOutlineProvider$1;

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 19
    check-cast p1, Landroid/widget/LinearLayout;

    .line 20
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    const/16 p0, 0x8

    .line 28
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 30
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 35
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object p1

    .line 41
    move v1, v0

    .line 42
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v2

    .line 46
    if-eqz v2, :cond_3

    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 52
    add-int/lit8 v3, v1, 0x1

    .line 53
    if-ltz v1, :cond_2

    .line 55
    check-cast v2, Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;

    .line 57
    new-instance v4, Lcom/android/systemui/people/PeopleSpaceTileView;

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    move-result-object v5

    .line 64
    iget-object v6, v2, Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;->key:Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 65
    iget-object v6, v6, Lcom/android/systemui/people/widget/PeopleTileKey;->mShortcutId:Ljava/lang/String;

    .line 67
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 69
    move-result v7

    .line 72
    const/4 v8, 0x1

    .line 73
    sub-int/2addr v7, v8

    .line 74
    if-ne v1, v7, :cond_1

    .line 75
    goto :goto_1

    .line 77
    :cond_1
    move v8, v0

    .line 78
    :goto_1
    invoke-direct {v4, v5, p2, v6, v8}, Lcom/android/systemui/people/PeopleSpaceTileView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Z)V

    .line 79
    :try_start_0
    iget-object v1, v2, Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;->username:Ljava/lang/String;

    .line 82
    invoke-virtual {v4, v1}, Lcom/android/systemui/people/PeopleSpaceTileView;->setName(Ljava/lang/String;)V

    .line 84
    iget-object v1, v2, Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;->icon:Landroid/graphics/Bitmap;

    .line 87
    invoke-virtual {v4, v1}, Lcom/android/systemui/people/PeopleSpaceTileView;->setPersonIcon(Landroid/graphics/Bitmap;)V

    .line 89
    new-instance v1, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bindTileView$1;

    .line 92
    invoke-direct {v1, p4, v2}, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bindTileView$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;)V

    .line 94
    invoke-virtual {v4, v1}, Lcom/android/systemui/people/PeopleSpaceTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_2

    .line 100
    :catch_0
    move-exception v1

    .line 101
    const-string v2, "PeopleViewBinder"

    .line 102
    const-string v4, "Couldn\'t retrieve shortcut information"

    .line 104
    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    :goto_2
    move v1, v3

    .line 109
    goto :goto_0

    .line 110
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 111
    const/4 p0, 0x0

    .line 114
    throw p0

    .line 115
    :cond_3
    return-void
    .line 116
.end method
