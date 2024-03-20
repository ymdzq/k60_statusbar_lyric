.class public Lcom/google/gson/stream/JsonWriter;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field public static final HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

.field public static final REPLACEMENT_CHARS:[Ljava/lang/String;

.field public static final VALID_JSON_NUMBER_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public deferredName:Ljava/lang/String;

.field public htmlSafe:Z

.field public indent:Ljava/lang/String;

.field public lenient:Z

.field public final out:Ljava/io/Writer;

.field public separator:Ljava/lang/String;

.field public serializeNulls:Z

.field public stack:[I

.field public stackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/gson/stream/JsonWriter;->VALID_JSON_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 8
    const/16 v0, 0x80

    .line 10
    new-array v0, v0, [Ljava/lang/String;

    .line 12
    sput-object v0, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    .line 16
    :goto_0
    const/16 v1, 0x1f

    .line 17
    if-gt v0, v1, :cond_0

    .line 19
    sget-object v1, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v2

    .line 26
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 30
    const-string v3, "\\u%04x"

    .line 31
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 36
    aput-object v2, v1, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 39
    goto :goto_0

    .line 41
    :cond_0
    sget-object v0, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 42
    const/16 v1, 0x22

    .line 44
    const-string v2, "\\\""

    .line 46
    aput-object v2, v0, v1

    .line 48
    const/16 v1, 0x5c

    .line 50
    const-string v2, "\\\\"

    .line 52
    aput-object v2, v0, v1

    .line 54
    const/16 v1, 0x9

    .line 56
    const-string v2, "\\t"

    .line 58
    aput-object v2, v0, v1

    .line 60
    const/16 v1, 0x8

    .line 62
    const-string v2, "\\b"

    .line 64
    aput-object v2, v0, v1

    .line 66
    const/16 v1, 0xa

    .line 68
    const-string v2, "\\n"

    .line 70
    aput-object v2, v0, v1

    .line 72
    const/16 v1, 0xd

    .line 74
    const-string v2, "\\r"

    .line 76
    aput-object v2, v0, v1

    .line 78
    const/16 v1, 0xc

    .line 80
    const-string v2, "\\f"

    .line 82
    aput-object v2, v0, v1

    .line 84
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 86
    move-result-object v0

    .line 89
    check-cast v0, [Ljava/lang/String;

    .line 90
    sput-object v0, Lcom/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 92
    const/16 v1, 0x3c

    .line 94
    const-string v2, "\\u003c"

    .line 96
    aput-object v2, v0, v1

    .line 98
    const/16 v1, 0x3e

    .line 100
    const-string v2, "\\u003e"

    .line 102
    aput-object v2, v0, v1

    .line 104
    const/16 v1, 0x26

    .line 106
    const-string v2, "\\u0026"

    .line 108
    aput-object v2, v0, v1

    .line 110
    const/16 v1, 0x3d

    .line 112
    const-string v2, "\\u003d"

    .line 114
    aput-object v2, v0, v1

    .line 116
    const/16 v1, 0x27

    .line 118
    const-string v2, "\\u0027"

    .line 120
    aput-object v2, v0, v1

    .line 122
    return-void
    .line 124
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/16 v0, 0x20

    .line 5
    new-array v0, v0, [I

    .line 7
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 9
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 12
    array-length v2, v0

    .line 14
    if-nez v2, :cond_0

    .line 15
    mul-int/lit8 v1, v1, 0x2

    .line 17
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 19
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 25
    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 27
    add-int/lit8 v2, v1, 0x1

    .line 29
    iput v2, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 31
    const/4 v2, 0x6

    .line 33
    aput v2, v0, v1

    .line 34
    const-string v0, ":"

    .line 36
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    .line 38
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    .line 41
    const-string v0, "out == null"

    .line 43
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 48
    return-void
    .line 50
.end method


# virtual methods
.method public final beforeValue()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->peek()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v1, :cond_5

    .line 8
    if-eq v0, v2, :cond_4

    .line 10
    const/4 v1, 0x4

    .line 12
    if-eq v0, v1, :cond_3

    .line 13
    const/4 v1, 0x6

    .line 15
    const/4 v2, 0x7

    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    if-ne v0, v2, :cond_1

    .line 19
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    .line 21
    if-eqz v0, :cond_0

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 26
    const-string v0, "JSON must have only one top-level value."

    .line 28
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 34
    const-string v0, "Nesting problem."

    .line 36
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p0

    .line 41
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 42
    iget p0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 44
    add-int/lit8 p0, p0, -0x1

    .line 46
    aput v2, v0, p0

    .line 48
    goto :goto_1

    .line 50
    :cond_3
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 51
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    .line 53
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 55
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 58
    iget p0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 60
    add-int/lit8 p0, p0, -0x1

    .line 62
    const/4 v1, 0x5

    .line 64
    aput v1, v0, p0

    .line 65
    goto :goto_1

    .line 67
    :cond_4
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 68
    const/16 v1, 0x2c

    .line 70
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 72
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    .line 75
    goto :goto_1

    .line 78
    :cond_5
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 79
    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 81
    add-int/lit8 v1, v1, -0x1

    .line 83
    aput v2, v0, v1

    .line 85
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    .line 87
    :goto_1
    return-void
    .line 90
.end method

.method public beginArray()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 2
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 5
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 8
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 10
    array-length v2, v1

    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    mul-int/lit8 v0, v0, 0x2

    .line 15
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 17
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 23
    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 25
    add-int/lit8 v2, v1, 0x1

    .line 27
    iput v2, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 29
    const/4 v2, 0x1

    .line 31
    aput v2, v0, v1

    .line 32
    iget-object p0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 34
    const/16 v0, 0x5b

    .line 36
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 38
    return-void
    .line 41
.end method

.method public beginObject()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 2
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 5
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 8
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 10
    array-length v2, v1

    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    mul-int/lit8 v0, v0, 0x2

    .line 15
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 17
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 23
    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 25
    add-int/lit8 v2, v1, 0x1

    .line 27
    iput v2, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 29
    const/4 v2, 0x3

    .line 31
    aput v2, v0, v1

    .line 32
    iget-object p0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 34
    const/16 v0, 0x7b

    .line 36
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 38
    return-void
    .line 41
.end method

.method public close()V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 9
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    .line 10
    iget-object v2, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    sub-int/2addr v0, v1

    aget v0, v2, v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Incomplete document"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final close(IIC)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->peek()I

    move-result v0

    if-eq v0, p2, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Nesting problem."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 4
    iget p1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    if-ne v0, p2, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    .line 6
    :cond_2
    iget-object p0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {p0, p3}, Ljava/io/Writer;->write(I)V

    return-void

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Dangling name: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public endArray()V
    .locals 3

    .line 1
    const/16 v0, 0x5d

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/gson/stream/JsonWriter;->close(IIC)V

    .line 6
    return-void
    .line 9
.end method

.method public endObject()V
    .locals 3

    .line 1
    const/16 v0, 0x7d

    .line 2
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x5

    .line 5
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/gson/stream/JsonWriter;->close(IIC)V

    .line 6
    return-void
    .line 9
.end method

.method public flush()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 6
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 8
    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 12
    const-string v0, "JsonWriter is closed."

    .line 14
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p0
    .line 19
.end method

.method public name(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "name == null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 7
    if-nez v0, :cond_1

    .line 9
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 15
    return-void

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 18
    const-string p1, "JsonWriter is closed."

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p0

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 26
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 28
    throw p0
    .line 31
.end method

.method public final newline()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 7
    const/16 v1, 0xa

    .line 9
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 11
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 14
    const/4 v1, 0x1

    .line 16
    :goto_0
    if-ge v1, v0, :cond_1

    .line 17
    iget-object v2, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 19
    iget-object v3, p0, Lcom/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    .line 21
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    return-void
    .line 29
.end method

.method public nullValue()Lcom/google/gson/stream/JsonWriter;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 15
    return-object p0

    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 18
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 21
    const-string v1, "null"

    .line 23
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 25
    return-object p0
    .line 28
.end method

.method public final peek()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 8
    aget p0, p0, v0

    .line 10
    return p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 13
    const-string v0, "JsonWriter is closed."

    .line 15
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p0
    .line 20
.end method

.method public final string(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 11
    const/16 v2, 0x22

    .line 13
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    move-result v1

    .line 21
    const/4 v3, 0x0

    .line 22
    move v4, v3

    .line 23
    :goto_1
    if-ge v3, v1, :cond_6

    .line 24
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 26
    move-result v5

    .line 29
    const/16 v6, 0x80

    .line 30
    if-ge v5, v6, :cond_1

    .line 32
    aget-object v5, v0, v5

    .line 34
    if-nez v5, :cond_3

    .line 36
    goto :goto_3

    .line 38
    :cond_1
    const/16 v6, 0x2028

    .line 39
    if-ne v5, v6, :cond_2

    .line 41
    const-string v5, "\\u2028"

    .line 43
    goto :goto_2

    .line 45
    :cond_2
    const/16 v6, 0x2029

    .line 46
    if-ne v5, v6, :cond_5

    .line 48
    const-string v5, "\\u2029"

    .line 50
    :cond_3
    :goto_2
    if-ge v4, v3, :cond_4

    .line 52
    iget-object v6, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 54
    sub-int v7, v3, v4

    .line 56
    invoke-virtual {v6, p1, v4, v7}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 58
    :cond_4
    iget-object v4, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 61
    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 63
    add-int/lit8 v4, v3, 0x1

    .line 66
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 68
    goto :goto_1

    .line 70
    :cond_6
    if-ge v4, v1, :cond_7

    .line 71
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 73
    sub-int/2addr v1, v4

    .line 75
    invoke-virtual {v0, p1, v4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 76
    :cond_7
    iget-object p0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 79
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(I)V

    .line 81
    return-void
    .line 84
.end method

.method public value(D)V
    .locals 2

    .line 12
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 13
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Numeric values must be finite, but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 16
    iget-object p0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-void
.end method

.method public value(J)V
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 18
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 19
    iget-object p0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public value(Ljava/lang/Boolean;)V
    .locals 0

    if-nez p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 10
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 11
    iget-object p0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public value(Ljava/lang/Number;)V
    .locals 3

    if-nez p1, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-Infinity"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 24
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 25
    const-class v1, Ljava/lang/Integer;

    if-eq p1, v1, :cond_3

    const-class v1, Ljava/lang/Long;

    if-eq p1, v1, :cond_3

    const-class v1, Ljava/lang/Double;

    if-eq p1, v1, :cond_3

    const-class v1, Ljava/lang/Float;

    if-eq p1, v1, :cond_3

    const-class v1, Ljava/lang/Byte;

    if-eq p1, v1, :cond_3

    const-class v1, Ljava/lang/Short;

    if-eq p1, v1, :cond_3

    const-class v1, Ljava/math/BigDecimal;

    if-eq p1, v1, :cond_3

    const-class v1, Ljava/math/BigInteger;

    if-eq p1, v1, :cond_3

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eq p1, v1, :cond_3

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_6

    .line 26
    sget-object v1, Lcom/google/gson/stream/JsonWriter;->VALID_JSON_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    .line 27
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "String created by "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid JSON number: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_5
    :goto_2
    iget-boolean p1, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    if-eqz p1, :cond_7

    .line 29
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 30
    iget-object p0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-void

    .line 31
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Numeric values must be finite, but was "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public value(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 3
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    return-void
.end method

.method public value(Z)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 6
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 7
    iget-object p0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    if-eqz p1, :cond_0

    const-string/jumbo p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final writeDeferredName()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 2
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->peek()I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x5

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 13
    const/16 v1, 0x2c

    .line 15
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 17
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x3

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    .line 24
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 27
    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 29
    add-int/lit8 v1, v1, -0x1

    .line 31
    const/4 v2, 0x4

    .line 33
    aput v2, v0, v1

    .line 34
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 42
    goto :goto_1

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 45
    const-string v0, "Nesting problem."

    .line 47
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p0

    .line 52
    :cond_2
    :goto_1
    return-void
    .line 53
.end method
