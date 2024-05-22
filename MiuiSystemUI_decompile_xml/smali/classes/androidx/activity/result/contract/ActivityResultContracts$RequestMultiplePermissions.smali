.class public final Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;
.super Landroidx/activity/result/contract/ActivityResultContract;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public final parseResult(Landroid/content/Intent;I)Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 p0, -0x1

    .line 2
    if-eq p2, p0, :cond_0

    .line 3
    invoke-static {}, Lkotlin/collections/MapsKt___MapsJvmKt;->emptyMap()Ljava/util/Map;

    .line 5
    move-result-object p0

    .line 8
    goto :goto_3

    .line 9
    :cond_0
    if-nez p1, :cond_1

    .line 10
    invoke-static {}, Lkotlin/collections/MapsKt___MapsJvmKt;->emptyMap()Ljava/util/Map;

    .line 12
    move-result-object p0

    .line 15
    goto :goto_3

    .line 16
    :cond_1
    const-string p0, "androidx.activity.result.contract.extra.PERMISSIONS"

    .line 17
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    const-string p2, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    .line 23
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 25
    move-result-object p1

    .line 28
    if-eqz p1, :cond_5

    .line 29
    if-nez p0, :cond_2

    .line 31
    goto :goto_2

    .line 33
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    .line 34
    array-length v0, p1

    .line 36
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    array-length v0, p1

    .line 40
    const/4 v1, 0x0

    .line 41
    move v2, v1

    .line 42
    :goto_0
    if-ge v2, v0, :cond_4

    .line 43
    aget v3, p1, v2

    .line 45
    if-nez v3, :cond_3

    .line 47
    const/4 v3, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    move v3, v1

    .line 51
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    move-result-object v3

    .line 55
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 59
    goto :goto_0

    .line 61
    :cond_4
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    .line 62
    move-result-object p0

    .line 65
    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    .line 66
    move-result-object p0

    .line 69
    invoke-static {p0}, Lkotlin/collections/MapsKt___MapsJvmKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    .line 70
    move-result-object p0

    .line 73
    goto :goto_3

    .line 74
    :cond_5
    :goto_2
    invoke-static {}, Lkotlin/collections/MapsKt___MapsJvmKt;->emptyMap()Ljava/util/Map;

    .line 75
    move-result-object p0

    .line 78
    :goto_3
    return-object p0
    .line 79
.end method
