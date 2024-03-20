.class Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter;
.super Landroid/transition/Transition;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TRANSITION_PROPERTIES:[Ljava/lang/String;


# instance fields
.field public final mController:Lcom/android/keyguard/KeyguardClockSwitchController;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string/jumbo v0, "splitShadeTransitionAdapter:boundsRight"

    .line 2
    const-string/jumbo v1, "splitShadeTransitionAdapter:xInWindow"

    .line 5
    const-string/jumbo v2, "splitShadeTransitionAdapter:boundsLeft"

    .line 8
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    sput-object v0, Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter;->TRANSITION_PROPERTIES:[Ljava/lang/String;

    .line 15
    return-void
    .line 17
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardClockSwitchController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter;->mController:Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 5
    return-void
    .line 7
.end method

.method public static captureValues(Landroid/transition/TransitionValues;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 2
    iget-object v1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 6
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 13
    const-string/jumbo v2, "splitShadeTransitionAdapter:boundsLeft"

    .line 14
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 20
    iget-object v1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 24
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v1

    .line 31
    const-string/jumbo v2, "splitShadeTransitionAdapter:boundsRight"

    .line 32
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const/4 v0, 0x2

    .line 38
    new-array v0, v0, [I

    .line 39
    iget-object v1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 41
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 43
    iget-object p0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 46
    const/4 v1, 0x0

    .line 48
    aget v0, v0, v1

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v0

    .line 54
    const-string/jumbo v1, "splitShadeTransitionAdapter:xInWindow"

    .line 55
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
    .line 61
.end method


# virtual methods
.method public final captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter;->captureValues(Landroid/transition/TransitionValues;)V

    .line 2
    return-void
    .line 5
.end method

.method public final captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter;->captureValues(Landroid/transition/TransitionValues;)V

    .line 2
    return-void
    .line 5
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 2

    .line 1
    if-eqz p2, :cond_2

    .line 2
    if-nez p3, :cond_0

    .line 4
    goto :goto_1

    .line 6
    :cond_0
    const/4 p1, 0x2

    .line 7
    new-array p1, p1, [F

    .line 8
    fill-array-data p1, :array_0

    .line 10
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 13
    move-result-object p1

    .line 16
    iget-object v0, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 17
    const-string/jumbo v1, "splitShadeTransitionAdapter:boundsLeft"

    .line 19
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Integer;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    move-result v0

    .line 31
    iget-object p2, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 32
    const-string/jumbo v1, "splitShadeTransitionAdapter:xInWindow"

    .line 34
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object p2

    .line 40
    check-cast p2, Ljava/lang/Integer;

    .line 41
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 43
    move-result p2

    .line 46
    iget-object p3, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 47
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object p3

    .line 52
    check-cast p3, Ljava/lang/Integer;

    .line 53
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 55
    move-result p3

    .line 58
    sub-int/2addr p3, p2

    .line 59
    if-lez p3, :cond_1

    .line 60
    const/4 p2, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/4 p2, -0x1

    .line 64
    :goto_0
    new-instance p3, Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter$$ExternalSyntheticLambda0;

    .line 65
    invoke-direct {p3, p0, v0, p2}, Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter;II)V

    .line 67
    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 70
    return-object p1

    .line 73
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 74
    return-object p0

    .line 75
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 76
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter;->TRANSITION_PROPERTIES:[Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method
