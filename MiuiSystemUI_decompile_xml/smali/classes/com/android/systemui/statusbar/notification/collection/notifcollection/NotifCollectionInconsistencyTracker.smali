.class public final Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public attached:Z

.field public coalescedKeySetAccessor:Lkotlin/jvm/functions/Function0;

.field public collectedKeySetAccessor:Lkotlin/jvm/functions/Function0;

.field public final logger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

.field public missingNotifications:Ljava/util/Set;

.field public notificationsWithoutRankings:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->logger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    .line 5
    sget-object p1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 7
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->notificationsWithoutRankings:Ljava/util/Set;

    .line 9
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->missingNotifications:Ljava/util/Set;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final logNewMissingNotifications(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->collectedKeySetAccessor:Lkotlin/jvm/functions/Function0;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    move-object v0, v1

    .line 7
    :cond_0
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/Set;

    .line 12
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->coalescedKeySetAccessor:Lkotlin/jvm/functions/Function0;

    .line 14
    if-nez v2, :cond_1

    .line 16
    goto :goto_0

    .line 18
    :cond_1
    move-object v1, v2

    .line 19
    :goto_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    check-cast v1, Ljava/util/Set;

    .line 24
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 29
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 30
    move-result-object p1

    .line 33
    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker$logNewMissingNotifications$newMissingNotifications$1;

    .line 34
    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker$logNewMissingNotifications$newMissingNotifications$1;-><init>(Ljava/util/Set;)V

    .line 36
    invoke-static {p1, v2}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 39
    move-result-object p1

    .line 42
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker$logNewMissingNotifications$newMissingNotifications$2;

    .line 43
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker$logNewMissingNotifications$newMissingNotifications$2;-><init>(Ljava/util/Set;)V

    .line 45
    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 48
    move-result-object p1

    .line 51
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 52
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 54
    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object p1

    .line 60
    :goto_1
    move-object v1, p1

    .line 61
    check-cast v1, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 62
    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 64
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 73
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 74
    goto :goto_1

    .line 77
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 78
    move-result p1

    .line 81
    if-eqz p1, :cond_4

    .line 82
    const/4 v1, 0x1

    .line 84
    if-eq p1, v1, :cond_3

    .line 85
    goto :goto_2

    .line 87
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 88
    move-result-object p1

    .line 91
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    move-result-object p1

    .line 95
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 96
    move-result-object v0

    .line 99
    goto :goto_2

    .line 100
    :cond_4
    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 101
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->missingNotifications:Ljava/util/Set;

    .line 103
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->maybeLogMissingNotifications(Ljava/util/Set;Ljava/util/Set;)V

    .line 105
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->missingNotifications:Ljava/util/Set;

    .line 108
    return-void
    .line 110
.end method

.method public final maybeLogInconsistentRankings(Ljava/util/Set;Ljava/util/Map;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 11

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 15
    move-result-object v0

    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    return-void

    .line 25
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v1

    .line 34
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v2

    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz v2, :cond_5

    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 45
    check-cast v2, Ljava/lang/String;

    .line 46
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 48
    move-result v4

    .line 51
    xor-int/lit8 v4, v4, 0x1

    .line 52
    if-eqz v4, :cond_3

    .line 54
    move-object v4, v2

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    move-object v4, v3

    .line 58
    :goto_1
    invoke-virtual {p3}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    .line 59
    move-result-object v5

    .line 62
    invoke-static {v5, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    move-result v2

    .line 66
    if-eqz v2, :cond_4

    .line 67
    move-object v3, v4

    .line 69
    :cond_4
    if-eqz v3, :cond_2

    .line 70
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_0

    .line 75
    :cond_5
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    .line 76
    move-result-object v4

    .line 79
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 80
    move-result v0

    .line 83
    xor-int/lit8 v0, v0, 0x1

    .line 84
    const-string v1, "NotifCollection"

    .line 86
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->logger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    .line 88
    if-eqz v0, :cond_6

    .line 90
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 92
    move-result v0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    sget-object v2, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 99
    sget-object v5, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logRecoveredRankings$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logRecoveredRankings$2;

    .line 101
    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 103
    invoke-virtual {v10, v1, v2, v5, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 105
    move-result-object v2

    .line 108
    invoke-interface {v2, v0}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 109
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 112
    move-result v0

    .line 115
    invoke-interface {v2, v0}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 116
    const/4 v6, 0x0

    .line 119
    const/4 v7, 0x0

    .line 120
    sget-object v8, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logRecoveredRankings$1$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logRecoveredRankings$1$1;

    .line 121
    const/16 v9, 0x1f

    .line 123
    const/4 v5, 0x0

    .line 125
    invoke-static/range {v4 .. v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 126
    move-result-object v0

    .line 129
    invoke-interface {v2, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v10, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 133
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    .line 136
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 141
    move-result-object v2

    .line 144
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 145
    move-result-object v2

    .line 148
    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    move-result v4

    .line 152
    if-eqz v4, :cond_9

    .line 153
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    move-result-object v4

    .line 158
    check-cast v4, Ljava/util/Map$Entry;

    .line 159
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 161
    move-result-object v5

    .line 164
    check-cast v5, Ljava/lang/String;

    .line 165
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 167
    move-result-object v4

    .line 170
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 171
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 173
    move-result v5

    .line 176
    xor-int/lit8 v5, v5, 0x1

    .line 177
    if-eqz v5, :cond_8

    .line 179
    goto :goto_3

    .line 181
    :cond_8
    move-object v4, v3

    .line 182
    :goto_3
    if-eqz v4, :cond_7

    .line 183
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    goto :goto_2

    .line 188
    :cond_9
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker$maybeLogInconsistentRankings$$inlined$sortedBy$1;

    .line 189
    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker$maybeLogInconsistentRankings$$inlined$sortedBy$1;-><init>()V

    .line 191
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 194
    move-result-object v4

    .line 197
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 198
    move-result p1

    .line 201
    xor-int/lit8 p1, p1, 0x1

    .line 202
    if-eqz p1, :cond_c

    .line 204
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 206
    move-result p1

    .line 209
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    sget-object p2, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 213
    sget-object v0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logMissingRankings$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logMissingRankings$2;

    .line 215
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 217
    invoke-virtual {p0, v1, p2, v0, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 219
    move-result-object p2

    .line 222
    invoke-interface {p2, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 223
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 226
    move-result p1

    .line 229
    invoke-interface {p2, p1}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 230
    const/4 v5, 0x0

    .line 233
    const/4 v6, 0x0

    .line 234
    const/4 v7, 0x0

    .line 235
    sget-object v8, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logMissingRankings$1$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logMissingRankings$1$1;

    .line 236
    const/16 v9, 0x1f

    .line 238
    invoke-static/range {v4 .. v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 240
    move-result-object p1

    .line 243
    invoke-interface {p2, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0, p2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 247
    sget-object p1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 250
    sget-object p2, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logMissingRankings$4;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logMissingRankings$4;

    .line 252
    invoke-virtual {p0, v1, p1, p2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 254
    move-result-object p1

    .line 257
    invoke-virtual {p3}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    .line 258
    move-result-object p2

    .line 261
    new-instance p3, Ljava/util/ArrayList;

    .line 262
    array-length v0, p2

    .line 264
    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 265
    array-length v0, p2

    .line 268
    const/4 v1, 0x0

    .line 269
    :goto_4
    if-ge v1, v0, :cond_b

    .line 270
    aget-object v2, p2, v1

    .line 272
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    move-result-object v2

    .line 277
    if-nez v2, :cond_a

    .line 278
    const-string v2, "null"

    .line 280
    :cond_a
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    add-int/lit8 v1, v1, 0x1

    .line 285
    goto :goto_4

    .line 287
    :cond_b
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 288
    move-result-object p2

    .line 291
    invoke-interface {p1, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 295
    :cond_c
    return-void
    .line 298
.end method

.method public final maybeLogMissingNotifications(Ljava/util/Set;Ljava/util/Set;)V
    .locals 11

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    return-void

    .line 21
    :cond_1
    invoke-static {p1, p2}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 22
    move-result-object v0

    .line 25
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    .line 26
    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 30
    move-result v0

    .line 33
    xor-int/lit8 v0, v0, 0x1

    .line 34
    const-string v7, "NotifCollection"

    .line 36
    const/4 v8, 0x0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionInconsistencyTracker;->logger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    .line 39
    if-eqz v0, :cond_2

    .line 41
    invoke-interface {p2}, Ljava/util/Set;->size()I

    .line 43
    move-result v0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    sget-object v2, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 50
    sget-object v3, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logFoundNotifications$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logFoundNotifications$2;

    .line 52
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 54
    invoke-virtual {v9, v7, v2, v3, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 56
    move-result-object v10

    .line 59
    invoke-interface {v10, v0}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 60
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 63
    move-result v0

    .line 66
    invoke-interface {v10, v0}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 67
    const/4 v3, 0x0

    .line 70
    const/4 v4, 0x0

    .line 71
    sget-object v5, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logFoundNotifications$1$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logFoundNotifications$1$1;

    .line 72
    const/16 v6, 0x1f

    .line 74
    const/4 v2, 0x0

    .line 76
    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 80
    invoke-interface {v10, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v9, v10}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 84
    :cond_2
    invoke-static {p2, p1}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 87
    move-result-object p1

    .line 90
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    .line 91
    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 95
    move-result p1

    .line 98
    xor-int/lit8 p1, p1, 0x1

    .line 99
    if-eqz p1, :cond_3

    .line 101
    invoke-interface {p2}, Ljava/util/Set;->size()I

    .line 103
    move-result p1

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    sget-object p2, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 110
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logMissingNotifications$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logMissingNotifications$2;

    .line 112
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 114
    invoke-virtual {p0, v7, p2, v1, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 116
    move-result-object p2

    .line 119
    invoke-interface {p2, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 120
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 123
    move-result p1

    .line 126
    invoke-interface {p2, p1}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 127
    const/4 v2, 0x0

    .line 130
    const/4 v3, 0x0

    .line 131
    sget-object v4, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logMissingNotifications$1$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger$logMissingNotifications$1$1;

    .line 132
    const/16 v5, 0x1f

    .line 134
    const/4 v1, 0x0

    .line 136
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 140
    invoke-interface {p2, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, p2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 144
    :cond_3
    return-void
    .line 147
.end method
