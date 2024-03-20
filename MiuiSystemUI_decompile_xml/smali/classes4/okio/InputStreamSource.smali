.class public final Lokio/InputStreamSource;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lokio/Source;


# instance fields
.field public final input:Ljava/io/InputStream;

.field public final timeout:Lokio/Timeout;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lokio/Timeout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokio/InputStreamSource;->input:Ljava/io/InputStream;

    .line 5
    iput-object p2, p0, Lokio/InputStreamSource;->timeout:Lokio/Timeout;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/InputStreamSource;->input:Ljava/io/InputStream;

    .line 2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 4
    return-void
    .line 7
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 4

    .line 1
    const/4 p2, 0x1

    .line 2
    :try_start_0
    iget-object p3, p0, Lokio/InputStreamSource;->timeout:Lokio/Timeout;

    .line 3
    invoke-virtual {p3}, Lokio/Timeout;->throwIfReached()V

    .line 5
    invoke-virtual {p1, p2}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    .line 8
    move-result-object p3

    .line 11
    iget v0, p3, Lokio/Segment;->limit:I

    .line 12
    rsub-int v0, v0, 0x2000

    .line 14
    int-to-long v0, v0

    .line 16
    const-wide/16 v2, 0x2000

    .line 17
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 19
    move-result-wide v0

    .line 22
    long-to-int v0, v0

    .line 23
    iget-object p0, p0, Lokio/InputStreamSource;->input:Ljava/io/InputStream;

    .line 24
    iget-object v1, p3, Lokio/Segment;->data:[B

    .line 26
    iget v2, p3, Lokio/Segment;->limit:I

    .line 28
    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    .line 30
    move-result p0

    .line 33
    const/4 v0, -0x1

    .line 34
    if-ne p0, v0, :cond_1

    .line 35
    iget p0, p3, Lokio/Segment;->pos:I

    .line 37
    iget v0, p3, Lokio/Segment;->limit:I

    .line 39
    if-ne p0, v0, :cond_0

    .line 41
    invoke-virtual {p3}, Lokio/Segment;->pop()Lokio/Segment;

    .line 43
    move-result-object p0

    .line 46
    iput-object p0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 47
    invoke-static {p3}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 49
    :cond_0
    const-wide/16 p0, -0x1

    .line 52
    return-wide p0

    .line 54
    :cond_1
    iget v0, p3, Lokio/Segment;->limit:I

    .line 55
    add-int/2addr v0, p0

    .line 57
    iput v0, p3, Lokio/Segment;->limit:I

    .line 58
    iget-wide v0, p1, Lokio/Buffer;->size:J

    .line 60
    int-to-long v2, p0

    .line 62
    add-long/2addr v0, v2

    .line 63
    iput-wide v0, p1, Lokio/Buffer;->size:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-wide v2

    .line 66
    :catch_0
    move-exception p0

    .line 67
    sget p1, Lokio/Okio__JvmOkioKt;->$r8$clinit:I

    .line 68
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    .line 70
    move-result-object p1

    .line 73
    const/4 p3, 0x0

    .line 74
    if-eqz p1, :cond_3

    .line 75
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 80
    if-eqz p1, :cond_2

    .line 81
    const-string v0, "getsockname failed"

    .line 83
    invoke-static {p1, v0}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 85
    move-result p1

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    move p1, p3

    .line 90
    :goto_0
    if-eqz p1, :cond_3

    .line 91
    goto :goto_1

    .line 93
    :cond_3
    move p2, p3

    .line 94
    :goto_1
    if-eqz p2, :cond_4

    .line 95
    new-instance p1, Ljava/io/IOException;

    .line 97
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 99
    throw p1

    .line 102
    :cond_4
    throw p0
    .line 103
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lokio/InputStreamSource;->input:Ljava/io/InputStream;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    const-string v1, "source("

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string p0, ")"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    return-object p0
    .line 23
.end method
