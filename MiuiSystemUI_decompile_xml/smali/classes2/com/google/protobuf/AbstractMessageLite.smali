.class public abstract Lcom/google/protobuf/AbstractMessageLite;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/google/protobuf/MessageLite;


# instance fields
.field protected memoizedHashCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 6
    return-void
    .line 8
.end method

.method public static addAll(Ljava/lang/Iterable;Lcom/google/protobuf/Internal$ProtobufList;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of v0, p0, Lcom/google/protobuf/LazyStringList;

    .line 7
    const-string v1, " is null."

    .line 9
    const-string v2, "Element at index "

    .line 11
    if-eqz v0, :cond_3

    .line 13
    check-cast p0, Lcom/google/protobuf/LazyStringList;

    .line 15
    invoke-interface {p0}, Lcom/google/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    .line 17
    move-result-object p0

    .line 20
    move-object v0, p1

    .line 21
    check-cast v0, Lcom/google/protobuf/LazyStringList;

    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    move-result p1

    .line 27
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p0

    .line 31
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v3

    .line 35
    if-eqz v3, :cond_8

    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 41
    if-nez v3, :cond_1

    .line 42
    new-instance p0, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 49
    move-result v2

    .line 52
    sub-int/2addr v2, p1

    .line 53
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 64
    move-result v1

    .line 67
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 68
    if-lt v1, p1, :cond_0

    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 72
    goto :goto_1

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 76
    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 78
    throw p1

    .line 81
    :cond_1
    instance-of v4, v3, Lcom/google/protobuf/ByteString;

    .line 82
    if-eqz v4, :cond_2

    .line 84
    check-cast v3, Lcom/google/protobuf/ByteString;

    .line 86
    invoke-interface {v0, v3}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 88
    goto :goto_0

    .line 91
    :cond_2
    check-cast v3, Ljava/lang/String;

    .line 92
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    goto :goto_0

    .line 97
    :cond_3
    instance-of v0, p0, Lcom/google/protobuf/PrimitiveNonBoxingCollection;

    .line 98
    if-eqz v0, :cond_4

    .line 100
    check-cast p0, Ljava/util/Collection;

    .line 102
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    goto :goto_4

    .line 107
    :cond_4
    instance-of v0, p1, Ljava/util/ArrayList;

    .line 108
    if-eqz v0, :cond_5

    .line 110
    instance-of v0, p0, Ljava/util/Collection;

    .line 112
    if-eqz v0, :cond_5

    .line 114
    move-object v0, p1

    .line 116
    check-cast v0, Ljava/util/ArrayList;

    .line 117
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 119
    move-result v3

    .line 122
    move-object v4, p0

    .line 123
    check-cast v4, Ljava/util/Collection;

    .line 124
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 126
    move-result v4

    .line 129
    add-int/2addr v4, v3

    .line 130
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 131
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 134
    move-result v0

    .line 137
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 138
    move-result-object p0

    .line 141
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    move-result v3

    .line 145
    if-eqz v3, :cond_8

    .line 146
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    move-result-object v3

    .line 151
    if-nez v3, :cond_7

    .line 152
    new-instance p0, Ljava/lang/StringBuilder;

    .line 154
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 159
    move-result v2

    .line 162
    sub-int/2addr v2, v0

    .line 163
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object p0

    .line 173
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 174
    move-result v1

    .line 177
    :goto_3
    add-int/lit8 v1, v1, -0x1

    .line 178
    if-lt v1, v0, :cond_6

    .line 180
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 182
    goto :goto_3

    .line 185
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    .line 186
    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 188
    throw p1

    .line 191
    :cond_7
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    goto :goto_2

    .line 195
    :cond_8
    :goto_4
    return-void
    .line 196
.end method


# virtual methods
.method public abstract getSerializedSize(Lcom/google/protobuf/Schema;)I
.end method

.method public final toByteArray()[B
    .locals 4

    .line 1
    :try_start_0
    move-object v0, p0

    .line 2
    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 3
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMessageLite;->getSerializedSize(Lcom/google/protobuf/Schema;)I

    .line 6
    move-result v0

    .line 9
    new-array v1, v0, [B

    .line 10
    new-instance v2, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;

    .line 12
    invoke-direct {v2, v1, v0}, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;-><init>([BI)V

    .line 14
    move-object v0, p0

    .line 17
    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    .line 18
    invoke-virtual {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;)V

    .line 20
    iget v0, v2, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    .line 23
    iget v2, v2, Lcom/google/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 25
    sub-int/2addr v0, v2

    .line 27
    if-nez v0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    const-string v1, "Did not write as much data as expected."

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    new-instance v1, Ljava/lang/RuntimeException;

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    const-string v3, "Serializing "

    .line 44
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 56
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string p0, " to a byte array threw an IOException (should never happen)."

    .line 60
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 68
    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    throw v1
    .line 72
.end method
