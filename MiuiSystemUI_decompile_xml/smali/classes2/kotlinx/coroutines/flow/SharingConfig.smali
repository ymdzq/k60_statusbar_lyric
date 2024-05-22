.class public final Lkotlinx/coroutines/flow/SharingConfig;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final context:Lkotlin/coroutines/CoroutineContext;

.field public final extraBufferCapacity:I

.field public final onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

.field public final upstream:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(ILkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/BufferOverflow;Lkotlinx/coroutines/flow/Flow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Lkotlinx/coroutines/flow/Flow;

    .line 5
    iput p1, p0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 7
    iput-object p3, p0, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 9
    iput-object p2, p0, Lkotlinx/coroutines/flow/SharingConfig;->context:Lkotlin/coroutines/CoroutineContext;

    .line 11
    return-void
    .line 13
.end method
