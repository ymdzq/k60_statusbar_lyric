.class public final Lcom/android/systemui/shared/tracing/FrameProtoTracer$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shared/tracing/FrameProtoTracer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/tracing/FrameProtoTracer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer$2;->this$0:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer$2;->this$0:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mPool:Ljava/util/Queue;

    .line 4
    check-cast p0, Ljava/util/ArrayDeque;

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 8
    return-void
    .line 11
.end method
