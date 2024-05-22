.class public final Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenResourceLoader;
.super Lcom/miui/maml/ResourceLoader;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public final getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 0

    .line 1
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1, p2}, Lmiui/content/res/ThemeResourcesSystem;->getAwesomeLockscreenFileStream(Ljava/lang/String;[J)Ljava/io/InputStream;

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
    invoke-virtual {p0, p1}, Lmiui/content/res/ThemeResourcesSystem;->containsAwesomeLockscreenEntry(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method
