.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;

    .line 2
    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;

    .line 4
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 6
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    .line 12
    move-result p0

    .line 15
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 16
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    .line 22
    move-result v0

    .line 25
    invoke-static {p0, v0}, Ljava/lang/Boolean;->compare(ZZ)I

    .line 26
    move-result p0

    .line 29
    if-nez p0, :cond_0

    .line 30
    iget p0, p1, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->position:I

    .line 32
    iget p1, p2, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->position:I

    .line 34
    sub-int/2addr p0, p1

    .line 36
    :cond_0
    return p0
    .line 37
.end method
