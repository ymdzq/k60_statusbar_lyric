.class public final Lcom/android/systemui/mediaprojection/devicepolicy/MediaProjectionDevicePolicyModule;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static workProfileUserHandle(Lcom/android/systemui/settings/UserTracker;)Landroid/os/UserHandle;
    .locals 3

    .line 1
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    move-object v2, v0

    .line 23
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 24
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 26
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    move-object v0, v1

    .line 33
    :goto_0
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 34
    if-eqz v0, :cond_2

    .line 36
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 38
    move-result-object v1

    .line 41
    :cond_2
    return-object v1
    .line 42
.end method
