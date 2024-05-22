.class public abstract Lcom/android/systemui/statusbar/notification/NotificationVisualHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static getPositionInGroup(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    move-result v1

    .line 21
    if-lez v1, :cond_1

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 39
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 41
    move-result v3

    .line 44
    const/16 v4, 0x8

    .line 45
    if-eq v3, v4, :cond_0

    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 51
    move-result-object v3

    .line 54
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 55
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 57
    move-result-object v2

    .line 60
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 61
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 63
    move-result v2

    .line 66
    if-eqz v2, :cond_0

    .line 67
    return v1

    .line 69
    :cond_1
    const/4 p0, -0x1

    .line 70
    return p0
    .line 71
.end method

.method public static getPositionInTop(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I
    .locals 6

    .line 1
    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 7
    instance-of v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 8
    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 16
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    move-result v3

    .line 23
    if-ge v1, v3, :cond_1

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v3

    .line 29
    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 30
    if-eqz v4, :cond_0

    .line 32
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 34
    move-result v4

    .line 37
    const/16 v5, 0x8

    .line 38
    if-eq v4, v5, :cond_0

    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 42
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 46
    move-result-object v4

    .line 49
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 50
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 52
    move-result-object v3

    .line 55
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 56
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 58
    move-result v3

    .line 61
    if-eqz v3, :cond_0

    .line 62
    return v2

    .line 64
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 65
    goto :goto_0

    .line 67
    :cond_1
    const/4 p0, -0x1

    .line 68
    return p0
    .line 69
.end method
