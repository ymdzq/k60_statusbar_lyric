.class final Lcom/android/app/motiontool/DdmHandleMotionTool$handleEndTraceRequest$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $endTraceRequest:Lcom/android/app/motiontool/EndTraceRequest;

.field final synthetic $this_apply:Lcom/android/app/motiontool/MotionToolsResponse$Builder;

.field final synthetic this$0:Lcom/android/app/motiontool/DdmHandleMotionTool;


# direct methods
.method public constructor <init>(Lcom/android/app/motiontool/MotionToolsResponse$Builder;Lcom/android/app/motiontool/DdmHandleMotionTool;Lcom/android/app/motiontool/EndTraceRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/app/motiontool/DdmHandleMotionTool$handleEndTraceRequest$1$1;->$this_apply:Lcom/android/app/motiontool/MotionToolsResponse$Builder;

    .line 2
    iput-object p2, p0, Lcom/android/app/motiontool/DdmHandleMotionTool$handleEndTraceRequest$1$1;->this$0:Lcom/android/app/motiontool/DdmHandleMotionTool;

    .line 4
    iput-object p3, p0, Lcom/android/app/motiontool/DdmHandleMotionTool$handleEndTraceRequest$1$1;->$endTraceRequest:Lcom/android/app/motiontool/EndTraceRequest;

    .line 6
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/app/motiontool/DdmHandleMotionTool$handleEndTraceRequest$1$1;->$this_apply:Lcom/android/app/motiontool/MotionToolsResponse$Builder;

    .line 2
    invoke-static {}, Lcom/android/app/motiontool/EndTraceResponse;->newBuilder()Lcom/android/app/motiontool/EndTraceResponse$Builder;

    .line 4
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/app/motiontool/DdmHandleMotionTool$handleEndTraceRequest$1$1;->this$0:Lcom/android/app/motiontool/DdmHandleMotionTool;

    .line 8
    iget-object v2, v2, Lcom/android/app/motiontool/DdmHandleMotionTool;->motionToolManager:Lcom/android/app/motiontool/MotionToolManager;

    .line 10
    iget-object p0, p0, Lcom/android/app/motiontool/DdmHandleMotionTool$handleEndTraceRequest$1$1;->$endTraceRequest:Lcom/android/app/motiontool/EndTraceRequest;

    .line 12
    invoke-virtual {p0}, Lcom/android/app/motiontool/EndTraceRequest;->getTraceId()I

    .line 14
    move-result p0

    .line 17
    const-string v3, "End Trace for id: "

    .line 18
    monitor-enter v2

    .line 20
    :try_start_0
    const-string v4, "MotionToolManager"

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 34
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v3, v2, Lcom/android/app/motiontool/MotionToolManager;->traces:Ljava/util/Map;

    .line 38
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v4

    .line 43
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 44
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v3

    .line 49
    if-eqz v3, :cond_0

    .line 50
    check-cast v3, Lcom/android/app/motiontool/TraceMetadata;

    .line 52
    invoke-virtual {v2, p0}, Lcom/android/app/motiontool/MotionToolManager;->pollTrace(I)Lcom/android/app/viewcapture/data/MotionWindowData;

    .line 54
    move-result-object v4

    .line 57
    iget-object v3, v3, Lcom/android/app/motiontool/TraceMetadata;->stopTrace:Lkotlin/jvm/functions/Function0;

    .line 58
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 60
    iget-object v3, v2, Lcom/android/app/motiontool/MotionToolManager;->traces:Ljava/util/Map;

    .line 63
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object p0

    .line 68
    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit v2

    .line 72
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 73
    iget-object p0, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 76
    check-cast p0, Lcom/android/app/motiontool/EndTraceResponse;

    .line 78
    invoke-static {p0, v4}, Lcom/android/app/motiontool/EndTraceResponse;->access$100(Lcom/android/app/motiontool/EndTraceResponse;Lcom/android/app/viewcapture/data/MotionWindowData;)V

    .line 80
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 83
    iget-object p0, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 86
    check-cast p0, Lcom/android/app/motiontool/MotionToolsResponse;

    .line 88
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 90
    move-result-object v0

    .line 93
    check-cast v0, Lcom/android/app/motiontool/EndTraceResponse;

    .line 94
    invoke-static {p0, v0}, Lcom/android/app/motiontool/MotionToolsResponse;->access$1100(Lcom/android/app/motiontool/MotionToolsResponse;Lcom/android/app/motiontool/EndTraceResponse;)V

    .line 96
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 99
    return-object p0

    .line 101
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/app/motiontool/UnknownTraceIdException;

    .line 102
    invoke-direct {v0, p0}, Lcom/android/app/motiontool/UnknownTraceIdException;-><init>(I)V

    .line 104
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    monitor-exit v2

    .line 109
    throw p0
    .line 110
.end method
