.class public abstract Lcom/miui/miwallpaper/material/utils/MiuiWallpaperColors;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final DEFAULT_MAIN_COLORS:I

.field public static final MIUI_FILTER_01:Lcom/miui/miwallpaper/material/utils/MiuiWallpaperColors$1;

.field public static final MIUI_FILTER_02:Lcom/miui/miwallpaper/material/utils/MiuiWallpaperColors$1;

.field public static final MIUI_FILTER_03:Lcom/miui/miwallpaper/material/utils/MiuiWallpaperColors$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0xbf

    .line 2
    const/16 v1, 0x40

    .line 4
    const/16 v2, 0x7e

    .line 6
    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    .line 8
    move-result v0

    .line 11
    sput v0, Lcom/miui/miwallpaper/material/utils/MiuiWallpaperColors;->DEFAULT_MAIN_COLORS:I

    .line 12
    new-instance v0, Lcom/miui/miwallpaper/material/utils/MiuiWallpaperColors$1;

    .line 14
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1}, Lcom/miui/miwallpaper/material/utils/MiuiWallpaperColors$1;-><init>(I)V

    .line 17
    sput-object v0, Lcom/miui/miwallpaper/material/utils/MiuiWallpaperColors;->MIUI_FILTER_01:Lcom/miui/miwallpaper/material/utils/MiuiWallpaperColors$1;

    .line 20
    new-instance v0, Lcom/miui/miwallpaper/material/utils/MiuiWallpaperColors$1;

    .line 22
    const/4 v1, 0x1

    .line 24
    invoke-direct {v0, v1}, Lcom/miui/miwallpaper/material/utils/MiuiWallpaperColors$1;-><init>(I)V

    .line 25
    sput-object v0, Lcom/miui/miwallpaper/material/utils/MiuiWallpaperColors;->MIUI_FILTER_02:Lcom/miui/miwallpaper/material/utils/MiuiWallpaperColors$1;

    .line 28
    new-instance v0, Lcom/miui/miwallpaper/material/utils/MiuiWallpaperColors$1;

    .line 30
    const/4 v1, 0x2

    .line 32
    invoke-direct {v0, v1}, Lcom/miui/miwallpaper/material/utils/MiuiWallpaperColors$1;-><init>(I)V

    .line 33
    sput-object v0, Lcom/miui/miwallpaper/material/utils/MiuiWallpaperColors;->MIUI_FILTER_03:Lcom/miui/miwallpaper/material/utils/MiuiWallpaperColors$1;

    .line 36
    return-void
    .line 38
.end method

.method public static access$000(II)Z
    .locals 5

    .line 1
    new-instance v0, Lcom/miui/miwallpaper/material/hct/Hct;

    .line 2
    invoke-direct {v0, p0}, Lcom/miui/miwallpaper/material/hct/Hct;-><init>(I)V

    .line 4
    iget-wide v1, v0, Lcom/miui/miwallpaper/material/hct/Hct;->chroma:D

    .line 7
    const/16 p0, 0x14

    .line 9
    int-to-double v3, p0

    .line 11
    cmpl-double p0, v1, v3

    .line 12
    if-ltz p0, :cond_0

    .line 14
    iget-wide v0, v0, Lcom/miui/miwallpaper/material/hct/Hct;->tone:D

    .line 16
    rsub-int/lit8 p0, p1, 0x64

    .line 18
    int-to-double v2, p0

    .line 20
    cmpg-double p0, v0, v2

    .line 21
    if-gtz p0, :cond_0

    .line 23
    int-to-double p0, p1

    .line 25
    cmpl-double p0, v0, p0

    .line 26
    if-ltz p0, :cond_0

    .line 28
    const/4 p0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    :goto_0
    return p0
    .line 33
.end method
