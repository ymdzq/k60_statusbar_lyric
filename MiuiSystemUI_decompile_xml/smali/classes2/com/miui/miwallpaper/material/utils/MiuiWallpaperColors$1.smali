.class public final Lcom/miui/miwallpaper/material/utils/MiuiWallpaperColors$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/miwallpaper/material/palette/Palette$Filter;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/miwallpaper/material/utils/MiuiWallpaperColors$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final isAllowed(I[F)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/miwallpaper/material/utils/MiuiWallpaperColors$1;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    const/16 p0, 0xa

    .line 8
    invoke-static {p1, p0}, Lcom/miui/miwallpaper/material/utils/MiuiWallpaperColors;->access$000(II)Z

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :pswitch_1
    const/16 p0, 0x14

    .line 15
    invoke-static {p1, p0}, Lcom/miui/miwallpaper/material/utils/MiuiWallpaperColors;->access$000(II)Z

    .line 17
    move-result p0

    .line 20
    return p0

    .line 21
    :goto_0
    const/4 p0, 0x5

    .line 22
    invoke-static {p1, p0}, Lcom/miui/miwallpaper/material/utils/MiuiWallpaperColors;->access$000(II)Z

    .line 23
    move-result p0

    .line 26
    return p0

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 28
.end method
