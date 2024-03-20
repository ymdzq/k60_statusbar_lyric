.class public Lcom/android/keyguard/KeyguardStatusView;
.super Landroid/widget/GridLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

.field public mDrawAlpha:I

.field public mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

.field public mMediaHostContainer:Landroid/view/View;

.field public mStatusViewContainer:Landroid/view/ViewGroup;


# direct methods
.method public static synthetic $r8$lambda$2zLb5nro1dltopXz_AUx2yl_rM4(Lcom/android/keyguard/KeyguardStatusView;Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    return-void
    .line 5
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/keyguard/KeyguardConstants;->DEBUG:Z

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xff

    .line 4
    iput p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mDrawAlpha:I

    return-void
.end method


# virtual methods
.method public final animate()Landroid/view/ViewPropertyAnimator;
    .locals 1

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-super {p0}, Landroid/widget/GridLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 6
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 11
    const-string v0, "KeyguardStatusView does not support ViewPropertyAnimator. Use PropertyAnimator instead."

    .line 13
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p0
    .line 18
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDrawAlpha:I

    .line 2
    new-instance v1, Lcom/android/keyguard/KeyguardStatusView$$ExternalSyntheticLambda0;

    .line 4
    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardStatusView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 6
    sget v2, Lcom/android/keyguard/KeyguardClockFrame;->$r8$clinit:I

    .line 9
    invoke-static {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardClockFrame$Companion;->saveCanvasAlpha(Landroid/view/View;Landroid/graphics/Canvas;ILkotlin/jvm/functions/Function1;)V

    .line 11
    return-void
    .line 14
.end method

.method public final onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/GridLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a08f0    # @id/status_view_container

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mStatusViewContainer:Landroid/view/ViewGroup;

    .line 14
    const v0, 0x7f0a0476    # @id/keyguard_clock_container

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    .line 23
    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    .line 25
    iget-object v0, p0, Landroid/widget/GridLayout;->mContext:Landroid/content/Context;

    .line 27
    sget v1, Lcom/android/keyguard/KeyguardClockAccessibilityDelegate;->$r8$clinit:I

    .line 29
    const v1, 0x7f1305d4    # @string/keyguard_fancy_colon ''

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    move-result v0

    .line 41
    xor-int/lit8 v0, v0, 0x1

    .line 42
    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    .line 46
    new-instance v1, Lcom/android/keyguard/KeyguardClockAccessibilityDelegate;

    .line 48
    iget-object v2, p0, Landroid/widget/GridLayout;->mContext:Landroid/content/Context;

    .line 50
    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardClockAccessibilityDelegate;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 55
    :cond_0
    const v0, 0x7f0a049f    # @id/keyguard_slice_view

    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v0

    .line 64
    check-cast v0, Lcom/android/keyguard/KeyguardSliceView;

    .line 65
    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    .line 67
    const v0, 0x7f0a08f1    # @id/status_view_media_container

    .line 69
    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mMediaHostContainer:Landroid/view/View;

    .line 76
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    .line 78
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSliceView;->setDarkAmount(F)V

    .line 81
    return-void
    .line 84
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    const-string v0, "KeyguardStatusView#onMeasure"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1, p2}, Landroid/widget/GridLayout;->onMeasure(II)V

    .line 7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 10
    return-void
    .line 13
.end method

.method public final onSetAlpha(I)Z
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mDrawAlpha:I

    .line 2
    const/4 p0, 0x1

    .line 4
    return p0
    .line 5
.end method

.method public setChildrenTranslationY(FZ)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/android/keyguard/KeyguardStatusView;->mMediaHostContainer:Landroid/view/View;

    .line 4
    invoke-static {p2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    .line 6
    move-result-object p2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 11
    move-result-object p2

    .line 14
    :goto_0
    const/4 v0, 0x0

    .line 15
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mStatusViewContainer:Landroid/view/ViewGroup;

    .line 16
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    move-result v1

    .line 21
    if-ge v0, v1, :cond_2

    .line 22
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mStatusViewContainer:Landroid/view/ViewGroup;

    .line 24
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v1

    .line 29
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 30
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 36
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 39
    goto :goto_1

    .line 41
    :cond_2
    return-void
    .line 42
.end method
