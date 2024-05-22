.class public final Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$Companion;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final access$isOnly24Ghz(Ljava/util/Set;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_2

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 5
    move-result-object p0

    .line 8
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    move-result v1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 18
    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 19
    iget v1, v1, Landroid/net/wifi/ScanResult;->frequency:I

    .line 21
    const/16 v2, 0x1325

    .line 23
    const/4 v3, 0x0

    .line 25
    if-gt v2, v1, :cond_1

    .line 26
    const/16 v2, 0x170c

    .line 28
    if-ge v1, v2, :cond_1

    .line 30
    move v1, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v1, v3

    .line 34
    :goto_0
    if-eqz v1, :cond_0

    .line 35
    move v0, v3

    .line 37
    :cond_2
    return v0
    .line 38
.end method

.method public static final access$isOnly5Ghz(Ljava/util/Set;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_2

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 5
    move-result-object p0

    .line 8
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    move-result v1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 18
    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 19
    iget v1, v1, Landroid/net/wifi/ScanResult;->frequency:I

    .line 21
    const/16 v2, 0x961

    .line 23
    const/4 v3, 0x0

    .line 25
    if-gt v2, v1, :cond_1

    .line 26
    const/16 v2, 0x9c4

    .line 28
    if-ge v1, v2, :cond_1

    .line 30
    move v1, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v1, v3

    .line 34
    :goto_0
    if-eqz v1, :cond_0

    .line 35
    move v0, v3

    .line 37
    :cond_2
    return v0
    .line 38
.end method
