.class public abstract Lcom/android/settings/stat/commonpreference/PreferenceStat;
.super Ljava/lang/Object;
.source "PreferenceStat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getInfo(Landroid/content/Context;)Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method abstract getInfoList(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;",
            ">;"
        }
    .end annotation
.end method

.method public track(Landroid/content/Context;)V
    .locals 4

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/settings/stat/commonpreference/PreferenceStat;->getInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;

    .line 34
    iget-object v2, v1, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;->key:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;->value:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackPreferenceValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v2, v1, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;->key:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;->value:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackPreferenceValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/stat/commonpreference/PreferenceStat;->getInfo(Landroid/content/Context;)Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 41
    iget-object p1, p0, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;->key:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;->value:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackPreferenceValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;->key:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;->value:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackPreferenceValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
