.class public final Lcom/google/protobuf/ByteString$1;
.super Lcom/google/protobuf/ByteString$AbstractByteIterator;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final limit:I

.field public position:I

.field public final synthetic this$0:Lcom/google/protobuf/ByteString;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/ByteString$1;->this$0:Lcom/google/protobuf/ByteString;

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/ByteString$AbstractByteIterator;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/protobuf/ByteString$1;->position:I

    .line 8
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    .line 10
    move-result p1

    .line 13
    iput p1, p0, Lcom/google/protobuf/ByteString$1;->limit:I

    .line 14
    return-void
    .line 16
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/ByteString$1;->position:I

    .line 2
    iget p0, p0, Lcom/google/protobuf/ByteString$1;->limit:I

    .line 4
    if-ge v0, p0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
    .line 11
.end method
