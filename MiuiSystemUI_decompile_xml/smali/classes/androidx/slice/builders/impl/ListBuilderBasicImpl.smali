.class public final Landroidx/slice/builders/impl/ListBuilderBasicImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/slice/builders/impl/ListBuilder;


# instance fields
.field public mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

.field public mSliceAction:Landroidx/slice/builders/SliceAction;

.field public mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroidx/slice/Slice$Builder;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    .line 12
    if-nez v0, :cond_1

    .line 14
    iget-object p1, p1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    .line 16
    if-eqz p1, :cond_1

    .line 18
    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    .line 20
    :cond_1
    return-void
    .line 22
.end method

.method public final apply(Landroidx/slice/Slice$Builder;)V
    .locals 7

    .line 1
    new-instance v0, Landroidx/slice/Slice$Builder;

    .line 2
    iget-object v1, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    .line 4
    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 6
    iget-object v1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    .line 9
    if-eqz v1, :cond_2

    .line 11
    iget-object v2, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    .line 13
    iget-object v3, v1, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    .line 15
    if-nez v2, :cond_0

    .line 17
    iget-object v2, v3, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    .line 19
    if-eqz v2, :cond_0

    .line 21
    iput-object v2, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    .line 23
    :cond_0
    iget-object v2, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

    .line 25
    if-nez v2, :cond_1

    .line 27
    iget-object v2, v3, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 29
    if-eqz v2, :cond_1

    .line 31
    iput-object v2, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

    .line 33
    :cond_1
    invoke-virtual {v1, v0}, Landroidx/slice/builders/SliceAction;->setPrimaryAction(Landroidx/slice/Slice$Builder;)V

    .line 35
    :cond_2
    iget-object v1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    .line 38
    const-string/jumbo v2, "title"

    .line 40
    const/4 v3, 0x0

    .line 43
    if-eqz v1, :cond_3

    .line 44
    new-instance v4, Landroidx/slice/SliceItem;

    .line 46
    const-string/jumbo v5, "text"

    .line 48
    filled-new-array {v2}, [Ljava/lang/String;

    .line 51
    move-result-object v6

    .line 54
    invoke-direct {v4, v1, v5, v3, v6}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v4}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)V

    .line 58
    :cond_3
    iget-object p0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

    .line 61
    if-eqz p0, :cond_4

    .line 63
    filled-new-array {v2}, [Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 68
    invoke-virtual {p1, p0, v3, v1}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)V

    .line 69
    :cond_4
    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    .line 72
    move-result-object p0

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    invoke-virtual {p1, p0, v3}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)V

    .line 79
    return-void
    .line 82
.end method

.method public final setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)V
    .locals 0

    .line 1
    iget-object p1, p1, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    .line 6
    :cond_0
    return-void
    .line 8
.end method

.method public final setTtl()V
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    .line 2
    const-string/jumbo v0, "ttl"

    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 10
    iget-object p0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    .line 11
    new-instance v1, Landroidx/slice/SliceItem;

    .line 13
    const-wide/16 v2, -0x1

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    move-result-object v2

    .line 20
    const-string v3, "long"

    .line 21
    const-string v4, "millis"

    .line 23
    invoke-direct {v1, v2, v3, v4, v0}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
    .line 31
.end method
