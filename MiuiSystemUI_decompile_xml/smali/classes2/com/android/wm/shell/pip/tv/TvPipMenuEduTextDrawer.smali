.class public final Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mCloseDrawerRunnable:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda0;

.field public final mEduTextView:Landroid/widget/TextView;

.field public final mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$Listener;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMarqueeAnimSpeed:F

.field public final mStartScrollEduTextRunnable:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda0;


# direct methods
.method public static $r8$lambda$2GDlmZOpGSSk_mkyIVJnZDt_4Mk(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 9
    const-string v1, "TvPipMenuEduTextDrawer"

    .line 11
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 16
    const v2, 0x7ec7cbfe

    .line 17
    const-string v3, "%s: closeDrawer()"

    .line 20
    invoke-static {v0, v2, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->i(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 22
    :cond_0
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object v0

    .line 30
    const v1, 0x7f0b00eb    # @integer/pip_edu_text_view_exit_animation_duration '300'

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 34
    move-result v0

    .line 37
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object v1

    .line 43
    const v2, 0x7f0b00ec    # @integer/pip_edu_text_window_exit_animation_duration '1000'

    .line 44
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 47
    move-result v1

    .line 50
    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    .line 51
    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 53
    move-result-object v2

    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 58
    move-result-object v2

    .line 61
    sget-object v3, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->EXIT:Landroid/view/animation/Interpolator;

    .line 62
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 64
    move-result-object v2

    .line 67
    int-to-long v3, v0

    .line 68
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 69
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 73
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 76
    move-result v0

    .line 79
    const/4 v2, 0x0

    .line 80
    filled-new-array {v0, v2}, [I

    .line 81
    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 85
    move-result-object v0

    .line 88
    int-to-long v3, v1

    .line 89
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 90
    sget-object v1, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->BROWSE:Landroid/view/animation/Interpolator;

    .line 93
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 95
    new-instance v1, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda1;

    .line 98
    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 103
    new-instance v1, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$2;

    .line 106
    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$2;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)V

    .line 108
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 111
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 114
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$Listener;

    .line 117
    check-cast p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 119
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 126
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 128
    iput-object v0, v1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuTemporaryDecorInsets:Landroid/graphics/Insets;

    .line 130
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 132
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mEduTextWindowExitAnimationDuration:I

    .line 134
    invoke-virtual {p0, v0, v2}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds(IZ)V

    .line 136
    return-void
    .line 139
.end method

.method public static synthetic $r8$lambda$lPOhimvo28UhDjb5MHyCarI-R2c(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;Landroid/text/SpannableString;Landroid/text/SpannedString;Landroid/text/Annotation;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 8
    move-result-object p0

    .line 11
    const v1, 0x7f080ecb    # @drawable/home_icon 'res/drawable/home_icon.xml'

    .line 12
    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 15
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 21
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 24
    move-result v0

    .line 27
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 28
    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 33
    new-instance v0, Lcom/android/wm/shell/pip/tv/CenteredImageSpan;

    .line 36
    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/tv/CenteredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 38
    invoke-virtual {p2, p3}, Landroid/text/SpannedString;->getSpanStart(Ljava/lang/Object;)I

    .line 41
    move-result p0

    .line 44
    invoke-virtual {p2, p3}, Landroid/text/SpannedString;->getSpanEnd(Ljava/lang/Object;)I

    .line 45
    move-result p2

    .line 48
    const/16 p3, 0x21

    .line 49
    invoke-virtual {p1, v0, p0, p2, p3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 51
    :cond_0
    return-void
    .line 54
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$Listener;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda0;

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;I)V

    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mCloseDrawerRunnable:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda0;

    .line 12
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda0;

    .line 14
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, p0, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;I)V

    .line 17
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mStartScrollEduTextRunnable:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda0;

    .line 20
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$Listener;

    .line 22
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mMainHandler:Landroid/os/Handler;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 30
    move-result-object p1

    .line 33
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 34
    const/high16 p2, 0x41f00000    # 30.0f

    .line 36
    mul-float/2addr p1, p2

    .line 38
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 39
    div-float/2addr p1, p2

    .line 41
    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mMarqueeAnimSpeed:F

    .line 42
    new-instance p1, Landroid/widget/TextView;

    .line 44
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 46
    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    .line 51
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    move-result-object p2

    .line 58
    const p3, 0x7f070e8d    # @dimen/pip_menu_edu_text_view_height '24.0dp'

    .line 59
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 62
    move-result p2

    .line 65
    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    move-result-object p3

    .line 71
    const v0, 0x7f0b00e9    # @integer/pip_edu_text_scroll_times '2'

    .line 72
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 75
    move-result p3

    .line 78
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 79
    const/16 v3, 0x51

    .line 81
    const/4 v4, -0x1

    .line 83
    invoke-direct {v0, v4, p2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 84
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    const/16 v0, 0x11

    .line 90
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 92
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 95
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 98
    move-result-object v3

    .line 101
    const v5, 0x7f1308e4    # @string/pip_edu_text 'Double press <annotation icon="home_icon">HOME</annotation> for controls'

    .line 102
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 105
    move-result-object v3

    .line 108
    check-cast v3, Landroid/text/SpannedString;

    .line 109
    new-instance v5, Landroid/text/SpannableString;

    .line 111
    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v3}, Landroid/text/SpannedString;->length()I

    .line 116
    move-result v6

    .line 119
    const-class v7, Landroid/text/Annotation;

    .line 120
    invoke-virtual {v3, v1, v6, v7}, Landroid/text/SpannedString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 122
    move-result-object v6

    .line 125
    check-cast v6, [Landroid/text/Annotation;

    .line 126
    invoke-static {v6}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 128
    move-result-object v6

    .line 131
    invoke-interface {v6}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 132
    move-result-object v6

    .line 135
    new-instance v7, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda2;

    .line 136
    invoke-direct {v7, p0, v5, v3}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;Landroid/text/SpannableString;Landroid/text/SpannedString;)V

    .line 138
    invoke-virtual {v6, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 141
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    .line 147
    const v3, 0x7f1405e2    # @style/TvPipEduText

    .line 150
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 153
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 156
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 158
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 161
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 164
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 167
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 170
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 173
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 176
    invoke-direct {p1, v4, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 178
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 184
    return-void
    .line 187
.end method


# virtual methods
.method public final closeIfNeeded()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mMainHandler:Landroid/os/Handler;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mCloseDrawerRunnable:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda0;

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 16
    const-string v1, "TvPipMenuEduTextDrawer"

    .line 18
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    const v2, -0x915d2e6

    .line 24
    const/4 v3, 0x0

    .line 27
    const-string v4, "%s: close(), closing the edu text drawer because of user action"

    .line 28
    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mMainHandler:Landroid/os/Handler;

    .line 33
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mCloseDrawerRunnable:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda0;

    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mCloseDrawerRunnable:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda0;

    .line 40
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda0;->run()V

    .line 42
    :cond_1
    return-void
    .line 45
.end method

.method public final init()V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    const-string v1, "TvPipMenuEduTextDrawer"

    .line 4
    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 8
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 13
    const v3, 0x3c86ad45

    .line 14
    const-string v4, "%s: init()"

    .line 17
    invoke-static {v0, v3, v4, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->i(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :cond_0
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v0

    .line 27
    const v2, 0x7f0b00ea    # @integer/pip_edu_text_start_scroll_delay '2000'

    .line 28
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 31
    move-result v0

    .line 34
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->isEduTextMarqueed()Z

    .line 35
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mMainHandler:Landroid/os/Handler;

    .line 41
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mStartScrollEduTextRunnable:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda0;

    .line 43
    int-to-long v4, v0

    .line 45
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mMainHandler:Landroid/os/Handler;

    .line 49
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mCloseDrawerRunnable:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda0;

    .line 51
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->isEduTextMarqueed()Z

    .line 53
    move-result v4

    .line 56
    if-eqz v4, :cond_2

    .line 57
    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    .line 59
    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    .line 61
    move-result v4

    .line 64
    int-to-float v4, v4

    .line 65
    const/high16 v5, 0x40400000    # 3.0f

    .line 66
    div-float/2addr v4, v5

    .line 68
    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    .line 69
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 71
    move-result-object v5

    .line 74
    const/4 v6, 0x0

    .line 75
    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineWidth(I)F

    .line 76
    move-result v5

    .line 79
    float-to-int v5, v5

    .line 80
    int-to-float v5, v5

    .line 81
    add-float/2addr v5, v4

    .line 82
    iget v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mMarqueeAnimSpeed:F

    .line 83
    div-float/2addr v5, v4

    .line 85
    const/high16 v4, 0x44960000    # 1200.0f

    .line 86
    add-float/2addr v5, v4

    .line 88
    float-to-int v4, v5

    .line 89
    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    .line 90
    invoke-virtual {v5}, Landroid/widget/TextView;->getMarqueeRepeatLimit()I

    .line 92
    move-result v5

    .line 95
    mul-int/2addr v5, v4

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    iget-object v4, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 100
    move-result-object v4

    .line 103
    const v5, 0x7f0b00e8    # @integer/pip_edu_text_non_scroll_show_duration '10500'

    .line 104
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    .line 107
    move-result v5

    .line 110
    :goto_0
    sget-boolean v4, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 111
    if-eqz v4, :cond_3

    .line 113
    int-to-long v6, v5

    .line 115
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 116
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 118
    move-result-object v6

    .line 121
    filled-new-array {v1, v6}, [Ljava/lang/Object;

    .line 122
    move-result-object v1

    .line 125
    const v6, 0x4e635829    # 9.5355142E8f

    .line 126
    const/4 v7, 0x4

    .line 129
    const-string v8, "%s: getEduTextShowDuration(), showDuration=%d"

    .line 130
    invoke-static {v4, v6, v7, v8, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 132
    :cond_3
    add-int/2addr v0, v5

    .line 135
    int-to-long v0, v0

    .line 136
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    .line 140
    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 142
    move-result-object v0

    .line 145
    new-instance v1, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$1;

    .line 146
    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$1;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)V

    .line 148
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    .line 151
    return-void
    .line 154
.end method

.method public final isEduTextMarqueed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 10
    move-result v1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    .line 15
    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 17
    move-result v1

    .line 20
    sub-int/2addr v0, v1

    .line 21
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    .line 22
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 24
    move-result-object p0

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    .line 29
    move-result p0

    .line 32
    float-to-int p0, p0

    .line 33
    if-ge v0, p0, :cond_0

    .line 34
    const/4 v1, 0x1

    .line 36
    :cond_0
    return v1
    .line 37
.end method
