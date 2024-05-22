.class public final Lcom/android/systemui/media/controls/pipeline/MediaDataCombineLatest;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;


# instance fields
.field public final entries:Ljava/util/Map;

.field public final listeners:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 5
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataCombineLatest;->listeners:Ljava/util/Set;

    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataCombineLatest;->entries:Ljava/util/Map;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;ZIZ)V
    .locals 0

    .line 1
    iget-object p4, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataCombineLatest;->entries:Ljava/util/Map;

    .line 2
    const/4 p5, 0x0

    .line 4
    if-eqz p2, :cond_1

    .line 5
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    move-result p6

    .line 10
    if-nez p6, :cond_1

    .line 11
    invoke-interface {p4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    move-result p6

    .line 16
    if-eqz p6, :cond_1

    .line 17
    invoke-interface {p4, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p6

    .line 22
    check-cast p6, Lkotlin/Pair;

    .line 23
    if-eqz p6, :cond_0

    .line 25
    invoke-virtual {p6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 27
    move-result-object p5

    .line 30
    check-cast p5, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    .line 31
    :cond_0
    new-instance p6, Lkotlin/Pair;

    .line 33
    invoke-direct {p6, p3, p5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    invoke-interface {p4, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/controls/pipeline/MediaDataCombineLatest;->update(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    goto :goto_0

    .line 44
    :cond_1
    move-object p2, p4

    .line 45
    check-cast p2, Ljava/util/LinkedHashMap;

    .line 46
    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object p2

    .line 51
    check-cast p2, Lkotlin/Pair;

    .line 52
    if-eqz p2, :cond_2

    .line 54
    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 56
    move-result-object p2

    .line 59
    move-object p5, p2

    .line 60
    check-cast p5, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    .line 61
    :cond_2
    new-instance p2, Lkotlin/Pair;

    .line 63
    invoke-direct {p2, p3, p5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/media/controls/pipeline/MediaDataCombineLatest;->update(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void
    .line 74
.end method

.method public final onMediaDataRemoved(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/pipeline/MediaDataCombineLatest;->remove(Ljava/lang/String;)V

    .line 2
    return-void
    .line 5
.end method

.method public final onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataCombineLatest;->listeners:Ljava/util/Set;

    .line 2
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 4
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result p3

    .line 15
    if-eqz p3, :cond_0

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object p3

    .line 21
    check-cast p3, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;

    .line 22
    const/4 v0, 0x0

    .line 24
    invoke-interface {p3, p1, p2, v0}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;->onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;Z)V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    return-void
    .line 29
.end method

.method public final onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataCombineLatest;->listeners:Ljava/util/Set;

    .line 2
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 4
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;

    .line 22
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;->onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V

    .line 24
    goto :goto_0

    .line 27
    :cond_0
    return-void
    .line 28
.end method

.method public final remove(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataCombineLatest;->entries:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lkotlin/Pair;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataCombineLatest;->listeners:Ljava/util/Set;

    .line 12
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 14
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;

    .line 32
    invoke-interface {v0, p1}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;->onMediaDataRemoved(Ljava/lang/String;)V

    .line 34
    goto :goto_0

    .line 37
    :cond_0
    return-void
    .line 38
.end method

.method public final update(Ljava/lang/String;Ljava/lang/String;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataCombineLatest;->entries:Ljava/util/Map;

    .line 4
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 6
    move-object/from16 v10, p1

    .line 8
    invoke-virtual {v1, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 13
    check-cast v1, Lkotlin/Pair;

    .line 14
    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lkotlin/Pair;

    .line 18
    const/4 v2, 0x0

    .line 20
    invoke-direct {v1, v2, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    :cond_0
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 27
    move-object v11, v2

    .line 28
    check-cast v11, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 29
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 34
    move-object/from16 v18, v1

    .line 35
    check-cast v18, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    .line 37
    if-eqz v11, :cond_1

    .line 39
    if-eqz v18, :cond_1

    .line 41
    const/4 v12, 0x0

    .line 43
    const/4 v13, 0x0

    .line 44
    const/4 v14, 0x0

    .line 45
    const/4 v15, 0x0

    .line 46
    const/16 v16, 0x0

    .line 47
    const/16 v17, 0x0

    .line 49
    const/16 v19, 0x0

    .line 51
    const/16 v20, 0x0

    .line 53
    const/16 v21, 0x0

    .line 55
    const/16 v22, 0x0

    .line 57
    const/16 v23, 0x0

    .line 59
    const/16 v24, 0x0

    .line 61
    const/16 v25, 0x0

    .line 63
    const/16 v26, 0x0

    .line 65
    const v27, 0xfffbfff

    .line 67
    invoke-static/range {v11 .. v27}, Lcom/android/systemui/media/controls/models/player/MediaData;->copy$default(Lcom/android/systemui/media/controls/models/player/MediaData;ILjava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/models/player/MediaButton;Ljava/lang/String;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/models/player/MediaDeviceData;ZLcom/android/systemui/media/controls/resume/MediaResumeListener$getResumeAction$1;ZZLjava/lang/Boolean;ZLcom/android/internal/logging/InstanceId;II)Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 70
    move-result-object v1

    .line 73
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataCombineLatest;->listeners:Ljava/util/Set;

    .line 74
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 76
    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 80
    move-result-object v0

    .line 83
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    move-result v2

    .line 87
    if-eqz v2, :cond_1

    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    move-result-object v2

    .line 93
    check-cast v2, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;

    .line 94
    const/4 v6, 0x0

    .line 96
    const/4 v7, 0x0

    .line 97
    const/4 v8, 0x0

    .line 98
    const/16 v9, 0x38

    .line 99
    move-object/from16 v3, p1

    .line 101
    move-object/from16 v4, p2

    .line 103
    move-object v5, v1

    .line 105
    invoke-static/range {v2 .. v9}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener$DefaultImpls;->onMediaDataLoaded$default(Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;ZIZI)V

    .line 106
    goto :goto_0

    .line 109
    :cond_1
    return-void
    .line 110
.end method
