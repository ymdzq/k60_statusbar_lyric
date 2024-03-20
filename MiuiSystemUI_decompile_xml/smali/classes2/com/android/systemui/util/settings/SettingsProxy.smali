.class public interface abstract Lcom/android/systemui/util/settings/SettingsProxy;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# virtual methods
.method public getBoolForUser(ZILjava/lang/String;)Z
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 2
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
    .line 11
.end method

.method public abstract getContentResolver()Landroid/content/ContentResolver;
.end method

.method public getFloatForUser(FILjava/lang/String;)F
    .locals 0

    .line 1
    invoke-interface {p0, p2, p3}, Lcom/android/systemui/util/settings/SettingsProxy;->getStringForUser(ILjava/lang/String;)Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 8
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    :cond_0
    return p1
    .line 12
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    .line 2
    move-result v0

    .line 5
    invoke-interface {p0, p2, v0, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public getIntForUser(IILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-interface {p0, p2, p3}, Lcom/android/systemui/util/settings/SettingsProxy;->getStringForUser(ILjava/lang/String;)Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    nop

    .line 12
    :catch_0
    :cond_0
    return p1
    .line 13
.end method

.method public getRealUserHandle(I)I
    .locals 1

    .line 1
    const/4 v0, -0x2

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    return p1

    .line 5
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserTracker()Lcom/android/systemui/settings/UserTracker;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 12
    move-result p0

    .line 15
    return p0
    .line 16
.end method

.method public abstract getStringForUser(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUriFor(Ljava/lang/String;)Landroid/net/Uri;
.end method

.method public getUserId()I
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/systemui/util/settings/SettingsProxy;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public abstract getUserTracker()Lcom/android/systemui/settings/UserTracker;
.end method

.method public putIntForUser(IILjava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    invoke-interface {p0, p3, p1, p2}, Lcom/android/systemui/util/settings/SettingsProxy;->putStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public abstract putStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public registerContentObserverForUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    .locals 1

    .line 5
    invoke-interface {p0}, Lcom/android/systemui/util/settings/SettingsProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6
    invoke-interface {p0, p4}, Lcom/android/systemui/util/settings/SettingsProxy;->getRealUserHandle(I)I

    move-result p0

    .line 7
    invoke-virtual {v0, p1, p2, p3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public registerContentObserverForUser(Ljava/lang/String;Landroid/database/ContentObserver;I)V
    .locals 1

    .line 1
    invoke-interface {p0, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, p1, v0, p2, p3}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public registerContentObserverForUser(Ljava/lang/String;ZLandroid/database/ContentObserver;I)V
    .locals 0

    .line 3
    invoke-interface {p0, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 4
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/systemui/util/settings/SettingsProxy;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 6
    return-void
    .line 9
.end method
