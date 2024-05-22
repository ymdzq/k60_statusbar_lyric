.class final synthetic Lcom/android/systemui/media/controls/ui/MediaCarouselController$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const/4 v1, 0x0

    .line 2
    const-class v3, Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 3
    const-string v4, "onSwipeToDismiss"

    .line 5
    const-string v5, "onSwipeToDismiss()V"

    .line 7
    const/4 v6, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v2, p1

    .line 11
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    .line 1
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 2
    check-cast p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v0, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/MediaPlayerData;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Lcom/android/systemui/media/controls/ui/MediaPlayerData;->players()Ljava/util/Collection;

    .line 14
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v11

    .line 21
    const/4 v12, 0x0

    .line 22
    move v7, v12

    .line 23
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    add-int/lit8 v13, v7, 0x1

    .line 34
    if-ltz v7, :cond_1

    .line 36
    move-object v14, v0

    .line 38
    check-cast v14, Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 39
    iget-boolean v0, v14, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mIsImpressed:Z

    .line 41
    if-eqz v0, :cond_0

    .line 43
    const/16 v1, 0x2f9

    .line 45
    iget v2, v14, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mSmartspaceId:I

    .line 47
    iget v3, v14, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mUid:I

    .line 49
    invoke-virtual {v14}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->getSurfaceForSmartspaceLogging()I

    .line 51
    move-result v0

    .line 54
    filled-new-array {v0}, [I

    .line 55
    move-result-object v4

    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v8, 0x0

    .line 61
    const/4 v9, 0x1

    .line 62
    const/16 v10, 0xb0

    .line 63
    move-object v0, p0

    .line 65
    invoke-static/range {v0 .. v10}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/controls/ui/MediaCarouselController;III[IIIIIZI)V

    .line 66
    iput-boolean v12, v14, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mIsImpressed:Z

    .line 69
    :cond_0
    move v7, v13

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 73
    const/4 p0, 0x0

    .line 76
    throw p0

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    sget-object v1, Lcom/android/systemui/media/controls/util/MediaUiEvent;->DISMISS_SWIPE:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 83
    iget-object v0, v0, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 85
    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 87
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 90
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->onSwipeToDismiss()V

    .line 94
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 97
    return-object p0
    .line 99
.end method
