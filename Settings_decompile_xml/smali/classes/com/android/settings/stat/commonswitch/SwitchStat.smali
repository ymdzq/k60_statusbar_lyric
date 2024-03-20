.class public abstract Lcom/android/settings/stat/commonswitch/SwitchStat;
.super Ljava/lang/Object;
.source "SwitchStat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/stat/commonswitch/SwitchStat$Info;
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
.method getInfo(Landroid/content/Context;)Lcom/android/settings/stat/commonswitch/SwitchStat$Info;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method getInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/stat/commonswitch/SwitchStat$Info;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public track(Landroid/content/Context;)V
    .locals 4

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/settings/stat/commonswitch/SwitchStat;->getInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;

    .line 28
    iget-object v2, v1, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;->key:Ljava/lang/String;

    iget-boolean v3, v1, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;->value:Z

    invoke-static {v2, v3}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackSwitchEvent(Ljava/lang/String;Z)V

    .line 29
    iget-object v2, v1, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;->key:Ljava/lang/String;

    iget-boolean v1, v1, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;->value:Z

    invoke-static {v2, v1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackSwitchEvent(Ljava/lang/String;Z)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/stat/commonswitch/SwitchStat;->getInfo(Landroid/content/Context;)Lcom/android/settings/stat/commonswitch/SwitchStat$Info;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 35
    iget-object p1, p0, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;->key:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;->value:Z

    invoke-static {p1, v0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackSwitchEvent(Ljava/lang/String;Z)V

    .line 36
    iget-object p1, p0, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;->key:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;->value:Z

    invoke-static {p1, p0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackSwitchEvent(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
