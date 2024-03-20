.class public abstract Landroidx/emoji2/text/flatbuffer/Table;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public bb:Ljava/nio/ByteBuffer;

.field public bb_pos:I

.field public vtable_size:I

.field public vtable_start:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p0, Landroidx/emoji2/text/flatbuffer/Utf8Safe;->DEFAULT:Landroidx/emoji2/text/flatbuffer/Utf8Safe;

    .line 5
    if-nez p0, :cond_0

    .line 7
    new-instance p0, Landroidx/emoji2/text/flatbuffer/Utf8Safe;

    .line 9
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/Utf8Safe;-><init>()V

    .line 11
    sput-object p0, Landroidx/emoji2/text/flatbuffer/Utf8Safe;->DEFAULT:Landroidx/emoji2/text/flatbuffer/Utf8Safe;

    .line 14
    :cond_0
    return-void
    .line 16
.end method


# virtual methods
.method public final __offset(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->vtable_size:I

    .line 2
    if-ge p1, v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    .line 6
    iget p0, p0, Landroidx/emoji2/text/flatbuffer/Table;->vtable_start:I

    .line 8
    add-int/2addr p0, p1

    .line 10
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 11
    move-result p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public final __reset(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    .line 2
    if-eqz p2, :cond_0

    .line 4
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb_pos:I

    .line 6
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 8
    move-result p2

    .line 11
    sub-int/2addr p1, p2

    .line 12
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/Table;->vtable_start:I

    .line 13
    iget-object p2, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 17
    move-result p1

    .line 20
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/Table;->vtable_size:I

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb_pos:I

    .line 25
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/Table;->vtable_start:I

    .line 27
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/Table;->vtable_size:I

    .line 29
    :goto_0
    return-void
    .line 31
.end method
