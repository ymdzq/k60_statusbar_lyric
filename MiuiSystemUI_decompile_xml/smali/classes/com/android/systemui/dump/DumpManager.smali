.class public final Lcom/android/systemui/dump/DumpManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final buffers:Ljava/util/Map;

.field public final dumpables:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/TreeMap;

    .line 5
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/dump/DumpManager;->dumpables:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/TreeMap;

    .line 12
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/dump/DumpManager;->buffers:Ljava/util/Map;

    .line 17
    return-void
    .line 19
.end method

.method public static final access$findBestTargetMatch(Lcom/android/systemui/dump/DumpManager;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    check-cast p1, Ljava/util/TreeMap;

    .line 5
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 7
    move-result-object p0

    .line 10
    new-instance p1, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 11
    invoke-direct {p1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 13
    new-instance p0, Lcom/android/systemui/dump/DumpManager$findBestTargetMatch$1;

    .line 16
    invoke-direct {p0, p2}, Lcom/android/systemui/dump/DumpManager$findBestTargetMatch$1;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-static {p1, p0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 21
    move-result-object p0

    .line 24
    new-instance p1, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 25
    invoke-direct {p1, p0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 27
    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 30
    move-result p0

    .line 33
    const/4 p2, 0x0

    .line 34
    if-nez p0, :cond_0

    .line 35
    move-object p0, p2

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 42
    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 43
    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    goto :goto_0

    .line 49
    :cond_1
    move-object v0, p0

    .line 50
    check-cast v0, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/String;

    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 59
    move-result v0

    .line 62
    :cond_2
    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 66
    move-object v2, v1

    .line 67
    check-cast v2, Ljava/util/Map$Entry;

    .line 68
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 70
    move-result-object v2

    .line 73
    check-cast v2, Ljava/lang/String;

    .line 74
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 76
    move-result v2

    .line 79
    if-le v0, v2, :cond_3

    .line 80
    move-object p0, v1

    .line 82
    move v0, v2

    .line 83
    :cond_3
    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 84
    move-result v1

    .line 87
    if-nez v1, :cond_2

    .line 88
    :goto_0
    check-cast p0, Ljava/util/Map$Entry;

    .line 90
    if-eqz p0, :cond_4

    .line 92
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 94
    move-result-object p2

    .line 97
    :cond_4
    return-object p2
    .line 98
.end method

.method public static dumpBuffer(Lcom/android/systemui/dump/RegisteredDumpable;Ljava/io/PrintWriter;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5
    iget-object v0, p0, Lcom/android/systemui/dump/RegisteredDumpable;->name:Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    const-string v2, "BUFFER "

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v0, ":"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    const-string v0, "============================================================================"

    .line 32
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    iget-object p0, p0, Lcom/android/systemui/dump/RegisteredDumpable;->dumpable:Ljava/lang/Object;

    .line 37
    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/log/LogBuffer;->dump(Ljava/io/PrintWriter;I)V

    .line 41
    return-void
    .line 44
.end method

.method public static dumpDumpable(Lcom/android/systemui/dump/RegisteredDumpable;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/dump/RegisteredDumpable;->name:Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string v0, ":"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    const-string v0, "----------------------------------------------------------------------------"

    .line 27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    iget-object p0, p0, Lcom/android/systemui/dump/RegisteredDumpable;->dumpable:Ljava/lang/Object;

    .line 32
    check-cast p0, Lcom/android/systemui/Dumpable;

    .line 34
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 36
    return-void
    .line 39
.end method

.method public static findBestProtoTargetMatch(Ljava/lang/String;Ljava/util/Map;)Lcom/android/systemui/ProtoDumpable;
    .locals 4

    .line 1
    check-cast p1, Ljava/util/TreeMap;

    .line 2
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 4
    move-result-object p1

    .line 7
    new-instance v0, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 8
    invoke-direct {v0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 10
    new-instance p1, Lcom/android/systemui/dump/DumpManager$findBestProtoTargetMatch$1;

    .line 13
    invoke-direct {p1, p0}, Lcom/android/systemui/dump/DumpManager$findBestProtoTargetMatch$1;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-static {v0, p1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 18
    move-result-object p0

    .line 21
    sget-object p1, Lcom/android/systemui/dump/DumpManager$findBestProtoTargetMatch$2;->INSTANCE:Lcom/android/systemui/dump/DumpManager$findBestProtoTargetMatch$2;

    .line 22
    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 24
    move-result-object p0

    .line 27
    new-instance p1, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 28
    invoke-direct {p1, p0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 30
    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 33
    move-result p0

    .line 36
    const/4 v0, 0x0

    .line 37
    if-nez p0, :cond_0

    .line 38
    move-object p0, v0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 45
    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 46
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    goto :goto_0

    .line 52
    :cond_1
    move-object v1, p0

    .line 53
    check-cast v1, Ljava/util/Map$Entry;

    .line 54
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 59
    check-cast v1, Ljava/lang/String;

    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 62
    move-result v1

    .line 65
    :cond_2
    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 66
    move-result-object v2

    .line 69
    move-object v3, v2

    .line 70
    check-cast v3, Ljava/util/Map$Entry;

    .line 71
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 73
    move-result-object v3

    .line 76
    check-cast v3, Ljava/lang/String;

    .line 77
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 79
    move-result v3

    .line 82
    if-le v1, v3, :cond_3

    .line 83
    move-object p0, v2

    .line 85
    move v1, v3

    .line 86
    :cond_3
    invoke-virtual {p1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 87
    move-result v2

    .line 90
    if-nez v2, :cond_2

    .line 91
    :goto_0
    check-cast p0, Ljava/util/Map$Entry;

    .line 93
    if-eqz p0, :cond_4

    .line 95
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 97
    move-result-object p0

    .line 100
    check-cast p0, Lcom/android/systemui/dump/RegisteredDumpable;

    .line 101
    if-eqz p0, :cond_4

    .line 103
    iget-object p0, p0, Lcom/android/systemui/dump/RegisteredDumpable;->dumpable:Ljava/lang/Object;

    .line 105
    check-cast p0, Lcom/android/systemui/Dumpable;

    .line 107
    goto :goto_1

    .line 109
    :cond_4
    move-object p0, v0

    .line 110
    :goto_1
    instance-of p1, p0, Lcom/android/systemui/ProtoDumpable;

    .line 111
    if-eqz p1, :cond_5

    .line 113
    move-object v0, p0

    .line 115
    check-cast v0, Lcom/android/systemui/ProtoDumpable;

    .line 116
    :cond_5
    return-object v0
    .line 118
.end method

.method public static synthetic registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;Lcom/android/systemui/dump/DumpPriority;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final canAssignToNameLocked(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dump/DumpManager;->dumpables:Ljava/util/Map;

    .line 2
    check-cast v0, Ljava/util/TreeMap;

    .line 4
    invoke-virtual {v0, p2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/systemui/dump/RegisteredDumpable;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, v0, Lcom/android/systemui/dump/RegisteredDumpable;->dumpable:Ljava/lang/Object;

    .line 14
    check-cast v0, Lcom/android/systemui/Dumpable;

    .line 16
    if-nez v0, :cond_2

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/dump/DumpManager;->buffers:Ljava/util/Map;

    .line 20
    check-cast p0, Ljava/util/TreeMap;

    .line 22
    invoke-virtual {p0, p2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 27
    check-cast p0, Lcom/android/systemui/dump/RegisteredDumpable;

    .line 28
    if-eqz p0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/android/systemui/dump/RegisteredDumpable;->dumpable:Ljava/lang/Object;

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 36
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result p0

    .line 41
    if-eqz p0, :cond_3

    .line 42
    goto :goto_1

    .line 44
    :cond_3
    const/4 p0, 0x0

    .line 45
    goto :goto_2

    .line 46
    :cond_4
    :goto_1
    const/4 p0, 0x1

    .line 47
    :goto_2
    return p0
    .line 48
.end method

.method public final declared-synchronized dumpBuffers(Ljava/io/PrintWriter;I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/dump/DumpManager;->buffers:Ljava/util/Map;

    .line 3
    check-cast v0, Ljava/util/TreeMap;

    .line 5
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 7
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/systemui/dump/RegisteredDumpable;

    .line 25
    invoke-static {v1, p1, p2}, Lcom/android/systemui/dump/DumpManager;->dumpBuffer(Lcom/android/systemui/dump/RegisteredDumpable;Ljava/io/PrintWriter;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    goto :goto_0

    .line 30
    :cond_0
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    monitor-exit p0

    .line 34
    throw p1
    .line 35
.end method

.method public final declared-synchronized listBuffers(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/dump/DumpManager;->buffers:Ljava/util/Map;

    .line 3
    check-cast v0, Ljava/util/TreeMap;

    .line 5
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 7
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/systemui/dump/RegisteredDumpable;

    .line 25
    iget-object v1, v1, Lcom/android/systemui/dump/RegisteredDumpable;->name:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_0

    .line 32
    :cond_0
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0

    .line 36
    throw p1
    .line 37
.end method

.method public final declared-synchronized listDumpables(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/dump/DumpManager;->dumpables:Ljava/util/Map;

    .line 3
    check-cast v0, Ljava/util/TreeMap;

    .line 5
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 7
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/systemui/dump/RegisteredDumpable;

    .line 25
    iget-object v1, v1, Lcom/android/systemui/dump/RegisteredDumpable;->name:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_0

    .line 32
    :cond_0
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0

    .line 36
    throw p1
    .line 37
.end method

.method public final registerCriticalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;Lcom/android/systemui/dump/DumpPriority;)V

    .line 4
    return-void
    .line 7
.end method

.method public final declared-synchronized registerDumpable(Lcom/android/systemui/Dumpable;)V
    .locals 2

    monitor-enter p0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    .line 9
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;Lcom/android/systemui/dump/DumpPriority;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;Lcom/android/systemui/dump/DumpPriority;)V

    return-void
.end method

.method public final declared-synchronized registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;Lcom/android/systemui/dump/DumpPriority;)V
    .locals 2

    const-string v0, "\'"

    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/dump/DumpManager;->canAssignToNameLocked(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/dump/DumpManager;->dumpables:Ljava/util/Map;

    new-instance v1, Lcom/android/systemui/dump/RegisteredDumpable;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/systemui/dump/RegisteredDumpable;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/android/systemui/dump/DumpPriority;)V

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is already registered"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final registerNormalDumpable(Lcom/android/systemui/Dumpable;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method public final registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/android/systemui/dump/DumpPriority;->NORMAL:Lcom/android/systemui/dump/DumpPriority;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;Lcom/android/systemui/dump/DumpPriority;)V

    return-void
.end method

.method public final declared-synchronized unregisterDumpable(Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/dump/DumpManager;->dumpables:Ljava/util/Map;

    .line 3
    check-cast v0, Ljava/util/TreeMap;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0

    .line 13
    throw p1
    .line 14
.end method
