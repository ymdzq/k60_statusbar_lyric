.class final Lkotlin/collections/builders/SerializedMap;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private map:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/collections/builders/SerializedMap;->map:Ljava/util/Map;

    .line 5
    return-void
    .line 7
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/collections/builders/SerializedMap;->map:Ljava/util/Map;

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
    if-nez v0, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    .line 8
    move-result v0

    .line 11
    if-ltz v0, :cond_1

    .line 12
    new-instance v1, Lkotlin/collections/builders/MapBuilder;

    .line 14
    invoke-direct {v1, v0}, Lkotlin/collections/builders/MapBuilder;-><init>(I)V

    .line 16
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v2, v0, :cond_0

    .line 20
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 25
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 29
    invoke-virtual {v1, v3, v4}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v1}, Lkotlin/collections/builders/MapBuilder;->build$1()V

    .line 36
    iput-object v1, p0, Lkotlin/collections/builders/SerializedMap;->map:Ljava/util/Map;

    .line 39
    return-void

    .line 41
    :cond_1
    new-instance p0, Ljava/io/InvalidObjectException;

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    const-string v1, "Illegal size value: "

    .line 46
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const/16 v0, 0x2e

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 62
    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p0

    .line 66
    :cond_2
    new-instance p0, Ljava/io/InvalidObjectException;

    .line 67
    const-string p1, "Unsupported flags value: "

    .line 69
    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 74
    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 75
    throw p0
    .line 78
.end method

.method public final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 3
    iget-object v0, p0, Lkotlin/collections/builders/SerializedMap;->map:Ljava/util/Map;

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 8
    move-result v0

    .line 11
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 12
    iget-object p0, p0, Lkotlin/collections/builders/SerializedMap;->map:Ljava/util/Map;

    .line 15
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 17
    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p0

    .line 24
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 34
    check-cast v0, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 40
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 47
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 48
    goto :goto_0

    .line 51
    :cond_0
    return-void
    .line 52
.end method
