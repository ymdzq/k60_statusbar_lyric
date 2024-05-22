.class public abstract Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerInjectorKt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final isAutoGroupSummary(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 2
    move-result v0

    .line 5
    const v1, 0x7fffffff

    .line 6
    if-ne v0, v1, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    const-string v1, "ranker_group"

    .line 15
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 23
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    move-result p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    const/4 p0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    :goto_0
    return p0
    .line 40
.end method
