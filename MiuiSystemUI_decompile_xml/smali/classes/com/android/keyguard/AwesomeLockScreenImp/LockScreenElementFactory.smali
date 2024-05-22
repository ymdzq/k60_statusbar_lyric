.class public final Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenElementFactory;
.super Lcom/miui/maml/elements/ScreenElementFactory;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public final createInstance(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ScreenElement;
    .locals 2

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    const-string v1, "Unlocker"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    new-instance p0, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;

    .line 14
    check-cast p2, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AwesomeLockScreenImp/UnlockerScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;)V

    .line 18
    return-object p0

    .line 21
    :cond_0
    const-string v1, "Wallpaper"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 24
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    new-instance p0, Lcom/android/keyguard/AwesomeLockScreenImp/WallpaperScreenElement;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AwesomeLockScreenImp/WallpaperScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 32
    return-object p0

    .line 35
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ScreenElement;

    .line 36
    move-result-object p0

    .line 39
    return-object p0
    .line 40
.end method
