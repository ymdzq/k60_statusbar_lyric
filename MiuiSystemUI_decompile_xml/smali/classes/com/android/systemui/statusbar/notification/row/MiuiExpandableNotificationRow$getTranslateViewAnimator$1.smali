.class public final Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow$getTranslateViewAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $leftTarget:F

.field public cancelled:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;


# direct methods
.method public constructor <init>(FLcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow$getTranslateViewAnimator$1;->$leftTarget:F

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow$getTranslateViewAnimator$1;->this$0:Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow$getTranslateViewAnimator$1;->cancelled:Z

    .line 3
    return-void
    .line 5
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow$getTranslateViewAnimator$1;->cancelled:Z

    .line 2
    if-nez p1, :cond_2

    .line 4
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow$getTranslateViewAnimator$1;->$leftTarget:F

    .line 6
    const/4 v0, 0x0

    .line 8
    cmpg-float p1, p1, v0

    .line 9
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    if-eqz p1, :cond_2

    .line 16
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow$getTranslateViewAnimator$1;->this$0:Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 18
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mMenuRow:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 20
    if-eqz p1, :cond_1

    .line 22
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->resetMenu()V

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow$getTranslateViewAnimator$1;->this$0:Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow$getTranslateViewAnimator$1;->this$0:Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow$getTranslateViewAnimator$1;->this$0:Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 37
    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    .line 40
    :cond_2
    return-void
    .line 42
.end method
