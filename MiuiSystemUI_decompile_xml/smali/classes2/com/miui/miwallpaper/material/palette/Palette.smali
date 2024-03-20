.class public final Lcom/miui/miwallpaper/material/palette/Palette;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mDominantSwatch:Lcom/miui/miwallpaper/material/palette/Palette$Swatch;

.field public final mSelectedSwatches:Ljava/util/Map;

.field public final mSwatches:Ljava/util/List;

.field public final mUsedColors:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/miwallpaper/material/palette/Palette;->mSwatches:Ljava/util/List;

    .line 5
    new-instance p2, Landroid/util/SparseBooleanArray;

    .line 7
    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/miui/miwallpaper/material/palette/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    .line 12
    new-instance p2, Landroid/util/ArrayMap;

    .line 14
    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/miui/miwallpaper/material/palette/Palette;->mSelectedSwatches:Ljava/util/Map;

    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 21
    move-result p2

    .line 24
    const/high16 v0, -0x80000000

    .line 25
    const/4 v1, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    :goto_0
    if-ge v2, p2, :cond_1

    .line 29
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 34
    check-cast v3, Lcom/miui/miwallpaper/material/palette/Palette$Swatch;

    .line 35
    iget v4, v3, Lcom/miui/miwallpaper/material/palette/Palette$Swatch;->mPopulation:I

    .line 37
    if-le v4, v0, :cond_0

    .line 39
    move-object v1, v3

    .line 41
    move v0, v4

    .line 42
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    iput-object v1, p0, Lcom/miui/miwallpaper/material/palette/Palette;->mDominantSwatch:Lcom/miui/miwallpaper/material/palette/Palette$Swatch;

    .line 46
    return-void
    .line 48
.end method
