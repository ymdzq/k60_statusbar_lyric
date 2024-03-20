.class Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;
.super Landroid/support/v4/os/ResultReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->unparcelWithClassLoader(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    move-result-object p2

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    if-nez p1, :cond_2

    .line 9
    if-eqz p2, :cond_2

    .line 11
    const-string/jumbo p1, "search_results"

    .line 13
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 22
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    new-instance p2, Ljava/util/ArrayList;

    .line 29
    array-length v0, p1

    .line 31
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    array-length v0, p1

    .line 35
    const/4 v1, 0x0

    .line 36
    :goto_0
    if-ge v1, v0, :cond_1

    .line 37
    aget-object v2, p1, v1

    .line 39
    check-cast v2, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 41
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    throw p0

    .line 49
    :cond_2
    throw p0
    .line 50
.end method
