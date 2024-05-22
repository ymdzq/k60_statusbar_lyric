.class public final Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$handleHideNotificationPanel$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$handleHideNotificationPanel$1$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$handleHideNotificationPanel$1$2;->this$0:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$handleHideNotificationPanel$1$2;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$handleHideNotificationPanel$1$2;->this$0:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    .line 8
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;->access$onMiniWindowReset(Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;)V

    .line 10
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$handleHideNotificationPanel$1$2;->this$0:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    .line 13
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;->mTouchCallback:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchCallback;

    .line 15
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchCallback;->onMiniWindowAppLaunched()V

    .line 17
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$handleHideNotificationPanel$1$2;->this$0:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;->mPickedMiniWindowChild:Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 22
    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 26
    move-result-object p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    if-eqz p0, :cond_1

    .line 32
    const/4 p1, 0x1

    .line 34
    iput p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCancellationReason:I

    .line 35
    const-class v0, Lcom/android/systemui/statusbar/policy/DismissNotificationHelper;

    .line 37
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/systemui/statusbar/policy/DismissNotificationHelper;

    .line 43
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/DismissNotificationHelper;->dismissNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 45
    :cond_1
    return-void

    .line 48
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$handleHideNotificationPanel$1$2;->this$0:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    .line 49
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;->access$onMiniWindowReset(Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;)V

    .line 51
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 56
.end method
