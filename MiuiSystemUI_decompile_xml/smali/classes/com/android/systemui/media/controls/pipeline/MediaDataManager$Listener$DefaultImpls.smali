.class public abstract Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener$DefaultImpls;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static synthetic onMediaDataLoaded$default(Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;ZIZI)V
    .locals 7

    .line 1
    and-int/lit8 v0, p7, 0x8

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 p4, 0x1

    .line 6
    :cond_0
    move v4, p4

    .line 7
    and-int/lit8 p4, p7, 0x10

    .line 8
    const/4 v0, 0x0

    .line 10
    if-eqz p4, :cond_1

    .line 11
    move v5, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v5, p5

    .line 15
    :goto_0
    and-int/lit8 p4, p7, 0x20

    .line 16
    if-eqz p4, :cond_2

    .line 18
    move v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_2
    move v6, p6

    .line 22
    :goto_1
    move-object v0, p0

    .line 23
    move-object v1, p1

    .line 24
    move-object v2, p2

    .line 25
    move-object v3, p3

    .line 26
    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;ZIZ)V

    .line 27
    return-void
    .line 30
.end method
