.class public final Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$reload$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $parent:Landroid/view/ViewGroup;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$reload$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$reload$1;->$parent:Landroid/view/ViewGroup;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$reload$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlViewsById:Ljava/util/Map;

    .line 4
    check-cast p1, Ljava/util/LinkedHashMap;

    .line 6
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    .line 8
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$reload$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 11
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsById:Ljava/util/Map;

    .line 13
    check-cast p1, Ljava/util/LinkedHashMap;

    .line 15
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    .line 17
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$reload$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 20
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$reload$1;->$parent:Landroid/view/ViewGroup;

    .line 22
    iget-object v1, p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->onDismiss:Ljava/lang/Runnable;

    .line 24
    const/4 v2, 0x0

    .line 26
    if-nez v1, :cond_0

    .line 27
    move-object v1, v2

    .line 29
    :cond_0
    iget-object v3, p1, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    .line 30
    if-nez v3, :cond_1

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    move-object v2, v3

    .line 35
    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->show(Landroid/view/ViewGroup;Ljava/lang/Runnable;Landroid/content/Context;)V

    .line 36
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$reload$1;->$parent:Landroid/view/ViewGroup;

    .line 39
    const/4 p1, 0x2

    .line 41
    new-array p1, p1, [F

    .line 42
    fill-array-data p1, :array_0

    .line 44
    const-string v0, "alpha"

    .line 47
    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 49
    move-result-object p0

    .line 52
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    .line 55
    invoke-direct {p1, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 57
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 60
    const-wide/16 v0, 0xc8

    .line 63
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 65
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 68
    return-void

    .line 71
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 72
.end method
