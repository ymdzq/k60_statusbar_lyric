.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/coordinator/CountLimitCoordinator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/CountLimitCoordinator$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/CountLimitCoordinator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/CountLimitCoordinator$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/CountLimitCoordinator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Ljava/lang/String;

    .line 10
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 12
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 14
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 21
    return p0

    .line 22
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/CountLimitCoordinator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 23
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/CountLimitCoordinator;

    .line 25
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/CountLimitCoordinator;->mContext:Landroid/content/Context;

    .line 34
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isMostImportantNotification(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 36
    move-result p0

    .line 39
    xor-int/lit8 p0, p0, 0x1

    .line 40
    return p0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 44
.end method
