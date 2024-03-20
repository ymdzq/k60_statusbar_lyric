.class public final Lcom/android/app/motiontool/DdmHandleMotionTool;
.super Landroid/ddm/DdmHandle;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final CHUNK_MOTO:I

.field public static final Companion:Lcom/android/app/motiontool/DdmHandleMotionTool$Companion;

.field public static INSTANCE:Lcom/android/app/motiontool/DdmHandleMotionTool;


# instance fields
.field public final motionToolManager:Lcom/android/app/motiontool/MotionToolManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/app/motiontool/DdmHandleMotionTool$Companion;

    .line 2
    invoke-direct {v0}, Lcom/android/app/motiontool/DdmHandleMotionTool$Companion;-><init>()V

    .line 4
    sput-object v0, Lcom/android/app/motiontool/DdmHandleMotionTool;->Companion:Lcom/android/app/motiontool/DdmHandleMotionTool$Companion;

    .line 7
    const-string v0, "MOTO"

    .line 9
    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    .line 11
    move-result v0

    .line 14
    sput v0, Lcom/android/app/motiontool/DdmHandleMotionTool;->CHUNK_MOTO:I

    .line 15
    return-void
    .line 17
.end method

.method public constructor <init>(Lcom/android/app/motiontool/MotionToolManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/ddm/DdmHandle;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/app/motiontool/DdmHandleMotionTool;->motionToolManager:Lcom/android/app/motiontool/MotionToolManager;

    .line 5
    return-void
    .line 7
.end method

.method public static tryCatchingMotionToolManagerExceptions(Lcom/android/app/motiontool/MotionToolsResponse$Builder;Lkotlin/jvm/functions/Function0;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/app/motiontool/UnknownTraceIdException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/app/motiontool/WindowNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    goto :goto_0

    .line 5
    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Lcom/android/app/motiontool/WindowNotFoundException;->getWindowId()Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 10
    invoke-static {}, Lcom/android/app/motiontool/ErrorResponse;->newBuilder()Lcom/android/app/motiontool/ErrorResponse$Builder;

    .line 11
    move-result-object v0

    .line 14
    sget-object v1, Lcom/android/app/motiontool/ErrorResponse$Code;->WINDOW_NOT_FOUND:Lcom/android/app/motiontool/ErrorResponse$Code;

    .line 15
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17
    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 20
    check-cast v2, Lcom/android/app/motiontool/ErrorResponse;

    .line 22
    invoke-static {v2, v1}, Lcom/android/app/motiontool/ErrorResponse;->access$100(Lcom/android/app/motiontool/ErrorResponse;Lcom/android/app/motiontool/ErrorResponse$Code;)V

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    const-string v2, "No window found with windowId "

    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 40
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 41
    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 44
    check-cast v1, Lcom/android/app/motiontool/ErrorResponse;

    .line 46
    invoke-static {v1, p1}, Lcom/android/app/motiontool/ErrorResponse;->access$300(Lcom/android/app/motiontool/ErrorResponse;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/app/motiontool/MotionToolsResponse$Builder;->setError(Lcom/android/app/motiontool/ErrorResponse$Builder;)V

    .line 51
    goto :goto_0

    .line 54
    :catch_1
    move-exception p1

    .line 55
    invoke-virtual {p1}, Lcom/android/app/motiontool/UnknownTraceIdException;->getTraceId()I

    .line 56
    move-result p1

    .line 59
    invoke-static {}, Lcom/android/app/motiontool/ErrorResponse;->newBuilder()Lcom/android/app/motiontool/ErrorResponse$Builder;

    .line 60
    move-result-object v0

    .line 63
    sget-object v1, Lcom/android/app/motiontool/ErrorResponse$Code;->UNKNOWN_TRACE_ID:Lcom/android/app/motiontool/ErrorResponse$Code;

    .line 64
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 66
    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 69
    check-cast v2, Lcom/android/app/motiontool/ErrorResponse;

    .line 71
    invoke-static {v2, v1}, Lcom/android/app/motiontool/ErrorResponse;->access$100(Lcom/android/app/motiontool/ErrorResponse;Lcom/android/app/motiontool/ErrorResponse$Code;)V

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    const-string v2, "No running Trace found with traceId "

    .line 78
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 89
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 90
    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 93
    check-cast v1, Lcom/android/app/motiontool/ErrorResponse;

    .line 95
    invoke-static {v1, p1}, Lcom/android/app/motiontool/ErrorResponse;->access$300(Lcom/android/app/motiontool/ErrorResponse;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/app/motiontool/MotionToolsResponse$Builder;->setError(Lcom/android/app/motiontool/ErrorResponse$Builder;)V

    .line 100
    :goto_0
    return-void
    .line 103
.end method


# virtual methods
.method public final handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/ddm/DdmHandle;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    .line 2
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 7
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/android/app/motiontool/MotionToolsRequest;->parseFrom([B)Lcom/android/app/motiontool/MotionToolsRequest;

    .line 11
    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    invoke-virtual {p1}, Lcom/android/app/motiontool/MotionToolsRequest;->getTypeCase()Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    .line 15
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;->getNumber()I

    .line 19
    move-result v1

    .line 22
    const/4 v2, 0x1

    .line 23
    if-eq v1, v2, :cond_3

    .line 24
    const/4 v2, 0x2

    .line 26
    if-eq v1, v2, :cond_2

    .line 27
    const/4 v2, 0x3

    .line 29
    if-eq v1, v2, :cond_1

    .line 30
    const/4 v2, 0x4

    .line 32
    if-eq v1, v2, :cond_0

    .line 33
    invoke-static {}, Lcom/android/app/motiontool/MotionToolsResponse;->newBuilder()Lcom/android/app/motiontool/MotionToolsResponse$Builder;

    .line 35
    move-result-object p0

    .line 38
    invoke-static {}, Lcom/android/app/motiontool/ErrorResponse;->newBuilder()Lcom/android/app/motiontool/ErrorResponse$Builder;

    .line 39
    move-result-object p1

    .line 42
    sget-object v1, Lcom/android/app/motiontool/ErrorResponse$Code;->INVALID_REQUEST:Lcom/android/app/motiontool/ErrorResponse$Code;

    .line 43
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 45
    iget-object v2, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 48
    check-cast v2, Lcom/android/app/motiontool/ErrorResponse;

    .line 50
    invoke-static {v2, v1}, Lcom/android/app/motiontool/ErrorResponse;->access$100(Lcom/android/app/motiontool/ErrorResponse;Lcom/android/app/motiontool/ErrorResponse$Code;)V

    .line 52
    const-string v1, "Unknown request type"

    .line 55
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 57
    iget-object v2, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 60
    check-cast v2, Lcom/android/app/motiontool/ErrorResponse;

    .line 62
    invoke-static {v2, v1}, Lcom/android/app/motiontool/ErrorResponse;->access$300(Lcom/android/app/motiontool/ErrorResponse;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/app/motiontool/MotionToolsResponse$Builder;->setError(Lcom/android/app/motiontool/ErrorResponse$Builder;)V

    .line 67
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 70
    move-result-object p0

    .line 73
    check-cast p0, Lcom/android/app/motiontool/MotionToolsResponse;

    .line 74
    goto/16 :goto_2

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/android/app/motiontool/MotionToolsRequest;->getPollTrace()Lcom/android/app/motiontool/PollTraceRequest;

    .line 78
    move-result-object p1

    .line 81
    invoke-static {}, Lcom/android/app/motiontool/MotionToolsResponse;->newBuilder()Lcom/android/app/motiontool/MotionToolsResponse$Builder;

    .line 82
    move-result-object v1

    .line 85
    new-instance v2, Lcom/android/app/motiontool/DdmHandleMotionTool$handlePollTraceRequest$1$1;

    .line 86
    invoke-direct {v2, v1, p0, p1}, Lcom/android/app/motiontool/DdmHandleMotionTool$handlePollTraceRequest$1$1;-><init>(Lcom/android/app/motiontool/MotionToolsResponse$Builder;Lcom/android/app/motiontool/DdmHandleMotionTool;Lcom/android/app/motiontool/PollTraceRequest;)V

    .line 88
    invoke-static {v1, v2}, Lcom/android/app/motiontool/DdmHandleMotionTool;->tryCatchingMotionToolManagerExceptions(Lcom/android/app/motiontool/MotionToolsResponse$Builder;Lkotlin/jvm/functions/Function0;)V

    .line 91
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 94
    move-result-object p0

    .line 97
    check-cast p0, Lcom/android/app/motiontool/MotionToolsResponse;

    .line 98
    goto/16 :goto_2

    .line 100
    :cond_1
    invoke-virtual {p1}, Lcom/android/app/motiontool/MotionToolsRequest;->getEndTrace()Lcom/android/app/motiontool/EndTraceRequest;

    .line 102
    move-result-object p1

    .line 105
    invoke-static {}, Lcom/android/app/motiontool/MotionToolsResponse;->newBuilder()Lcom/android/app/motiontool/MotionToolsResponse$Builder;

    .line 106
    move-result-object v1

    .line 109
    new-instance v2, Lcom/android/app/motiontool/DdmHandleMotionTool$handleEndTraceRequest$1$1;

    .line 110
    invoke-direct {v2, v1, p0, p1}, Lcom/android/app/motiontool/DdmHandleMotionTool$handleEndTraceRequest$1$1;-><init>(Lcom/android/app/motiontool/MotionToolsResponse$Builder;Lcom/android/app/motiontool/DdmHandleMotionTool;Lcom/android/app/motiontool/EndTraceRequest;)V

    .line 112
    invoke-static {v1, v2}, Lcom/android/app/motiontool/DdmHandleMotionTool;->tryCatchingMotionToolManagerExceptions(Lcom/android/app/motiontool/MotionToolsResponse$Builder;Lkotlin/jvm/functions/Function0;)V

    .line 115
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 118
    move-result-object p0

    .line 121
    check-cast p0, Lcom/android/app/motiontool/MotionToolsResponse;

    .line 122
    goto :goto_2

    .line 124
    :cond_2
    invoke-virtual {p1}, Lcom/android/app/motiontool/MotionToolsRequest;->getBeginTrace()Lcom/android/app/motiontool/BeginTraceRequest;

    .line 125
    move-result-object p1

    .line 128
    invoke-static {}, Lcom/android/app/motiontool/MotionToolsResponse;->newBuilder()Lcom/android/app/motiontool/MotionToolsResponse$Builder;

    .line 129
    move-result-object v1

    .line 132
    new-instance v2, Lcom/android/app/motiontool/DdmHandleMotionTool$handleBeginTraceRequest$1$1;

    .line 133
    invoke-direct {v2, v1, p0, p1}, Lcom/android/app/motiontool/DdmHandleMotionTool$handleBeginTraceRequest$1$1;-><init>(Lcom/android/app/motiontool/MotionToolsResponse$Builder;Lcom/android/app/motiontool/DdmHandleMotionTool;Lcom/android/app/motiontool/BeginTraceRequest;)V

    .line 135
    invoke-static {v1, v2}, Lcom/android/app/motiontool/DdmHandleMotionTool;->tryCatchingMotionToolManagerExceptions(Lcom/android/app/motiontool/MotionToolsResponse$Builder;Lkotlin/jvm/functions/Function0;)V

    .line 138
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 141
    move-result-object p0

    .line 144
    check-cast p0, Lcom/android/app/motiontool/MotionToolsResponse;

    .line 145
    goto :goto_2

    .line 147
    :cond_3
    invoke-virtual {p1}, Lcom/android/app/motiontool/MotionToolsRequest;->getHandshake()Lcom/android/app/motiontool/HandshakeRequest;

    .line 148
    move-result-object p1

    .line 151
    iget-object p0, p0, Lcom/android/app/motiontool/DdmHandleMotionTool;->motionToolManager:Lcom/android/app/motiontool/MotionToolManager;

    .line 152
    invoke-virtual {p1}, Lcom/android/app/motiontool/HandshakeRequest;->getWindow()Lcom/android/app/motiontool/WindowIdentifier;

    .line 154
    move-result-object p1

    .line 157
    monitor-enter p0

    .line 158
    :try_start_1
    invoke-virtual {p1}, Lcom/android/app/motiontool/WindowIdentifier;->getRootWindow()Ljava/lang/String;

    .line 159
    move-result-object p1

    .line 162
    iget-object v1, p0, Lcom/android/app/motiontool/MotionToolManager;->windowManagerGlobal:Landroid/view/WindowManagerGlobal;

    .line 163
    invoke-virtual {v1, p1}, Landroid/view/WindowManagerGlobal;->getRootView(Ljava/lang/String;)Landroid/view/View;

    .line 165
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    if-eqz p1, :cond_4

    .line 169
    goto :goto_0

    .line 171
    :cond_4
    move v2, v0

    .line 172
    :goto_0
    monitor-exit p0

    .line 173
    if-eqz v2, :cond_5

    .line 174
    sget-object p0, Lcom/android/app/motiontool/HandshakeResponse$Status;->OK:Lcom/android/app/motiontool/HandshakeResponse$Status;

    .line 176
    goto :goto_1

    .line 178
    :cond_5
    sget-object p0, Lcom/android/app/motiontool/HandshakeResponse$Status;->WINDOW_NOT_FOUND:Lcom/android/app/motiontool/HandshakeResponse$Status;

    .line 179
    :goto_1
    invoke-static {}, Lcom/android/app/motiontool/MotionToolsResponse;->newBuilder()Lcom/android/app/motiontool/MotionToolsResponse$Builder;

    .line 181
    move-result-object p1

    .line 184
    invoke-static {}, Lcom/android/app/motiontool/HandshakeResponse;->newBuilder()Lcom/android/app/motiontool/HandshakeResponse$Builder;

    .line 185
    move-result-object v1

    .line 188
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 189
    iget-object v2, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 192
    check-cast v2, Lcom/android/app/motiontool/HandshakeResponse;

    .line 194
    invoke-static {v2}, Lcom/android/app/motiontool/HandshakeResponse;->access$300(Lcom/android/app/motiontool/HandshakeResponse;)V

    .line 196
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 199
    iget-object v2, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 202
    check-cast v2, Lcom/android/app/motiontool/HandshakeResponse;

    .line 204
    invoke-static {v2, p0}, Lcom/android/app/motiontool/HandshakeResponse;->access$100(Lcom/android/app/motiontool/HandshakeResponse;Lcom/android/app/motiontool/HandshakeResponse$Status;)V

    .line 206
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 209
    iget-object p0, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 212
    check-cast p0, Lcom/android/app/motiontool/MotionToolsResponse;

    .line 214
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 216
    move-result-object v1

    .line 219
    check-cast v1, Lcom/android/app/motiontool/HandshakeResponse;

    .line 220
    invoke-static {p0, v1}, Lcom/android/app/motiontool/MotionToolsResponse;->access$500(Lcom/android/app/motiontool/MotionToolsResponse;Lcom/android/app/motiontool/HandshakeResponse;)V

    .line 222
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 225
    move-result-object p0

    .line 228
    check-cast p0, Lcom/android/app/motiontool/MotionToolsResponse;

    .line 229
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 231
    move-result-object p0

    .line 234
    new-instance p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 235
    sget v1, Lcom/android/app/motiontool/DdmHandleMotionTool;->CHUNK_MOTO:I

    .line 237
    array-length v2, p0

    .line 239
    invoke-direct {p1, v1, p0, v0, v2}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .line 240
    return-object p1

    .line 243
    :catchall_0
    move-exception p1

    .line 244
    monitor-exit p0

    .line 245
    throw p1

    .line 246
    :catch_0
    invoke-static {}, Lcom/android/app/motiontool/MotionToolsResponse;->newBuilder()Lcom/android/app/motiontool/MotionToolsResponse$Builder;

    .line 247
    move-result-object p0

    .line 250
    invoke-static {}, Lcom/android/app/motiontool/ErrorResponse;->newBuilder()Lcom/android/app/motiontool/ErrorResponse$Builder;

    .line 251
    move-result-object p1

    .line 254
    sget-object v1, Lcom/android/app/motiontool/ErrorResponse$Code;->INVALID_REQUEST:Lcom/android/app/motiontool/ErrorResponse$Code;

    .line 255
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 257
    iget-object v2, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 260
    check-cast v2, Lcom/android/app/motiontool/ErrorResponse;

    .line 262
    invoke-static {v2, v1}, Lcom/android/app/motiontool/ErrorResponse;->access$100(Lcom/android/app/motiontool/ErrorResponse;Lcom/android/app/motiontool/ErrorResponse$Code;)V

    .line 264
    const-string v1, "Invalid request format (Protobuf parse exception)"

    .line 267
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 269
    iget-object v2, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 272
    check-cast v2, Lcom/android/app/motiontool/ErrorResponse;

    .line 274
    invoke-static {v2, v1}, Lcom/android/app/motiontool/ErrorResponse;->access$300(Lcom/android/app/motiontool/ErrorResponse;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0, p1}, Lcom/android/app/motiontool/MotionToolsResponse$Builder;->setError(Lcom/android/app/motiontool/ErrorResponse$Builder;)V

    .line 279
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 282
    move-result-object p0

    .line 285
    check-cast p0, Lcom/android/app/motiontool/MotionToolsResponse;

    .line 286
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    .line 288
    move-result-object p0

    .line 291
    new-instance p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 292
    sget v1, Lcom/android/app/motiontool/DdmHandleMotionTool;->CHUNK_MOTO:I

    .line 294
    array-length v2, p0

    .line 296
    invoke-direct {p1, v1, p0, v0, v2}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .line 297
    return-object p1
    .line 300
.end method

.method public final onConnected()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onDisconnected()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
