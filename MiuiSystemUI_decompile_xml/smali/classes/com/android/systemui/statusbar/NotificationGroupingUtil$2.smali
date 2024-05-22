.class public final Lcom/android/systemui/statusbar/NotificationGroupingUtil$2;
.super Lcom/android/systemui/statusbar/NotificationGroupingUtil$IconComparator;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public final compare(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p3, Landroid/app/Notification;

    .line 2
    invoke-virtual {p3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 4
    move-result-object p0

    .line 7
    check-cast p4, Landroid/app/Notification;

    .line 8
    invoke-virtual {p4}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 10
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    .line 14
    move-result p0

    .line 17
    const/4 p1, 0x0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    iget p0, p3, Landroid/app/Notification;->color:I

    .line 21
    iget p2, p4, Landroid/app/Notification;->color:I

    .line 23
    const/4 p3, 0x1

    .line 25
    if-ne p0, p2, :cond_0

    .line 26
    move p0, p3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move p0, p1

    .line 30
    :goto_0
    if-eqz p0, :cond_1

    .line 31
    move p1, p3

    .line 33
    :cond_1
    return p1
    .line 34
.end method
