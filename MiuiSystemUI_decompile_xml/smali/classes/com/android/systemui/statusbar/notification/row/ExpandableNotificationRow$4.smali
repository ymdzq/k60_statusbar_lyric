.class public final Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


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
