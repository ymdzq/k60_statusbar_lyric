.class public final Lcom/android/app/motiontool/MotionToolManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final Companion:Lcom/android/app/motiontool/MotionToolManager$Companion;

.field public static INSTANCE:Lcom/android/app/motiontool/MotionToolManager;


# instance fields
.field public traceIdCounter:I

.field public final traces:Ljava/util/Map;

.field public final viewCapture:Lcom/android/app/viewcapture/SimpleViewCapture;

.field public final windowManagerGlobal:Landroid/view/WindowManagerGlobal;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/app/motiontool/MotionToolManager$Companion;

    .line 2
    invoke-direct {v0}, Lcom/android/app/motiontool/MotionToolManager$Companion;-><init>()V

    .line 4
    sput-object v0, Lcom/android/app/motiontool/MotionToolManager;->Companion:Lcom/android/app/motiontool/MotionToolManager$Companion;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/view/WindowManagerGlobal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/app/motiontool/MotionToolManager;->windowManagerGlobal:Landroid/view/WindowManagerGlobal;

    .line 5
    new-instance p1, Lcom/android/app/viewcapture/SimpleViewCapture;

    .line 7
    invoke-direct {p1}, Lcom/android/app/viewcapture/SimpleViewCapture;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/app/motiontool/MotionToolManager;->viewCapture:Lcom/android/app/viewcapture/SimpleViewCapture;

    .line 12
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 14
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/app/motiontool/MotionToolManager;->traces:Ljava/util/Map;

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final getDataFromViewCapture(Lcom/android/app/motiontool/TraceMetadata;)Lcom/android/app/viewcapture/data/MotionWindowData;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/app/motiontool/MotionToolManager;->windowManagerGlobal:Landroid/view/WindowManagerGlobal;

    .line 2
    iget-object v1, p1, Lcom/android/app/motiontool/TraceMetadata;->windowId:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->getRootView(Ljava/lang/String;)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_6

    .line 10
    iget-object p0, p0, Lcom/android/app/motiontool/MotionToolManager;->viewCapture:Lcom/android/app/viewcapture/SimpleViewCapture;

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 26
    move-result-object v2

    .line 29
    new-instance v3, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda0;

    .line 30
    invoke-direct {v3, v0}, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    .line 32
    new-instance v0, Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;

    .line 35
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v2

    .line 40
    invoke-direct {v0, v2}, Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;-><init>(Landroid/content/res/Resources;)V

    .line 41
    new-instance v2, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda4;

    .line 44
    invoke-direct {v2, p0, v3}, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda4;-><init>(Lcom/android/app/viewcapture/SimpleViewCapture;Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda0;)V

    .line 46
    sget-object v3, Lcom/android/app/viewcapture/ViewCapture;->MAIN_EXECUTOR:Lcom/android/app/viewcapture/LooperExecutor;

    .line 49
    invoke-static {v2, v3}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    .line 51
    move-result-object v2

    .line 54
    new-instance v3, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda5;

    .line 55
    const/4 v4, 0x0

    .line 57
    invoke-direct {v3, v0, v1, v4}, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda5;-><init>(Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;Ljava/util/ArrayList;I)V

    .line 58
    iget-object p0, p0, Lcom/android/app/viewcapture/ViewCapture;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 61
    invoke-virtual {v2, v3, p0}, Ljava/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    .line 63
    move-result-object p0

    .line 66
    new-instance v0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda1;

    .line 67
    invoke-direct {v0, v1, v4}, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;I)V

    .line 69
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 72
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    .line 76
    move-result-object p0

    .line 79
    check-cast p0, Ljava/util/Optional;

    .line 80
    const/4 v0, 0x0

    .line 82
    if-eqz p0, :cond_0

    .line 83
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-result-object p0

    .line 88
    move-object v0, p0

    .line 89
    check-cast v0, Lcom/android/app/viewcapture/data/MotionWindowData;

    .line 90
    :cond_0
    if-nez v0, :cond_1

    .line 92
    invoke-static {}, Lcom/android/app/viewcapture/data/MotionWindowData;->newBuilder()Lcom/android/app/viewcapture/data/MotionWindowData$Builder;

    .line 94
    move-result-object p0

    .line 97
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 98
    move-result-object p0

    .line 101
    check-cast p0, Lcom/android/app/viewcapture/data/MotionWindowData;

    .line 102
    return-object p0

    .line 104
    :cond_1
    invoke-virtual {v0}, Lcom/android/app/viewcapture/data/MotionWindowData;->getFrameDataList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 105
    move-result-object p0

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    .line 109
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 114
    move-result-object p0

    .line 117
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    move-result v2

    .line 121
    if-eqz v2, :cond_4

    .line 122
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    move-result-object v2

    .line 127
    move-object v3, v2

    .line 128
    check-cast v3, Lcom/android/app/viewcapture/data/FrameData;

    .line 129
    invoke-virtual {v3}, Lcom/android/app/viewcapture/data/FrameData;->getTimestamp()J

    .line 131
    move-result-wide v5

    .line 134
    iget-wide v7, p1, Lcom/android/app/motiontool/TraceMetadata;->lastPolledTime:J

    .line 135
    cmp-long v3, v5, v7

    .line 137
    if-lez v3, :cond_3

    .line 139
    const/4 v3, 0x1

    .line 141
    goto :goto_1

    .line 142
    :cond_3
    move v3, v4

    .line 143
    :goto_1
    if-eqz v3, :cond_2

    .line 144
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    goto :goto_0

    .line 149
    :cond_4
    sget-object p0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 150
    invoke-virtual {v0, p0}, Lcom/android/app/viewcapture/data/MotionWindowData;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    .line 152
    move-result-object p0

    .line 155
    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 156
    iget-object p1, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->defaultInstance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 158
    invoke-virtual {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->equals(Ljava/lang/Object;)Z

    .line 160
    move-result p1

    .line 163
    if-eqz p1, :cond_5

    .line 164
    goto :goto_2

    .line 166
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 167
    iget-object p1, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 170
    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFromInstance(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Object;)V

    .line 172
    :goto_2
    check-cast p0, Lcom/android/app/viewcapture/data/MotionWindowData$Builder;

    .line 175
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 177
    iget-object p1, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 180
    check-cast p1, Lcom/android/app/viewcapture/data/MotionWindowData;

    .line 182
    invoke-static {p1}, Lcom/android/app/viewcapture/data/MotionWindowData;->access$500(Lcom/android/app/viewcapture/data/MotionWindowData;)V

    .line 184
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 187
    iget-object p1, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 190
    check-cast p1, Lcom/android/app/viewcapture/data/MotionWindowData;

    .line 192
    invoke-static {p1, v1}, Lcom/android/app/viewcapture/data/MotionWindowData;->access$400(Lcom/android/app/viewcapture/data/MotionWindowData;Ljava/lang/Iterable;)V

    .line 194
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 197
    move-result-object p0

    .line 200
    check-cast p0, Lcom/android/app/viewcapture/data/MotionWindowData;

    .line 201
    return-object p0

    .line 203
    :cond_6
    new-instance p0, Lcom/android/app/motiontool/WindowNotFoundException;

    .line 204
    invoke-direct {p0, v1}, Lcom/android/app/motiontool/WindowNotFoundException;-><init>(Ljava/lang/String;)V

    .line 206
    throw p0
    .line 209
.end method

.method public final declared-synchronized pollTrace(I)Lcom/android/app/viewcapture/data/MotionWindowData;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/app/motiontool/MotionToolManager;->traces:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object v1

    .line 8
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    check-cast v0, Lcom/android/app/motiontool/TraceMetadata;

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/app/motiontool/MotionToolManager;->getDataFromViewCapture(Lcom/android/app/motiontool/TraceMetadata;)Lcom/android/app/viewcapture/data/MotionWindowData;

    .line 19
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Lcom/android/app/motiontool/TraceMetadata;->updateLastPolledTime(Lcom/android/app/viewcapture/data/MotionWindowData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    .line 26
    return-object p1

    .line 27
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/app/motiontool/UnknownTraceIdException;

    .line 28
    invoke-direct {v0, p1}, Lcom/android/app/motiontool/UnknownTraceIdException;-><init>(I)V

    .line 30
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    monitor-exit p0

    .line 35
    throw p1
    .line 36
.end method

.method public final declared-synchronized reset()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/app/motiontool/MotionToolManager;->traces:Ljava/util/Map;

    .line 3
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 5
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

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
    check-cast v1, Lcom/android/app/motiontool/TraceMetadata;

    .line 25
    iget-object v1, v1, Lcom/android/app/motiontool/TraceMetadata;->stopTrace:Lkotlin/jvm/functions/Function0;

    .line 27
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 29
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/app/motiontool/MotionToolManager;->traces:Ljava/util/Map;

    .line 33
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 35
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 37
    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/android/app/motiontool/MotionToolManager;->traceIdCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    monitor-exit p0

    .line 46
    throw v0
    .line 47
.end method
