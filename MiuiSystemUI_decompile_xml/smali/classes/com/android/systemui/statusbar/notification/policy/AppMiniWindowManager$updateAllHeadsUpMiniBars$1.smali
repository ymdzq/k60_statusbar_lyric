.class public final Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$updateAllHeadsUpMiniBars$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$updateAllHeadsUpMiniBars$1;

.field public static final INSTANCE$1:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$updateAllHeadsUpMiniBars$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$updateAllHeadsUpMiniBars$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$updateAllHeadsUpMiniBars$1;-><init>(I)V

    .line 5
    sput-object v0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$updateAllHeadsUpMiniBars$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$updateAllHeadsUpMiniBars$1;

    .line 8
    new-instance v0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$updateAllHeadsUpMiniBars$1;

    .line 10
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$updateAllHeadsUpMiniBars$1;-><init>(I)V

    .line 13
    sput-object v0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$updateAllHeadsUpMiniBars$1;->INSTANCE$1:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$updateAllHeadsUpMiniBars$1;

    .line 16
    return-void
    .line 18
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$updateAllHeadsUpMiniBars$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$updateAllHeadsUpMiniBars$1;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_2

    .line 7
    :pswitch_0
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 8
    packed-switch p0, :pswitch_data_1

    .line 10
    goto :goto_0

    .line 13
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowPinned()Z

    .line 14
    move-result p0

    .line 17
    goto :goto_1

    .line 18
    :goto_0
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 19
    instance-of p0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 21
    :goto_1
    return p0

    .line 23
    :goto_2
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 24
    packed-switch p0, :pswitch_data_2

    .line 26
    goto :goto_3

    .line 29
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowPinned()Z

    .line 30
    move-result p0

    .line 33
    goto :goto_4

    .line 34
    :goto_3
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 35
    instance-of p0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 37
    :goto_4
    return p0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 40
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 46
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
    .line 52
.end method
