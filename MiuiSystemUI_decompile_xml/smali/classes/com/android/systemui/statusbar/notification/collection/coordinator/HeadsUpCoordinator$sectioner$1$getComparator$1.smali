.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$sectioner$1$getComparator$1;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$sectioner$1$getComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    .line 2
    const-string p1, "HeadsUp"

    .line 4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final compare(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$sectioner$1$getComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 10
    move-result-object p2

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const/4 v0, 0x1

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz p1, :cond_5

    .line 19
    if-nez p2, :cond_0

    .line 21
    goto :goto_3

    .line 23
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    .line 26
    move-result-object p1

    .line 29
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 30
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    .line 32
    move-result-object p0

    .line 35
    if-eqz p1, :cond_2

    .line 36
    if-nez p0, :cond_1

    .line 38
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->compareTo(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)I

    .line 41
    move-result p0

    .line 44
    goto :goto_6

    .line 45
    :cond_2
    :goto_0
    if-nez p1, :cond_3

    .line 46
    move p1, v0

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    move p1, v1

    .line 50
    :goto_1
    if-nez p0, :cond_4

    .line 51
    goto :goto_2

    .line 53
    :cond_4
    move v0, v1

    .line 54
    :goto_2
    invoke-static {p1, v0}, Ljava/lang/Boolean;->compare(ZZ)I

    .line 55
    move-result p0

    .line 58
    goto :goto_6

    .line 59
    :cond_5
    :goto_3
    if-nez p1, :cond_6

    .line 60
    move p0, v0

    .line 62
    goto :goto_4

    .line 63
    :cond_6
    move p0, v1

    .line 64
    :goto_4
    if-nez p2, :cond_7

    .line 65
    goto :goto_5

    .line 67
    :cond_7
    move v0, v1

    .line 68
    :goto_5
    invoke-static {p0, v0}, Ljava/lang/Boolean;->compare(ZZ)I

    .line 69
    move-result p0

    .line 72
    :goto_6
    return p0
    .line 73
.end method
