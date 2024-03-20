.class public Lcom/android/settings/haptic/data/ResourceWrapper;
.super Ljava/lang/Object;
.source "ResourceWrapper.java"


# direct methods
.method private static loadContentDescriptionResource(Landroid/content/Context;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/settings/haptic/data/ShowResource;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x3

    if-eq p1, p0, :cond_3

    const/4 p0, 0x4

    if-eq p1, p0, :cond_2

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    const/4 p0, 0x6

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 157
    :cond_0
    sget-object p0, Lcom/android/settings/haptic/data/ResourceOverlay;->interestingContentDescription:Ljava/util/List;

    goto :goto_0

    .line 151
    :cond_1
    sget-object p0, Lcom/android/settings/haptic/data/ResourceOverlay;->muffledContentDescription:Ljava/util/List;

    goto :goto_0

    .line 148
    :cond_2
    sget-object p0, Lcom/android/settings/haptic/data/ResourceOverlay;->crispContentDescription:Ljava/util/List;

    goto :goto_0

    .line 154
    :cond_3
    sget-object p0, Lcom/android/settings/haptic/data/ResourceOverlay;->elasticContentDescription:Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method public static loadResource(Landroid/content/Context;I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/settings/haptic/data/HapticResource;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-static/range {p0 .. p1}, Lcom/android/settings/haptic/data/ResourceWrapper;->loadShowResource(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 38
    invoke-static/range {p0 .. p1}, Lcom/android/settings/haptic/data/ResourceWrapper;->loadSubtitleResource(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    .line 40
    invoke-static/range {p0 .. p1}, Lcom/android/settings/haptic/data/ResourceWrapper;->loadVideoBgResource(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    .line 42
    invoke-static/range {p0 .. p1}, Lcom/android/settings/haptic/data/ResourceWrapper;->loadContentDescriptionResource(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t load show resources for type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResourceWrapper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v5, 0x0

    .line 49
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 50
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/haptic/data/ShowResource;

    .line 51
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/haptic/data/ShowResource;

    .line 52
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/haptic/data/ShowResource;

    .line 53
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/haptic/data/ShowResource;

    .line 54
    new-instance v15, Lcom/android/settings/haptic/data/HapticResource;

    iget v11, v6, Lcom/android/settings/haptic/data/ShowResource;->resID:I

    iget v12, v7, Lcom/android/settings/haptic/data/ShowResource;->resID:I

    iget v13, v8, Lcom/android/settings/haptic/data/ShowResource;->resID:I

    iget v14, v9, Lcom/android/settings/haptic/data/ShowResource;->resID:I

    iget v6, v6, Lcom/android/settings/haptic/data/ShowResource;->type:I

    move-object v10, v15

    move-object v7, v15

    move v15, v6

    invoke-direct/range {v10 .. v15}, Lcom/android/settings/haptic/data/HapticResource;-><init>(IIIII)V

    .line 57
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static loadShowResource(Landroid/content/Context;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/settings/haptic/data/ShowResource;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x3

    if-eq p1, p0, :cond_3

    const/4 p0, 0x4

    if-eq p1, p0, :cond_2

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    const/4 p0, 0x6

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 83
    :cond_0
    sget-object p0, Lcom/android/settings/haptic/data/ResourceOverlay;->interestingVideo:Ljava/util/List;

    goto :goto_0

    .line 77
    :cond_1
    sget-object p0, Lcom/android/settings/haptic/data/ResourceOverlay;->muffledVideo:Ljava/util/List;

    goto :goto_0

    .line 74
    :cond_2
    sget-object p0, Lcom/android/settings/haptic/data/ResourceOverlay;->crispVideo:Ljava/util/List;

    goto :goto_0

    .line 80
    :cond_3
    sget-object p0, Lcom/android/settings/haptic/data/ResourceOverlay;->elasticVideo:Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method private static loadSubtitleResource(Landroid/content/Context;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/settings/haptic/data/ShowResource;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x3

    if-eq p1, p0, :cond_5

    const/4 p0, 0x4

    if-eq p1, p0, :cond_3

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    const/4 p0, 0x6

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 113
    :cond_0
    sget-object p0, Lcom/android/settings/haptic/data/ResourceOverlay;->interestingSubtitle:Ljava/util/List;

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNoveltyHaptic()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 104
    sget-object p0, Lcom/android/settings/haptic/data/ResourceOverlay;->m2MuffledSubtitle:Ljava/util/List;

    goto :goto_0

    .line 106
    :cond_2
    sget-object p0, Lcom/android/settings/haptic/data/ResourceOverlay;->muffledSubtitle:Ljava/util/List;

    goto :goto_0

    .line 96
    :cond_3
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNoveltyHaptic()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 97
    sget-object p0, Lcom/android/settings/haptic/data/ResourceOverlay;->m2CrispSubtitle:Ljava/util/List;

    goto :goto_0

    .line 99
    :cond_4
    sget-object p0, Lcom/android/settings/haptic/data/ResourceOverlay;->crispSubtitle:Ljava/util/List;

    goto :goto_0

    .line 110
    :cond_5
    sget-object p0, Lcom/android/settings/haptic/data/ResourceOverlay;->elasticSubtitle:Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method private static loadVideoBgResource(Landroid/content/Context;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/settings/haptic/data/ShowResource;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x3

    if-eq p1, p0, :cond_3

    const/4 p0, 0x4

    if-eq p1, p0, :cond_2

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    const/4 p0, 0x6

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 135
    :cond_0
    sget-object p0, Lcom/android/settings/haptic/data/ResourceOverlay;->interestingVideoBg:Ljava/util/List;

    goto :goto_0

    .line 129
    :cond_1
    sget-object p0, Lcom/android/settings/haptic/data/ResourceOverlay;->muffledVideoBg:Ljava/util/List;

    goto :goto_0

    .line 126
    :cond_2
    sget-object p0, Lcom/android/settings/haptic/data/ResourceOverlay;->crispVideoBg:Ljava/util/List;

    goto :goto_0

    .line 132
    :cond_3
    sget-object p0, Lcom/android/settings/haptic/data/ResourceOverlay;->elasticVideoBg:Ljava/util/List;

    :goto_0
    return-object p0
.end method
