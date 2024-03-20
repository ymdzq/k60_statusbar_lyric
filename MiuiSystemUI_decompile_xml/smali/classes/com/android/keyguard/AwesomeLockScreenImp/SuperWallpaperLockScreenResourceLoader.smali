.class public final Lcom/android/keyguard/AwesomeLockScreenImp/SuperWallpaperLockScreenResourceLoader;
.super Lcom/miui/maml/ResourceLoader;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public final getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 0

    .line 1
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1, p2}, Lmiui/content/res/ThemeResourcesSystem;->getSuperWallpaperLockscreenFileStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method public final resourceExists(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lmiui/content/res/ThemeResourcesSystem;->containsSuperWallpaperLockscreenEntry(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method
