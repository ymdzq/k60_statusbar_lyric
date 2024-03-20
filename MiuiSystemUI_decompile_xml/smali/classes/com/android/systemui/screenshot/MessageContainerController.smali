.class public final Lcom/android/systemui/screenshot/MessageContainerController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public animateOut:Landroid/animation/Animator;

.field public container:Landroid/view/ViewGroup;

.field public detectionNoticeView:Landroid/view/ViewGroup;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public guideline:Landroidx/constraintlayout/widget/Guideline;

.field public final screenshotDetectionController:Lcom/android/systemui/screenshot/ScreenshotDetectionController;

.field public workProfileFirstRunView:Landroid/view/ViewGroup;

.field public final workProfileMessageController:Lcom/android/systemui/screenshot/WorkProfileMessageController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/WorkProfileMessageController;Lcom/android/systemui/screenshot/ScreenshotDetectionController;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/MessageContainerController;->workProfileMessageController:Lcom/android/systemui/screenshot/WorkProfileMessageController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/screenshot/MessageContainerController;->screenshotDetectionController:Lcom/android/systemui/screenshot/ScreenshotDetectionController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/screenshot/MessageContainerController;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final animateInMessageContainer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    move-object v0, v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    return-void

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    .line 15
    if-nez v0, :cond_2

    .line 17
    move-object v0, v1

    .line 19
    :cond_2
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    .line 24
    if-nez v0, :cond_3

    .line 26
    goto :goto_0

    .line 28
    :cond_3
    move-object v1, v0

    .line 29
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 30
    move-result-object v0

    .line 33
    new-instance v1, Lcom/android/systemui/screenshot/MessageContainerController$animateInMessageContainer$1;

    .line 34
    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/MessageContainerController$animateInMessageContainer$1;-><init>(Lcom/android/systemui/screenshot/MessageContainerController;)V

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 39
    return-void
    .line 42
.end method

.method public final getAnimator(Z)Landroid/animation/Animator;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    move-object v0, v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 12
    iget-object v2, p0, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    .line 14
    if-nez v2, :cond_1

    .line 16
    goto :goto_0

    .line 18
    :cond_1
    move-object v1, v2

    .line 19
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    .line 20
    move-result v1

    .line 23
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 24
    add-int/2addr v1, v2

    .line 26
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 27
    add-int/2addr v1, v0

    .line 29
    const/4 v0, 0x2

    .line 30
    if-eqz p1, :cond_2

    .line 31
    new-array p1, v0, [F

    .line 33
    fill-array-data p1, :array_0

    .line 35
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 38
    move-result-object p1

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    new-array p1, v0, [F

    .line 43
    fill-array-data p1, :array_1

    .line 45
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 48
    move-result-object p1

    .line 51
    :goto_1
    const-wide/16 v2, 0x190

    .line 52
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 54
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 57
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 59
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 62
    new-instance v0, Lcom/android/systemui/screenshot/MessageContainerController$getAnimator$1$1;

    .line 65
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/screenshot/MessageContainerController$getAnimator$1$1;-><init>(Lcom/android/systemui/screenshot/MessageContainerController;I)V

    .line 67
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 70
    return-object p1

    .line 73
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 74
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 82
.end method
