.class public final Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$mHandler$1;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$mHandler$1;->this$0:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    .line 5
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$mHandler$1;->this$0:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const/4 p1, 0x2

    .line 15
    new-array p1, p1, [F

    .line 16
    fill-array-data p1, :array_0

    .line 18
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 21
    move-result-object p1

    .line 24
    const-wide/16 v0, 0x12c

    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 27
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 30
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 32
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 35
    new-instance v0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$handleHideNotificationPanel$1$1;

    .line 38
    const/4 v1, 0x0

    .line 40
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$handleHideNotificationPanel$1$1;-><init>(Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;I)V

    .line 41
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 44
    new-instance v0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$handleHideNotificationPanel$1$2;

    .line 47
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper$handleHideNotificationPanel$1$2;-><init>(Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowRowTouchHelper;I)V

    .line 49
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 52
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 55
    :cond_0
    return-void

    .line 58
    nop

    .line 59
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 60
.end method
