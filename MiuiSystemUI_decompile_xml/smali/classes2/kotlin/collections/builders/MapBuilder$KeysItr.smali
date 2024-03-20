.class public final Lkotlin/collections/builders/MapBuilder$KeysItr;
.super Lkotlin/collections/builders/MapBuilder$Itr;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(Lkotlin/collections/builders/MapBuilder;I)V
    .locals 1

    .line 1
    iput p2, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p2, v0, :cond_1

    .line 5
    const/4 v0, 0x2

    .line 7
    if-eq p2, v0, :cond_0

    .line 8
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder$Itr;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    .line 10
    return-void

    .line 13
    :cond_0
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder$Itr;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    .line 14
    return-void

    .line 17
    :cond_1
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder$Itr;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    .line 18
    return-void
    .line 21
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->$r8$classId:I

    .line 2
    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    .line 10
    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I

    .line 12
    move-result v2

    .line 15
    if-ge v0, v2, :cond_0

    .line 16
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    .line 18
    add-int/lit8 v2, v0, 0x1

    .line 20
    iput v2, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    .line 22
    iput v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    .line 24
    new-instance v2, Lkotlin/collections/builders/MapBuilder$EntryRef;

    .line 26
    invoke-direct {v2, v1, v0}, Lkotlin/collections/builders/MapBuilder$EntryRef;-><init>(Lkotlin/collections/builders/MapBuilder;I)V

    .line 28
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$Itr;->initNext$kotlin_stdlib()V

    .line 31
    return-object v2

    .line 34
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 35
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 37
    throw p0

    .line 40
    :pswitch_1
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    .line 41
    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I

    .line 43
    move-result v2

    .line 46
    if-ge v0, v2, :cond_1

    .line 47
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    .line 49
    add-int/lit8 v2, v0, 0x1

    .line 51
    iput v2, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    .line 53
    iput v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    .line 55
    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getKeysArray$p(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    .line 57
    move-result-object v0

    .line 60
    iget v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    .line 61
    aget-object v0, v0, v1

    .line 63
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$Itr;->initNext$kotlin_stdlib()V

    .line 65
    return-object v0

    .line 68
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 69
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 71
    throw p0

    .line 74
    :goto_0
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    .line 75
    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getLength$p(Lkotlin/collections/builders/MapBuilder;)I

    .line 77
    move-result v2

    .line 80
    if-ge v0, v2, :cond_2

    .line 81
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    .line 83
    add-int/lit8 v2, v0, 0x1

    .line 85
    iput v2, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    .line 87
    iput v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    .line 89
    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->access$getValuesArray$p(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    .line 91
    move-result-object v0

    .line 94
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    iget v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    .line 98
    aget-object v0, v0, v1

    .line 100
    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$Itr;->initNext$kotlin_stdlib()V

    .line 102
    return-object v0

    .line 105
    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 106
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 108
    throw p0

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 112
.end method
