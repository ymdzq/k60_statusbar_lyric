.class public final Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final _appWidgetId:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _priorityTiles:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _recentTiles:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _result:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final appWidgetId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final context:Landroid/content/Context;

.field public final priorityTiles:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final recentTiles:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final result:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final tileRepository:Lcom/android/systemui/people/data/repository/PeopleTileRepositoryImpl;

.field public final widgetRepository:Lcom/android/systemui/people/data/repository/PeopleWidgetRepositoryImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/people/data/repository/PeopleTileRepositoryImpl;Lcom/android/systemui/people/data/repository/PeopleWidgetRepositoryImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->tileRepository:Lcom/android/systemui/people/data/repository/PeopleTileRepositoryImpl;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->widgetRepository:Lcom/android/systemui/people/data/repository/PeopleWidgetRepositoryImpl;

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->priorityTiles()Ljava/util/List;

    .line 11
    move-result-object p1

    .line 14
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 15
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->_priorityTiles:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 19
    new-instance p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 21
    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 23
    iput-object p2, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->priorityTiles:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->recentTiles()Ljava/util/List;

    .line 28
    move-result-object p1

    .line 31
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 32
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->_recentTiles:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 36
    new-instance p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 38
    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 40
    iput-object p2, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->recentTiles:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 43
    const/4 p1, 0x0

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object p1

    .line 49
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 50
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->_appWidgetId:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 54
    new-instance p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 56
    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 58
    iput-object p2, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->appWidgetId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 61
    const/4 p1, 0x0

    .line 63
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 64
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->_result:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 68
    new-instance p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 70
    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 72
    iput-object p2, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->result:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 75
    return-void
    .line 77
.end method


# virtual methods
.method public final priorityTiles()Ljava/util/List;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->tileRepository:Lcom/android/systemui/people/data/repository/PeopleTileRepositoryImpl;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/people/data/repository/PeopleTileRepositoryImpl;->priorityTiles()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 10
    move-result v2

    .line 13
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 32
    check-cast v2, Lcom/android/systemui/people/data/model/PeopleTileModel;

    .line 33
    invoke-virtual {p0, v2}, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->toViewModel(Lcom/android/systemui/people/data/model/PeopleTileModel;)Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;

    .line 35
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    const-string v0, "PeopleViewModel"

    .line 44
    const-string v1, "Couldn\'t retrieve priority conversations"

    .line 46
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 51
    :cond_0
    return-object v1
    .line 53
.end method

.method public final recentTiles()Ljava/util/List;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->tileRepository:Lcom/android/systemui/people/data/repository/PeopleTileRepositoryImpl;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/people/data/repository/PeopleTileRepositoryImpl;->recentTiles()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 10
    move-result v2

    .line 13
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 32
    check-cast v2, Lcom/android/systemui/people/data/model/PeopleTileModel;

    .line 33
    invoke-virtual {p0, v2}, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->toViewModel(Lcom/android/systemui/people/data/model/PeopleTileModel;)Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;

    .line 35
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    const-string v0, "PeopleViewModel"

    .line 44
    const-string v1, "Couldn\'t retrieve recent conversations"

    .line 46
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 51
    :cond_0
    return-object v1
    .line 53
.end method

.method public final toViewModel(Lcom/android/systemui/people/data/model/PeopleTileModel;)Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    move-result-object p0

    .line 11
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 12
    sget-object v1, Lcom/android/systemui/people/PeopleTileViewHelper;->DOUBLE_EXCLAMATION_PATTERN:Ljava/util/regex/Pattern;

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v1

    .line 19
    const v2, 0x7f0700aa    # @dimen/avatar_size_for_medium '52.0dp'

    .line 20
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 23
    move-result v1

    .line 26
    div-float/2addr v1, p0

    .line 27
    float-to-int v1, v1

    .line 28
    iget-boolean v2, p1, Lcom/android/systemui/people/data/model/PeopleTileModel;->hasNewStory:Z

    .line 29
    iget-object v3, p1, Lcom/android/systemui/people/data/model/PeopleTileModel;->userIcon:Landroid/graphics/drawable/Icon;

    .line 31
    iget-object p0, p1, Lcom/android/systemui/people/data/model/PeopleTileModel;->key:Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 33
    iget-object v4, p0, Lcom/android/systemui/people/widget/PeopleTileKey;->mPackageName:Ljava/lang/String;

    .line 35
    iget v5, p0, Lcom/android/systemui/people/widget/PeopleTileKey;->mUserId:I

    .line 37
    iget-boolean v6, p1, Lcom/android/systemui/people/data/model/PeopleTileModel;->isImportant:Z

    .line 39
    iget-boolean v7, p1, Lcom/android/systemui/people/data/model/PeopleTileModel;->isDndBlocking:Z

    .line 41
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/people/PeopleTileViewHelper;->getPersonIconBitmap(Landroid/content/Context;IZLandroid/graphics/drawable/Icon;Ljava/lang/String;IZZ)Landroid/graphics/Bitmap;

    .line 43
    move-result-object v0

    .line 46
    new-instance v1, Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;

    .line 47
    iget-object p1, p1, Lcom/android/systemui/people/data/model/PeopleTileModel;->username:Ljava/lang/String;

    .line 49
    invoke-direct {v1, p0, v0, p1}, Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;-><init>(Lcom/android/systemui/people/widget/PeopleTileKey;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 51
    return-object v1
    .line 54
.end method
