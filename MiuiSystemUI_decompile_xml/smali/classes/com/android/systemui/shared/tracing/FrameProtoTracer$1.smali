.class public final Lcom/android/systemui/shared/tracing/FrameProtoTracer$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/internal/util/TraceBuffer$ProtoProvider;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shared/tracing/FrameProtoTracer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/tracing/FrameProtoTracer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer$1;->this$0:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getBytes(Ljava/lang/Object;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer$1;->this$0:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mParams:Lcom/android/systemui/tracing/ProtoTracer;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    check-cast p1, Lcom/google/protobuf/nano/MessageNano;

    .line 9
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    .line 11
    move-result-object p0

    .line 14
    return-object p0
    .line 15
.end method

.method public final getItemSize(Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer$1;->this$0:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mParams:Lcom/android/systemui/tracing/ProtoTracer;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    check-cast p1, Lcom/google/protobuf/nano/MessageNano;

    .line 9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/MessageNano;->getCachedSize()I

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method

.method public final write(Ljava/lang/Object;Ljava/util/Queue;Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer$1;->this$0:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mParams:Lcom/android/systemui/tracing/ProtoTracer;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    check-cast p1, Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;

    .line 9
    const-wide v0, 0x4352544955535953L    # 2.063689408665326E16

    .line 11
    iput-wide v0, p1, Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;->magicNumber:J

    .line 16
    const/4 p0, 0x0

    .line 18
    new-array p0, p0, [Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    .line 19
    invoke-interface {p2, p0}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 24
    check-cast p0, [Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    .line 25
    iput-object p0, p1, Lcom/android/systemui/tracing/nano/SystemUiTraceFileProto;->entry:[Lcom/android/systemui/tracing/nano/SystemUiTraceEntryProto;

    .line 27
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    .line 29
    move-result-object p0

    .line 32
    invoke-virtual {p3, p0}, Ljava/io/OutputStream;->write([B)V

    .line 33
    return-void
    .line 36
.end method
