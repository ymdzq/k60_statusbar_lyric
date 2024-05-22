.class public final synthetic Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    check-cast p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$3;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    return-void

    .line 14
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 15
    check-cast p1, Lcom/android/systemui/statusbar/notification/focus/AodFocusController$1;

    .line 17
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/focus/AodFocusController$1;->onRemove(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 19
    return-void

    .line 22
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 23
    check-cast p1, Lcom/android/systemui/statusbar/notification/focus/AodFocusController$1;

    .line 25
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/focus/AodFocusController$1;->onAdd(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 27
    return-void

    .line 30
    :pswitch_3
    invoke-static {p1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 31
    throw v1

    .line 34
    :pswitch_4
    invoke-static {p1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 35
    throw v1

    .line 38
    :pswitch_5
    check-cast p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$3;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    return-void

    .line 44
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 45
    check-cast p1, Lcom/android/systemui/statusbar/notification/focus/AodFocusController$1;

    .line 47
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/focus/AodFocusController$1;->onAdd(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 49
    return-void

    .line 52
    :pswitch_7
    invoke-static {p1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 53
    throw v1

    .line 56
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 57
    check-cast p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$3;

    .line 59
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$3;->onRemove(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 61
    return-void

    .line 64
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 65
    check-cast p1, Lcom/android/systemui/statusbar/notification/focus/AodFocusController$1;

    .line 67
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/focus/AodFocusController$1;->onRemove(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 69
    return-void

    .line 72
    :pswitch_a
    invoke-static {p1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 73
    throw v1

    .line 76
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 77
    check-cast p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$3;

    .line 79
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$3;->onRemove(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 81
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 86
.end method
