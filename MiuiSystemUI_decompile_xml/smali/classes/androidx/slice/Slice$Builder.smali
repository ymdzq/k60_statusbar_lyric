.class public final Landroidx/slice/Slice$Builder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mChildId:I

.field public final mHints:Ljava/util/ArrayList;

.field public final mItems:Ljava/util/ArrayList;

.field public mSpec:Landroidx/slice/SliceSpec;

.field public final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/Slice$Builder;->mHints:Ljava/util/ArrayList;

    .line 4
    iput-object p1, p0, Landroidx/slice/Slice$Builder;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroidx/slice/Slice$Builder;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/Slice$Builder;->mHints:Ljava/util/ArrayList;

    .line 8
    iget-object v0, p1, Landroidx/slice/Slice$Builder;->mUri:Landroid/net/Uri;

    .line 9
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "_gen"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p1, Landroidx/slice/Slice$Builder;->mChildId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Landroidx/slice/Slice$Builder;->mChildId:I

    .line 10
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 11
    iput-object p1, p0, Landroidx/slice/Slice$Builder;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget-object v0, p2, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    .line 8
    iget-object p0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    .line 10
    new-instance v1, Landroidx/slice/SliceItem;

    .line 12
    invoke-direct {v1, p1, p2, p3, v0}, Landroidx/slice/SliceItem;-><init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
    .line 20
.end method

.method public final varargs addHints([Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/slice/Slice$Builder;->mHints:Ljava/util/ArrayList;

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    return-void
    .line 11
.end method

.method public final varargs addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {p1}, Landroidx/slice/Slice;->isValidIcon(Landroidx/core/graphics/drawable/IconCompat;)Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    iget-object p0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Landroidx/slice/SliceItem;

    .line 13
    const-string v1, "image"

    .line 15
    invoke-direct {v0, p1, v1, p2, p3}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_0
    return-void
    .line 23
.end method

.method public final varargs addInt(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    .line 2
    new-instance v0, Landroidx/slice/SliceItem;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 9
    const-string v1, "int"

    .line 10
    invoke-direct {v0, p1, v1, p2, p3}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
    .line 18
.end method

.method public final addItem(Landroidx/slice/SliceItem;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public final varargs addLong(JLjava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    .line 2
    new-instance v0, Landroidx/slice/SliceItem;

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    move-result-object p1

    .line 9
    const-string p2, "long"

    .line 10
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
    .line 18
.end method

.method public final addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object p0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Landroidx/slice/SliceItem;

    .line 7
    iget-object v1, p1, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    .line 9
    const-string/jumbo v2, "slice"

    .line 11
    invoke-direct {v0, p1, v2, p2, v1}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
    .line 20
.end method

.method public final varargs addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    .line 2
    new-instance v0, Landroidx/slice/SliceItem;

    .line 4
    const-string/jumbo v1, "text"

    .line 6
    invoke-direct {v0, p1, v1, p2, p3}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    return-void
    .line 15
.end method

.method public final build()Landroidx/slice/Slice;
    .locals 4

    .line 1
    new-instance v0, Landroidx/slice/Slice;

    .line 2
    iget-object v1, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    .line 4
    iget-object v2, p0, Landroidx/slice/Slice$Builder;->mHints:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v3

    .line 11
    new-array v3, v3, [Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 17
    check-cast v2, [Ljava/lang/String;

    .line 18
    iget-object v3, p0, Landroidx/slice/Slice$Builder;->mUri:Landroid/net/Uri;

    .line 20
    iget-object p0, p0, Landroidx/slice/Slice$Builder;->mSpec:Landroidx/slice/SliceSpec;

    .line 22
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/slice/Slice;-><init>(Ljava/util/ArrayList;[Ljava/lang/String;Landroid/net/Uri;Landroidx/slice/SliceSpec;)V

    .line 24
    return-object v0
    .line 27
.end method
