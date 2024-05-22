.class public final Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$1;->this$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final test(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;->needStatBadgeNum(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    move-result p0

    return p0

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 5
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 6
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 7
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 8
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p0

    .line 9
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 10
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p1

    invoke-static {p0, p1}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 11
    :pswitch_0
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$1;->test(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0

    .line 12
    :goto_0
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$1;->test(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
