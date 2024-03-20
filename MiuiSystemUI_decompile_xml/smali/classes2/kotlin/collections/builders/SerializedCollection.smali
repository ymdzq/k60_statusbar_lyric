.class public final Lkotlin/collections/builders/SerializedCollection;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private collection:Ljava/util/Collection;

.field private final tag:I


# direct methods
.method public constructor <init>(ILjava/util/Collection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lkotlin/collections/builders/SerializedCollection;->collection:Ljava/util/Collection;

    .line 5
    iput p1, p0, Lkotlin/collections/builders/SerializedCollection;->tag:I

    .line 7
    return-void
    .line 9
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/collections/builders/SerializedCollection;->collection:Ljava/util/Collection;

    .line 2
    return-object p0
    .line 4
.end method


# virtual methods
.method public final readExternal(Ljava/io/ObjectInput;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    .line 2
    move-result v0

    .line 5
    and-int/lit8 v1, v0, 0x1

    .line 6
    and-int/lit8 v2, v0, -0x2

    .line 8
    const/16 v3, 0x2e

    .line 10
    if-nez v2, :cond_5

    .line 12
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    .line 14
    move-result v0

    .line 17
    if-ltz v0, :cond_4

    .line 18
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_2

    .line 21
    const/4 v4, 0x1

    .line 23
    if-ne v1, v4, :cond_1

    .line 24
    new-instance v1, Lkotlin/collections/builders/SetBuilder;

    .line 26
    invoke-direct {v1, v0}, Lkotlin/collections/builders/SetBuilder;-><init>(I)V

    .line 28
    :goto_0
    if-ge v2, v0, :cond_0

    .line 31
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 36
    invoke-virtual {v1, v3}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 40
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v1}, Lkotlin/collections/builders/SetBuilder;->build$2()V

    .line 43
    goto :goto_2

    .line 46
    :cond_1
    new-instance p0, Ljava/io/InvalidObjectException;

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    const-string v0, "Unsupported collection type tag: "

    .line 51
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 66
    throw p0

    .line 69
    :cond_2
    new-instance v1, Lkotlin/collections/builders/ListBuilder;

    .line 70
    invoke-direct {v1, v0}, Lkotlin/collections/builders/ListBuilder;-><init>(I)V

    .line 72
    :goto_1
    if-ge v2, v0, :cond_3

    .line 75
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    .line 77
    move-result-object v3

    .line 80
    invoke-virtual {v1, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 84
    goto :goto_1

    .line 86
    :cond_3
    invoke-virtual {v1}, Lkotlin/collections/builders/ListBuilder;->build()V

    .line 87
    :goto_2
    iput-object v1, p0, Lkotlin/collections/builders/SerializedCollection;->collection:Ljava/util/Collection;

    .line 90
    return-void

    .line 92
    :cond_4
    new-instance p0, Ljava/io/InvalidObjectException;

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    .line 95
    const-string v1, "Illegal size value: "

    .line 97
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object p1

    .line 111
    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 112
    throw p0

    .line 115
    :cond_5
    new-instance p0, Ljava/io/InvalidObjectException;

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    const-string v1, "Unsupported flags value: "

    .line 120
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object p1

    .line 134
    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 135
    throw p0
    .line 138
.end method

.method public final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/collections/builders/SerializedCollection;->tag:I

    .line 2
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 4
    iget-object v0, p0, Lkotlin/collections/builders/SerializedCollection;->collection:Ljava/util/Collection;

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 9
    move-result v0

    .line 12
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 13
    iget-object p0, p0, Lkotlin/collections/builders/SerializedCollection;->collection:Ljava/util/Collection;

    .line 16
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 31
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 32
    goto :goto_0

    .line 35
    :cond_0
    return-void
    .line 36
.end method
