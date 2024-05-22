.class public final Lcom/android/systemui/shade/NPVCDownEventState$Buffer;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final buffer:Lcom/android/systemui/common/buffer/RingBuffer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/common/buffer/RingBuffer;

    .line 5
    sget-object v1, Lcom/android/systemui/shade/NPVCDownEventState$Buffer$buffer$1;->INSTANCE:Lcom/android/systemui/shade/NPVCDownEventState$Buffer$buffer$1;

    .line 7
    const/16 v2, 0x32

    .line 9
    invoke-direct {v0, v2, v1}, Lcom/android/systemui/common/buffer/RingBuffer;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 11
    iput-object v0, p0, Lcom/android/systemui/shade/NPVCDownEventState$Buffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    .line 14
    return-void
    .line 16
.end method
