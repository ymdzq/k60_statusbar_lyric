.class public final synthetic Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/NotificationListenerController;

    .line 2
    check-cast p2, Lcom/android/systemui/plugins/NotificationListenerController;

    .line 4
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$onPluginConnected$1;

    .line 6
    instance-of p1, p2, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$onPluginConnected$1;

    .line 8
    if-nez p0, :cond_0

    .line 10
    if-eqz p1, :cond_0

    .line 12
    const/4 p0, -0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-eqz p0, :cond_1

    .line 16
    if-nez p1, :cond_1

    .line 18
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
    .line 23
.end method
