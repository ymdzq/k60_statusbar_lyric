.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    .line 2
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 4
    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 11
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 13
    const/4 v1, -0x1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget v0, v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->index:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    :goto_0
    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 22
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 24
    if-eqz v2, :cond_1

    .line 26
    iget v2, v2, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->index:I

    .line 28
    goto :goto_1

    .line 30
    :cond_1
    move v2, v1

    .line 31
    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Integer;->compare(II)I

    .line 32
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    goto :goto_4

    .line 38
    :cond_2
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 39
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 41
    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 43
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 45
    if-ne v0, v2, :cond_7

    .line 47
    if-eqz v0, :cond_3

    .line 49
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->comparator:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;

    .line 51
    goto :goto_2

    .line 53
    :cond_3
    const/4 v0, 0x0

    .line 54
    :goto_2
    if-eqz v0, :cond_4

    .line 55
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;->compare(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)I

    .line 57
    move-result v0

    .line 60
    if-eqz v0, :cond_4

    .line 61
    goto :goto_4

    .line 63
    :cond_4
    const/4 v0, 0x0

    .line 64
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mNotifComparators:Ljava/util/List;

    .line 65
    check-cast v2, Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 69
    move-result v3

    .line 72
    if-ge v0, v3, :cond_6

    .line 73
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    move-result-object v2

    .line 78
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;

    .line 79
    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;->compare(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)I

    .line 81
    move-result v2

    .line 84
    if-eqz v2, :cond_5

    .line 85
    move v0, v2

    .line 87
    goto :goto_4

    .line 88
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 89
    goto :goto_3

    .line 91
    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 92
    move-result-object p0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 96
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 98
    move-result-object p0

    .line 101
    iget-wide p0, p0, Landroid/app/Notification;->when:J

    .line 102
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 104
    move-result-object p2

    .line 107
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 108
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 110
    move-result-object p2

    .line 113
    iget-wide v2, p2, Landroid/app/Notification;->when:J

    .line 114
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    .line 116
    move-result p0

    .line 119
    mul-int/lit8 v0, p0, -0x1

    .line 120
    :goto_4
    return v0

    .line 122
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    .line 123
    const-string p1, "Entry ordering should only be done within sections"

    .line 125
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 127
    throw p0
    .line 130
.end method
