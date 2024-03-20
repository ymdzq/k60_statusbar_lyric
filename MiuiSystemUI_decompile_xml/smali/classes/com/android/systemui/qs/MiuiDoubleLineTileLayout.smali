.class public final Lcom/android/systemui/qs/MiuiDoubleLineTileLayout;
.super Landroid/view/ViewGroup;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;


# instance fields
.field public _listening:Z

.field public cellMarginHorizontal:I

.field public cellMarginVertical:I

.field public smallTileSize:I


# direct methods
.method private final getTopBottomRow()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/MiuiDoubleLineTileLayout;->smallTileSize:I

    .line 2
    iget p0, p0, Lcom/android/systemui/qs/MiuiDoubleLineTileLayout;->cellMarginVertical:I

    .line 4
    add-int/2addr v0, p0

    .line 6
    return v0
    .line 7
.end method

.method private final getTwoLineHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/MiuiDoubleLineTileLayout;->smallTileSize:I

    .line 2
    mul-int/lit8 v0, v0, 0x2

    .line 4
    iget p0, p0, Lcom/android/systemui/qs/MiuiDoubleLineTileLayout;->cellMarginVertical:I

    .line 6
    mul-int/lit8 p0, p0, 0x1

    .line 8
    add-int/2addr p0, v0

    .line 10
    return p0
    .line 11
.end method


# virtual methods
.method public final addTile(Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
    .line 3
.end method

.method public final getMRecords()Ljava/util/ArrayList;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getNumVisibleTiles()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getOffsetTop(Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiDoubleLineTileLayout;->updateResources()Z

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidate()V

    .line 8
    return-void
    .line 11
.end method

.method public final onFinishInflate()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiDoubleLineTileLayout;->updateResources()Z

    .line 2
    return-void
    .line 5
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    sub-int/2addr p4, p2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 3
    move-result p1

    .line 6
    sub-int/2addr p4, p1

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 8
    move-result p1

    .line 11
    sub-int/2addr p4, p1

    .line 12
    iget p1, p0, Lcom/android/systemui/qs/MiuiDoubleLineTileLayout;->smallTileSize:I

    .line 13
    iget p0, p0, Lcom/android/systemui/qs/MiuiDoubleLineTileLayout;->cellMarginHorizontal:I

    .line 15
    add-int/2addr p0, p1

    .line 17
    if-nez p0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    sub-int/2addr p4, p1

    .line 21
    div-int/2addr p4, p0

    .line 22
    :goto_0
    const/4 p0, 0x0

    .line 23
    throw p0
    .line 24
.end method

.method public final onMeasure(II)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
    .line 3
.end method

.method public final removeAllViews()V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
    .line 3
.end method

.method public final removeTile(Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
    .line 3
.end method

.method public bridge synthetic setExpansion(F)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setListening(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiDoubleLineTileLayout;->_listening:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiDoubleLineTileLayout;->_listening:Z

    .line 7
    const/4 p0, 0x0

    .line 9
    throw p0
    .line 10
.end method

.method public final updateResources()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    const v1, 0x7f070fe5    # @dimen/qs_quick_tile_size '60.0dp'

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v1

    .line 14
    iput v1, p0, Lcom/android/systemui/qs/MiuiDoubleLineTileLayout;->smallTileSize:I

    .line 15
    const v1, 0x7f070ffd    # @dimen/qs_tile_margin_top_bottom '4.0dp'

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result v1

    .line 23
    iput v1, p0, Lcom/android/systemui/qs/MiuiDoubleLineTileLayout;->cellMarginHorizontal:I

    .line 24
    const v1, 0x7f070ffe    # @dimen/qs_tile_margin_vertical '@dimen/qs_tile_margin_horizontal'

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 29
    move-result v0

    .line 32
    iput v0, p0, Lcom/android/systemui/qs/MiuiDoubleLineTileLayout;->cellMarginVertical:I

    .line 33
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 35
    const/4 p0, 0x0

    .line 38
    return p0
    .line 39
.end method
