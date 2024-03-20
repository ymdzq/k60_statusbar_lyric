.class public final Lcom/google/protobuf/LazyStringArrayList;
.super Lcom/google/protobuf/AbstractProtobufList;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/google/protobuf/LazyStringList;
.implements Ljava/util/RandomAccess;


# instance fields
.field public final list:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    .line 2
    const/16 v1, 0xa

    .line 4
    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(I)V

    .line 6
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    .line 10
    return-void
    .line 12
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/AbstractProtobufList;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final add(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 3
    instance-of v0, p2, Lcom/google/protobuf/LazyStringList;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object p2

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    .line 5
    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/LazyStringArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/LazyStringArrayList;->addAll(ILjava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final clear()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 12
    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 14
    return-void
    .line 16
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    instance-of v1, v0, Ljava/lang/String;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    check-cast v0, Ljava/lang/String;

    .line 12
    goto :goto_1

    .line 14
    :cond_0
    instance-of v1, v0, Lcom/google/protobuf/ByteString;

    .line 15
    if-eqz v1, :cond_1

    .line 17
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 19
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 24
    check-cast v0, Lcom/google/protobuf/ByteString$LiteralByteString;

    .line 25
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    .line 27
    move-result v2

    .line 30
    iget-object v3, v0, Lcom/google/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 31
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString$LiteralByteString;->size()I

    .line 33
    move-result v0

    .line 36
    add-int/2addr v0, v2

    .line 37
    sget-object v4, Lcom/google/protobuf/Utf8;->processor:Lcom/google/protobuf/Utf8$SafeProcessor;

    .line 38
    invoke-virtual {v4, v3, v2, v0}, Lcom/google/protobuf/Utf8$Processor;->isValidUtf8([BII)Z

    .line 40
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    iget-object p0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 46
    invoke-interface {p0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 48
    goto :goto_0

    .line 51
    :cond_1
    check-cast v0, [B

    .line 52
    new-instance v1, Ljava/lang/String;

    .line 54
    sget-object v2, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 56
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 58
    sget-object v2, Lcom/google/protobuf/Utf8;->processor:Lcom/google/protobuf/Utf8$SafeProcessor;

    .line 61
    array-length v3, v0

    .line 63
    const/4 v4, 0x0

    .line 64
    invoke-virtual {v2, v0, v4, v3}, Lcom/google/protobuf/Utf8$Processor;->isValidUtf8([BII)Z

    .line 65
    move-result v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    iget-object p0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 71
    invoke-interface {p0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_2
    :goto_0
    move-object v0, v1

    .line 76
    :goto_1
    return-object v0
    .line 77
.end method

.method public final getRaw(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getUnderlyingElements()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 2
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getUnmodifiableView()Lcom/google/protobuf/LazyStringList;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/protobuf/UnmodifiableLazyStringList;

    .line 6
    invoke-direct {v0, p0}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    .line 8
    return-object v0

    .line 11
    :cond_0
    return-object p0
    .line 12
.end method

.method public final mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/LazyStringArrayList;->size()I

    .line 2
    move-result v0

    .line 5
    if-lt p1, v0, :cond_0

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    iget-object p0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 13
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 15
    new-instance p0, Lcom/google/protobuf/LazyStringArrayList;

    .line 18
    invoke-direct {p0, v0}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/ArrayList;)V

    .line 20
    return-object p0

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 24
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 26
    throw p0
    .line 29
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 10
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 13
    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 15
    instance-of p0, p1, Ljava/lang/String;

    .line 17
    if-eqz p0, :cond_0

    .line 19
    check-cast p1, Ljava/lang/String;

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    instance-of p0, p1, Lcom/google/protobuf/ByteString;

    .line 24
    if-eqz p0, :cond_1

    .line 26
    check-cast p1, Lcom/google/protobuf/ByteString;

    .line 28
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    check-cast p1, [B

    .line 35
    new-instance p0, Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 39
    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 41
    move-object p1, p0

    .line 44
    :goto_0
    return-object p1
    .line 45
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 4
    iget-object p0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 7
    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 12
    instance-of p1, p0, Ljava/lang/String;

    .line 13
    if-eqz p1, :cond_0

    .line 15
    check-cast p0, Ljava/lang/String;

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    instance-of p1, p0, Lcom/google/protobuf/ByteString;

    .line 20
    if-eqz p1, :cond_1

    .line 22
    check-cast p0, Lcom/google/protobuf/ByteString;

    .line 24
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    check-cast p0, [B

    .line 31
    new-instance p1, Ljava/lang/String;

    .line 33
    sget-object p2, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 35
    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 37
    move-object p0, p1

    .line 40
    :goto_0
    return-object p0
    .line 41
.end method

.method public final size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method
