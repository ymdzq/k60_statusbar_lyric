.class public final Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final synthetic val$animationListener:Landroid/animation/AnimatorListenerAdapter;

.field public final synthetic val$delay:J

.field public final synthetic val$duration:J

.field public final synthetic val$endLocation:F

.field public final synthetic val$isHeadsUpAnimation:Z

.field public final synthetic val$onFinishedRunnable:Ljava/lang/Runnable;

.field public final synthetic val$translationDirection:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;JFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    iput-wide p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$duration:J

    .line 4
    const-wide/16 p1, 0x0

    .line 6
    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$delay:J

    .line 8
    iput p4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$translationDirection:F

    .line 10
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$isHeadsUpAnimation:Z

    .line 12
    iput p6, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$endLocation:F

    .line 14
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$onFinishedRunnable:Ljava/lang/Runnable;

    .line 16
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$animationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 18
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 20
    return-void
    .line 23
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    iget-wide v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$duration:J

    .line 4
    iget-wide v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$delay:J

    .line 6
    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$translationDirection:F

    .line 8
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$isHeadsUpAnimation:Z

    .line 10
    iget v7, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$endLocation:F

    .line 12
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$onFinishedRunnable:Ljava/lang/Runnable;

    .line 14
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;->val$animationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 16
    invoke-static/range {v0 .. v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$001(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V

    .line 18
    return-void
    .line 21
.end method
