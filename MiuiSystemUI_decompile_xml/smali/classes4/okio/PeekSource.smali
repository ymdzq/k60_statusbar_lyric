.class public final Lokio/PeekSource;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lokio/Source;


# instance fields
.field public final buffer:Lokio/Buffer;

.field public closed:Z

.field public expectedPos:I

.field public expectedSegment:Lokio/Segment;

.field public pos:J

.field public final upstream:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    .line 5
    invoke-interface {p1}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    .line 7
    move-result-object p1

    .line 10
    iput-object p1, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 11
    iget-object p1, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 13
    iput-object p1, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 15
    if-eqz p1, :cond_0

    .line 17
    iget p1, p1, Lokio/Segment;->pos:I

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, -0x1

    .line 22
    :goto_0
    iput p1, p0, Lokio/PeekSource;->expectedPos:I

    .line 23
    return-void
    .line 25
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lokio/PeekSource;->closed:Z

    .line 3
    return-void
    .line 5
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 10

    .line 1
    iget-boolean p2, p0, Lokio/PeekSource;->closed:Z

    .line 2
    const/4 p3, 0x1

    .line 4
    xor-int/2addr p2, p3

    .line 5
    if-eqz p2, :cond_9

    .line 6
    iget-object p2, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 8
    if-eqz p2, :cond_1

    .line 10
    iget-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 12
    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 14
    if-ne p2, v0, :cond_0

    .line 16
    iget p2, p0, Lokio/PeekSource;->expectedPos:I

    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    iget v0, v0, Lokio/Segment;->pos:I

    .line 23
    if-ne p2, v0, :cond_0

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    const/4 p3, 0x0

    .line 28
    :cond_1
    :goto_0
    if-eqz p3, :cond_8

    .line 29
    iget-object p2, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    .line 31
    iget-wide v0, p0, Lokio/PeekSource;->pos:J

    .line 33
    const-wide/16 v2, 0x1

    .line 35
    add-long/2addr v0, v2

    .line 37
    invoke-interface {p2, v0, v1}, Lokio/BufferedSource;->request(J)Z

    .line 38
    move-result p2

    .line 41
    if-nez p2, :cond_2

    .line 42
    const-wide/16 p0, -0x1

    .line 44
    return-wide p0

    .line 46
    :cond_2
    iget-object p2, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 47
    if-nez p2, :cond_3

    .line 49
    iget-object p2, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 51
    iget-object p2, p2, Lokio/Buffer;->head:Lokio/Segment;

    .line 53
    if-eqz p2, :cond_3

    .line 55
    iput-object p2, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 57
    iget p2, p2, Lokio/Segment;->pos:I

    .line 59
    iput p2, p0, Lokio/PeekSource;->expectedPos:I

    .line 61
    :cond_3
    iget-object p2, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 63
    iget-wide p2, p2, Lokio/Buffer;->size:J

    .line 65
    iget-wide v0, p0, Lokio/PeekSource;->pos:J

    .line 67
    sub-long/2addr p2, v0

    .line 69
    const-wide/16 v0, 0x2000

    .line 70
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    .line 72
    move-result-wide p2

    .line 75
    iget-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 76
    iget-wide v8, p0, Lokio/PeekSource;->pos:J

    .line 78
    iget-wide v2, v0, Lokio/Buffer;->size:J

    .line 80
    move-wide v4, v8

    .line 82
    move-wide v6, p2

    .line 83
    invoke-static/range {v2 .. v7}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 84
    const-wide/16 v1, 0x0

    .line 87
    cmp-long v3, p2, v1

    .line 89
    if-nez v3, :cond_4

    .line 91
    goto :goto_4

    .line 93
    :cond_4
    iget-wide v3, p1, Lokio/Buffer;->size:J

    .line 94
    add-long/2addr v3, p2

    .line 96
    iput-wide v3, p1, Lokio/Buffer;->size:J

    .line 97
    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 99
    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 101
    iget v3, v0, Lokio/Segment;->limit:I

    .line 104
    iget v4, v0, Lokio/Segment;->pos:I

    .line 106
    sub-int/2addr v3, v4

    .line 108
    int-to-long v3, v3

    .line 109
    cmp-long v5, v8, v3

    .line 110
    if-ltz v5, :cond_5

    .line 112
    sub-long/2addr v8, v3

    .line 114
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 115
    goto :goto_1

    .line 117
    :cond_5
    move-wide v3, p2

    .line 118
    :goto_2
    cmp-long v5, v3, v1

    .line 119
    if-lez v5, :cond_7

    .line 121
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 123
    invoke-virtual {v0}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    .line 126
    move-result-object v5

    .line 129
    iget v6, v5, Lokio/Segment;->pos:I

    .line 130
    long-to-int v7, v8

    .line 132
    add-int/2addr v6, v7

    .line 133
    iput v6, v5, Lokio/Segment;->pos:I

    .line 134
    long-to-int v7, v3

    .line 136
    add-int/2addr v6, v7

    .line 137
    iget v7, v5, Lokio/Segment;->limit:I

    .line 138
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 140
    move-result v6

    .line 143
    iput v6, v5, Lokio/Segment;->limit:I

    .line 144
    iget-object v6, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 146
    if-nez v6, :cond_6

    .line 148
    iput-object v5, v5, Lokio/Segment;->prev:Lokio/Segment;

    .line 150
    iput-object v5, v5, Lokio/Segment;->next:Lokio/Segment;

    .line 152
    iput-object v5, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 154
    goto :goto_3

    .line 156
    :cond_6
    iget-object v6, v6, Lokio/Segment;->prev:Lokio/Segment;

    .line 157
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 159
    invoke-virtual {v6, v5}, Lokio/Segment;->push(Lokio/Segment;)V

    .line 162
    :goto_3
    iget v6, v5, Lokio/Segment;->limit:I

    .line 165
    iget v5, v5, Lokio/Segment;->pos:I

    .line 167
    sub-int/2addr v6, v5

    .line 169
    int-to-long v5, v6

    .line 170
    sub-long/2addr v3, v5

    .line 171
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 172
    move-wide v8, v1

    .line 174
    goto :goto_2

    .line 175
    :cond_7
    :goto_4
    iget-wide v0, p0, Lokio/PeekSource;->pos:J

    .line 176
    add-long/2addr v0, p2

    .line 178
    iput-wide v0, p0, Lokio/PeekSource;->pos:J

    .line 179
    return-wide p2

    .line 181
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 182
    const-string p1, "Peek source is invalid because upstream source was used"

    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 186
    move-result-object p1

    .line 189
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 190
    throw p0

    .line 193
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 194
    const-string p1, "closed"

    .line 196
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 198
    move-result-object p1

    .line 201
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 202
    throw p0
.end method
