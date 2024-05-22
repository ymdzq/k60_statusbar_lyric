.class public final Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;


# instance fields
.field public final _listeners:Ljava/util/Set;

.field public final allEntries:Ljava/util/LinkedHashMap;

.field public final broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final context:Landroid/content/Context;

.field public final lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

.field public mediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

.field public final mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

.field public final pipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field public reactivatedKey:Ljava/lang/String;

.field public smartspaceMediaData:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final userEntries:Ljava/util/LinkedHashMap;

.field public final userTrackerCallback:Lcom/android/systemui/media/controls/pipeline/MediaDataFilter$userTrackerCallback$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/media/controls/util/MediaUiEventLogger;Lcom/android/systemui/media/controls/util/MediaFlags;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->context:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 9
    iput-object p6, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 11
    iput-object p7, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    .line 13
    iput-object p8, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    .line 15
    iput-object p9, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->pipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 17
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 19
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->_listeners:Ljava/util/Set;

    .line 24
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 26
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->allEntries:Ljava/util/LinkedHashMap;

    .line 31
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 33
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    .line 38
    sget-object p1, Lcom/android/systemui/media/controls/pipeline/MediaDataManagerKt;->EMPTY_SMARTSPACE_MEDIA_DATA:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 40
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->smartspaceMediaData:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 42
    new-instance p1, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter$userTrackerCallback$1;

    .line 44
    invoke-direct {p1, p0}, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter$userTrackerCallback$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;)V

    .line 46
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->userTrackerCallback:Lcom/android/systemui/media/controls/pipeline/MediaDataFilter$userTrackerCallback$1;

    .line 49
    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 51
    invoke-virtual {p2, p1, p5}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 53
    return-void
    .line 56
.end method


# virtual methods
.method public final getListeners$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->_listeners:Ljava/util/Set;

    .line 2
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final handleUserSwitched$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->getListeners$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Ljava/util/Set;

    .line 4
    move-result-object v1

    .line 7
    iget-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    .line 8
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 10
    move-result-object v3

    .line 13
    new-instance v4, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 19
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v3

    .line 25
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v4

    .line 29
    const-string v5, " after user change"

    .line 30
    const-string v6, "MediaDataFilter"

    .line 32
    if-eqz v4, :cond_1

    .line 34
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v4

    .line 39
    check-cast v4, Ljava/lang/String;

    .line 40
    new-instance v7, Ljava/lang/StringBuilder;

    .line 42
    const-string v8, "Removing "

    .line 44
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v5

    .line 58
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object v5

    .line 65
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result v6

    .line 69
    if-eqz v6, :cond_0

    .line 70
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object v6

    .line 75
    check-cast v6, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;

    .line 76
    invoke-interface {v6, v4}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;->onMediaDataRemoved(Ljava/lang/String;)V

    .line 78
    goto :goto_0

    .line 81
    :cond_1
    iget-object v3, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->allEntries:Ljava/util/LinkedHashMap;

    .line 82
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 84
    move-result-object v3

    .line 87
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 88
    move-result-object v3

    .line 91
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    move-result v4

    .line 95
    if-eqz v4, :cond_3

    .line 96
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    move-result-object v4

    .line 101
    check-cast v4, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 104
    move-result-object v7

    .line 107
    check-cast v7, Ljava/lang/String;

    .line 108
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 110
    move-result-object v4

    .line 113
    check-cast v4, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 114
    iget v8, v4, Lcom/android/systemui/media/controls/models/player/MediaData;->userId:I

    .line 116
    iget-object v9, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 118
    check-cast v9, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 120
    invoke-virtual {v9, v8}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isCurrentProfile(I)Z

    .line 122
    move-result v8

    .line 125
    if-eqz v8, :cond_2

    .line 126
    new-instance v8, Ljava/lang/StringBuilder;

    .line 128
    const-string v9, "Re-adding "

    .line 130
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v8

    .line 144
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v2, v7, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 151
    move-result-object v16

    .line 154
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    move-result v8

    .line 158
    if-eqz v8, :cond_2

    .line 159
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    move-result-object v8

    .line 164
    check-cast v8, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;

    .line 165
    const/4 v10, 0x0

    .line 167
    const/4 v12, 0x0

    .line 168
    const/4 v13, 0x0

    .line 169
    const/4 v14, 0x0

    .line 170
    const/16 v15, 0x38

    .line 171
    move-object v9, v7

    .line 173
    move-object v11, v4

    .line 174
    invoke-static/range {v8 .. v15}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener$DefaultImpls;->onMediaDataLoaded$default(Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;ZIZI)V

    .line 175
    goto :goto_1

    .line 178
    :cond_3
    return-void
    .line 179
.end method

.method public final hasActiveMedia()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 12
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 19
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 29
    check-cast v0, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 36
    iget-boolean v0, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->active:Z

    .line 38
    if-eqz v0, :cond_1

    .line 40
    const/4 v1, 0x1

    .line 42
    :cond_2
    :goto_0
    return v1
    .line 43
.end method

.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;ZIZ)V
    .locals 8

    .line 1
    iget-object p4, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->allEntries:Ljava/util/LinkedHashMap;

    .line 2
    if-eqz p2, :cond_0

    .line 4
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result p5

    .line 9
    if-nez p5, :cond_0

    .line 10
    invoke-virtual {p4, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_0
    invoke-virtual {p4, p1, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p4, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 18
    check-cast p4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 20
    iget p5, p3, Lcom/android/systemui/media/controls/models/player/MediaData;->userId:I

    .line 22
    invoke-virtual {p4, p5}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isCurrentProfile(I)Z

    .line 24
    move-result p4

    .line 27
    if-nez p4, :cond_1

    .line 28
    return-void

    .line 30
    :cond_1
    iget-object p4, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    .line 31
    if-eqz p2, :cond_2

    .line 33
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    move-result p5

    .line 38
    if-nez p5, :cond_2

    .line 39
    invoke-virtual {p4, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_2
    invoke-virtual {p4, p1, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->getListeners$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Ljava/util/Set;

    .line 47
    move-result-object p0

    .line 50
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object p0

    .line 54
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result p4

    .line 58
    if-eqz p4, :cond_3

    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object p4

    .line 64
    move-object v0, p4

    .line 65
    check-cast v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;

    .line 66
    const/4 v4, 0x0

    .line 68
    const/4 v5, 0x0

    .line 69
    const/4 v6, 0x0

    .line 70
    const/16 v7, 0x38

    .line 71
    move-object v1, p1

    .line 73
    move-object v2, p2

    .line 74
    move-object v3, p3

    .line 75
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener$DefaultImpls;->onMediaDataLoaded$default(Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;ZIZI)V

    .line 76
    goto :goto_0

    .line 79
    :cond_3
    return-void
    .line 80
.end method

.method public final onMediaDataRemoved(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->allEntries:Ljava/util/LinkedHashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->getListeners$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Ljava/util/Set;

    .line 17
    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p0

    .line 24
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;

    .line 35
    invoke-interface {v0, p1}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;->onMediaDataRemoved(Ljava/lang/String;)V

    .line 37
    goto :goto_0

    .line 40
    :cond_0
    return-void
    .line 41
.end method

.method public final onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;Z)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    iget-boolean v2, v1, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->isActive:Z

    .line 6
    const-string v3, "MediaDataFilter"

    .line 8
    if-nez v2, :cond_0

    .line 10
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    .line 12
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/util/MediaFlags;->isPersistentSsCardEnabled()V

    .line 14
    const-string v0, "Inactive recommendation data. Skip triggering."

    .line 17
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void

    .line 22
    :cond_0
    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->smartspaceMediaData:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 23
    iget-object v4, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    .line 25
    new-instance v5, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter$onSmartspaceMediaDataLoaded$$inlined$compareBy$1;

    .line 27
    invoke-direct {v5, v0}, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter$onSmartspaceMediaDataLoaded$$inlined$compareBy$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;)V

    .line 29
    new-instance v6, Ljava/util/TreeMap;

    .line 32
    invoke-direct {v6, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 34
    invoke-virtual {v6, v4}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 37
    invoke-interface {v6}, Ljava/util/SortedMap;->isEmpty()Z

    .line 40
    move-result v5

    .line 43
    iget-object v7, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 44
    if-eqz v5, :cond_1

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    move-object v5, v7

    .line 49
    check-cast v5, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 50
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 55
    move-result-wide v8

    .line 58
    invoke-virtual {v6}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    .line 59
    move-result-object v5

    .line 62
    check-cast v5, Ljava/lang/String;

    .line 63
    invoke-virtual {v6, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object v5

    .line 68
    check-cast v5, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 69
    if-eqz v5, :cond_2

    .line 71
    iget-wide v10, v5, Lcom/android/systemui/media/controls/models/player/MediaData;->lastActive:J

    .line 73
    sub-long/2addr v8, v10

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    :goto_0
    const-wide v8, 0x7fffffffffffffffL

    .line 77
    :goto_1
    sget-wide v10, Lcom/android/systemui/media/controls/pipeline/MediaDataFilterKt;->SMARTSPACE_MAX_AGE:J

    .line 82
    iget-object v5, v1, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->cardAction:Landroid/app/smartspace/SmartspaceAction;

    .line 84
    if-eqz v5, :cond_3

    .line 86
    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    .line 88
    move-result-object v12

    .line 91
    if-eqz v12, :cond_3

    .line 92
    const-string/jumbo v13, "resumable_media_max_age_seconds"

    .line 94
    const-wide/16 v14, 0x0

    .line 97
    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 99
    move-result-wide v12

    .line 102
    cmp-long v14, v12, v14

    .line 103
    if-lez v14, :cond_3

    .line 105
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 107
    invoke-virtual {v10, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 109
    move-result-wide v10

    .line 112
    :cond_3
    const/4 v12, 0x1

    .line 113
    const-string v13, "SHOULD_TRIGGER_RESUME"

    .line 114
    const/4 v14, 0x0

    .line 116
    if-eqz v5, :cond_4

    .line 117
    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    .line 119
    move-result-object v15

    .line 122
    if-eqz v15, :cond_4

    .line 123
    invoke-virtual {v15, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 125
    move-result v15

    .line 128
    if-ne v15, v12, :cond_4

    .line 129
    move v15, v12

    .line 131
    goto :goto_2

    .line 132
    :cond_4
    move v15, v14

    .line 133
    :goto_2
    if-eqz v15, :cond_5

    .line 134
    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    .line 136
    move-result-object v5

    .line 139
    invoke-virtual {v5, v13, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 140
    move-result v5

    .line 143
    goto :goto_3

    .line 144
    :cond_5
    move v5, v12

    .line 145
    :goto_3
    if-eqz v5, :cond_6

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->hasActiveMedia()Z

    .line 148
    move-result v5

    .line 151
    if-nez v5, :cond_6

    .line 152
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    .line 154
    move-result v4

    .line 157
    xor-int/2addr v4, v12

    .line 158
    if-eqz v4, :cond_6

    .line 159
    if-eqz v2, :cond_6

    .line 161
    move v4, v12

    .line 163
    goto :goto_4

    .line 164
    :cond_6
    move v4, v14

    .line 165
    :goto_4
    cmp-long v5, v8, v10

    .line 166
    iget-object v8, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    .line 168
    if-gez v5, :cond_7

    .line 170
    if-eqz v4, :cond_8

    .line 172
    invoke-virtual {v6}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    .line 174
    move-result-object v2

    .line 177
    check-cast v2, Ljava/lang/String;

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    .line 180
    const-string v5, "reactivating "

    .line 182
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v5, " instead of smartspace"

    .line 190
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object v4

    .line 198
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iput-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->reactivatedKey:Ljava/lang/String;

    .line 202
    invoke-virtual {v6, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    move-result-object v4

    .line 207
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 208
    move-object v15, v4

    .line 211
    check-cast v15, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 212
    const/16 v16, 0x0

    .line 214
    const/16 v17, 0x0

    .line 216
    const/16 v18, 0x0

    .line 218
    const/16 v19, 0x0

    .line 220
    const/16 v20, 0x0

    .line 222
    const/16 v21, 0x0

    .line 224
    const/16 v22, 0x0

    .line 226
    const/16 v23, 0x1

    .line 228
    const/16 v24, 0x0

    .line 230
    const/16 v25, 0x0

    .line 232
    const/16 v26, 0x0

    .line 234
    const/16 v27, 0x0

    .line 236
    const/16 v28, 0x0

    .line 238
    const/16 v29, 0x0

    .line 240
    const/16 v30, 0x0

    .line 242
    const v31, 0xfff7fff

    .line 244
    invoke-static/range {v15 .. v31}, Lcom/android/systemui/media/controls/models/player/MediaData;->copy$default(Lcom/android/systemui/media/controls/models/player/MediaData;ILjava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/models/player/MediaButton;Ljava/lang/String;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/models/player/MediaDeviceData;ZLcom/android/systemui/media/controls/resume/MediaResumeListener$getResumeAction$1;ZZLjava/lang/Boolean;ZLcom/android/internal/logging/InstanceId;II)Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 247
    move-result-object v4

    .line 250
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    sget-object v5, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_RECOMMENDATION_ACTIVATED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 254
    iget-object v6, v4, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 256
    iget-object v9, v4, Lcom/android/systemui/media/controls/models/player/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 258
    iget-object v10, v8, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 260
    iget v11, v4, Lcom/android/systemui/media/controls/models/player/MediaData;->appUid:I

    .line 262
    invoke-interface {v10, v5, v11, v6, v9}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->getListeners$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Ljava/util/Set;

    .line 267
    move-result-object v5

    .line 270
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 271
    move-result-object v5

    .line 274
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 275
    move-result v6

    .line 278
    if-eqz v6, :cond_8

    .line 279
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 281
    move-result-object v6

    .line 284
    move-object v15, v6

    .line 285
    check-cast v15, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;

    .line 286
    const/16 v19, 0x0

    .line 288
    move-object v6, v7

    .line 290
    check-cast v6, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 291
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 296
    move-result-wide v9

    .line 299
    iget-wide v11, v1, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->headphoneConnectionTimeMillis:J

    .line 300
    sub-long/2addr v9, v11

    .line 302
    long-to-int v6, v9

    .line 303
    const/16 v21, 0x1

    .line 304
    const/16 v22, 0x8

    .line 306
    move-object/from16 v16, v2

    .line 308
    move-object/from16 v17, v2

    .line 310
    move-object/from16 v18, v4

    .line 312
    move/from16 v20, v6

    .line 314
    invoke-static/range {v15 .. v22}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener$DefaultImpls;->onMediaDataLoaded$default(Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;ZIZI)V

    .line 316
    goto :goto_5

    .line 319
    :cond_7
    if-eqz v2, :cond_8

    .line 320
    goto :goto_6

    .line 322
    :cond_8
    move v12, v14

    .line 323
    :goto_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->isValid()Z

    .line 324
    move-result v2

    .line 327
    if-nez v2, :cond_9

    .line 328
    const-string v0, "Invalid recommendation data. Skip showing the rec card"

    .line 330
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void

    .line 335
    :cond_9
    iget-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->smartspaceMediaData:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 336
    iget-object v3, v2, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->packageName:Ljava/lang/String;

    .line 338
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    sget-object v4, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_RECOMMENDATION_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 343
    iget-object v5, v8, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 345
    iget-object v2, v2, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 347
    invoke-interface {v5, v4, v14, v3, v2}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->getListeners$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Ljava/util/Set;

    .line 352
    move-result-object v0

    .line 355
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 356
    move-result-object v0

    .line 359
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 360
    move-result v2

    .line 363
    if-eqz v2, :cond_a

    .line 364
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 366
    move-result-object v2

    .line 369
    check-cast v2, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;

    .line 370
    move-object/from16 v3, p1

    .line 372
    invoke-interface {v2, v3, v1, v12}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;->onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;Z)V

    .line 374
    goto :goto_7

    .line 377
    :cond_a
    return-void
    .line 378
.end method

.method public final onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 12

    .line 1
    iget-object v8, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->reactivatedKey:Ljava/lang/String;

    .line 2
    if-eqz v8, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->reactivatedKey:Ljava/lang/String;

    .line 7
    const-string v0, "expiring reactivated key "

    .line 9
    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    const-string v1, "MediaDataFilter"

    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    .line 20
    invoke-virtual {v0, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    move-object v9, v0

    .line 26
    check-cast v9, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 27
    if-eqz v9, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->getListeners$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Ljava/util/Set;

    .line 31
    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v10

    .line 38
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 48
    check-cast v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;

    .line 49
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x0

    .line 52
    const/16 v7, 0x30

    .line 53
    move-object v1, v8

    .line 55
    move-object v2, v8

    .line 56
    move-object v3, v9

    .line 57
    move v4, p2

    .line 58
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener$DefaultImpls;->onMediaDataLoaded$default(Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;ZIZI)V

    .line 59
    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->smartspaceMediaData:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 63
    iget-boolean v1, v0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->isActive:Z

    .line 65
    if-eqz v1, :cond_1

    .line 67
    sget-object v2, Lcom/android/systemui/media/controls/pipeline/MediaDataManagerKt;->EMPTY_SMARTSPACE_MEDIA_DATA:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 69
    iget-object v3, v0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->targetId:Ljava/lang/String;

    .line 71
    const/4 v4, 0x0

    .line 73
    const/4 v5, 0x0

    .line 74
    const-wide/16 v6, 0x0

    .line 75
    iget-object v8, v0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 77
    const-wide/16 v9, 0x0

    .line 79
    const/16 v11, 0x17e

    .line 81
    invoke-static/range {v2 .. v11}, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->copy$default(Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;Ljava/lang/String;ZLandroid/content/Intent;JLcom/android/internal/logging/InstanceId;JI)Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 83
    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->smartspaceMediaData:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->getListeners$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core()Ljava/util/Set;

    .line 89
    move-result-object p0

    .line 92
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 93
    move-result-object p0

    .line 96
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    move-result v0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    move-result-object v0

    .line 106
    check-cast v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;

    .line 107
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;->onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V

    .line 109
    goto :goto_1

    .line 112
    :cond_2
    return-void
    .line 113
.end method

.method public final onSwipeToDismiss()V
    .locals 14

    .line 1
    const-string v0, "MediaDataFilter"

    .line 2
    const-string v1, "Media carousel swiped away"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    .line 9
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 11
    move-result-object v1

    .line 14
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 15
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v1

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_2

    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/String;

    .line 34
    iget-object v4, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->mediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 36
    if-eqz v4, :cond_1

    .line 38
    move-object v3, v4

    .line 40
    :cond_1
    const/4 v4, 0x1

    .line 41
    invoke-virtual {v3, v2, v4, v4}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->setTimedOut$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Ljava/lang/String;ZZ)V

    .line 42
    iget-object v3, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->pipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 45
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 47
    move-result-object v2

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    const-string v4, " entry is "

    .line 53
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 64
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    if-eqz v2, :cond_0

    .line 68
    const-class v3, Lcom/android/systemui/statusbar/policy/DismissNotificationHelper;

    .line 70
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 72
    move-result-object v3

    .line 75
    check-cast v3, Lcom/android/systemui/statusbar/policy/DismissNotificationHelper;

    .line 76
    const/4 v4, 0x0

    .line 78
    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/policy/DismissNotificationHelper;->dismissNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 79
    goto :goto_0

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->smartspaceMediaData:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 83
    iget-boolean v2, v1, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->isActive:Z

    .line 85
    if-eqz v2, :cond_6

    .line 87
    iget-object v1, v1, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->dismissIntent:Landroid/content/Intent;

    .line 89
    if-nez v1, :cond_3

    .line 91
    const-string v1, "Cannot create dismiss action click action: extras missing dismiss_intent."

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    goto :goto_1

    .line 98
    :cond_3
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 99
    move-result-object v0

    .line 102
    if-eqz v0, :cond_4

    .line 103
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 105
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 112
    const-string v2, "com.google.android.apps.gsa.staticplugins.opa.smartspace.ExportedSmartspaceTrampolineActivity"

    .line 113
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    move-result v0

    .line 118
    if-eqz v0, :cond_4

    .line 119
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->context:Landroid/content/Context;

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    goto :goto_1

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 127
    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastSender;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    .line 132
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/util/MediaFlags;->isPersistentSsCardEnabled()V

    .line 134
    sget-object v4, Lcom/android/systemui/media/controls/pipeline/MediaDataManagerKt;->EMPTY_SMARTSPACE_MEDIA_DATA:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 137
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->smartspaceMediaData:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 139
    iget-object v5, v0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->targetId:Ljava/lang/String;

    .line 141
    const/4 v6, 0x0

    .line 143
    const/4 v7, 0x0

    .line 144
    const-wide/16 v8, 0x0

    .line 145
    iget-object v10, v0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 147
    const-wide/16 v11, 0x0

    .line 149
    const/16 v13, 0x17e

    .line 151
    invoke-static/range {v4 .. v13}, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->copy$default(Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;Ljava/lang/String;ZLandroid/content/Intent;JLcom/android/internal/logging/InstanceId;JI)Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 153
    move-result-object v0

    .line 156
    iput-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->smartspaceMediaData:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 157
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->mediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 159
    if-eqz p0, :cond_5

    .line 161
    move-object v3, p0

    .line 163
    :cond_5
    iget-object p0, v0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->targetId:Ljava/lang/String;

    .line 164
    const-wide/16 v0, 0x0

    .line 166
    invoke-virtual {v3, p0, v0, v1}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->dismissSmartspaceRecommendation(Ljava/lang/String;J)V

    .line 168
    :cond_6
    return-void
    .line 171
.end method
