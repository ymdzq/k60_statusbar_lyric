.class public abstract Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static create(Ljava/lang/String;)Lcom/android/systemui/qs/pipeline/shared/TileSpec;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    sget-object v1, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;->INSTANCE:Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    goto :goto_2

    .line 10
    :cond_0
    const-string v0, "custom("

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 13
    move-result v2

    .line 16
    if-nez v2, :cond_1

    .line 17
    new-instance v1, Lcom/android/systemui/qs/pipeline/shared/TileSpec$PlatformTileSpec;

    .line 19
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$PlatformTileSpec;-><init>(Ljava/lang/String;)V

    .line 21
    goto :goto_2

    .line 24
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    goto :goto_0

    .line 31
    :cond_2
    const-string v0, ")"

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 34
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 40
    move-result v0

    .line 43
    add-int/lit8 v0, v0, -0x1

    .line 44
    const/4 v2, 0x7

    .line 46
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 51
    move-result-object v0

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 56
    :goto_1
    if-eqz v0, :cond_4

    .line 57
    new-instance v1, Lcom/android/systemui/qs/pipeline/shared/TileSpec$CustomTileSpec;

    .line 59
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$CustomTileSpec;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 61
    :cond_4
    :goto_2
    return-object v1
    .line 64
.end method
