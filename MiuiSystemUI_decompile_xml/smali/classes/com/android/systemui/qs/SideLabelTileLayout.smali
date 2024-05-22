.class public Lcom/android/systemui/qs/SideLabelTileLayout;
.super Lcom/android/systemui/qs/TileLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/TileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public bridge synthetic setExpansion(FF)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic setLogger(Lcom/android/systemui/qs/logging/QSLogger;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updateMaxRows(II)Z
    .locals 4

    .line 1
    iget p1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 2
    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    .line 4
    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 6
    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 8
    add-int v2, p2, v1

    .line 10
    const/4 v3, 0x1

    .line 12
    sub-int/2addr v2, v3

    .line 13
    div-int/2addr v2, v1

    .line 14
    if-le v0, v2, :cond_0

    .line 15
    add-int/2addr p2, v1

    .line 17
    sub-int/2addr p2, v3

    .line 18
    div-int/2addr p2, v1

    .line 19
    iput p2, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 20
    :cond_0
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 22
    if-eq p1, p0, :cond_1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    const/4 v3, 0x0

    .line 27
    :goto_0
    return v3
    .line 28
.end method

.method public updateResources()Z
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v1

    .line 13
    const v2, 0x7f0b00f7    # @integer/quick_settings_max_rows '4'

    .line 14
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 17
    move-result v1

    .line 20
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    .line 21
    return v0
    .line 23
.end method

.method public final useSidePadding()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method
