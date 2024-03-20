.class public Lcom/android/keyguard/KeyguardClockSwitch;
.super Landroid/widget/RelativeLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field mAnimateOnLayout:Z

.field mChildrenAreLaidOut:Z

.field mClockInAnim:Landroid/animation/AnimatorSet;

.field mClockOutAnim:Landroid/animation/AnimatorSet;

.field public mClockSwitchYAmount:I

.field public mDisplayedClockSize:Ljava/lang/Integer;

.field public mDrawAlpha:I

.field public mLargeClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

.field public mLogBuffer:Lcom/android/systemui/log/LogBuffer;

.field public mSmallClockFrame:Landroid/widget/FrameLayout;

.field public mSmartspaceTopOffset:I

.field public mSplitShadeCentered:Z

.field public mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

.field mStatusAreaAnim:Landroid/animation/AnimatorSet;

.field public screenOffsetYPadding:I


# direct methods
.method public static synthetic $r8$lambda$in3twPDzk2GPRGUKrayRbeXoBvQ(Lcom/android/keyguard/KeyguardClockSwitch;Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->screenOffsetYPadding:I

    .line 6
    const/16 p2, 0xff

    .line 8
    iput p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDrawAlpha:I

    .line 10
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSplitShadeCentered:Z

    .line 12
    const/4 p2, 0x0

    .line 14
    iput-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDisplayedClockSize:Ljava/lang/Integer;

    .line 15
    iput-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    .line 17
    iput-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    .line 19
    iput-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusAreaAnim:Landroid/animation/AnimatorSet;

    .line 21
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mChildrenAreLaidOut:Z

    .line 23
    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mAnimateOnLayout:Z

    .line 26
    iput-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLogBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 28
    return-void
    .line 30
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDrawAlpha:I

    .line 2
    new-instance v1, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda1;

    .line 4
    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    .line 6
    sget v2, Lcom/android/keyguard/KeyguardClockFrame;->$r8$clinit:I

    .line 9
    invoke-static {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardClockFrame$Companion;->saveCanvasAlpha(Landroid/view/View;Landroid/graphics/Canvas;ILkotlin/jvm/functions/Function1;)V

    .line 11
    return-void
    .line 14
.end method

.method public getLogBuffer()Lcom/android/systemui/log/LogBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLogBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 2
    return-object p0
    .line 4
.end method

.method public final onConfigChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    const v1, 0x7f070465    # @dimen/keyguard_clock_switch_y_shift '14.0dp'

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v0

    .line 14
    iput v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockSwitchYAmount:I

    .line 15
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v0

    .line 22
    const v1, 0x7f0704b0    # @dimen/keyguard_smartspace_top_offset '12.0dp'

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    move-result v0

    .line 29
    iput v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmartspaceTopOffset:I

    .line 30
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v0

    .line 37
    sget-object v1, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 38
    const v1, 0x7f07126a    # @dimen/weather_clock_smartspace_scale '1.0'

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 43
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object v0

    .line 51
    const v1, 0x7f07126b    # @dimen/weather_clock_smartspace_translateX '0.0dp'

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 55
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    move-result-object v0

    .line 63
    const v1, 0x7f07126c    # @dimen/weather_clock_smartspace_translateY '0.0dp'

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 67
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDisplayedClockSize:Ljava/lang/Integer;

    .line 70
    if-eqz v0, :cond_1

    .line 72
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mChildrenAreLaidOut:Z

    .line 74
    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 78
    move-result v0

    .line 81
    const/4 v1, 0x0

    .line 82
    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x1

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    move v0, v1

    .line 87
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardClockSwitch;->updateClockViews(ZZ)V

    .line 88
    :cond_1
    return-void
    .line 91
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a052d    # @id/lockscreen_clock_view

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/FrameLayout;

    .line 12
    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Landroid/widget/FrameLayout;

    .line 14
    const v0, 0x7f0a052e    # @id/lockscreen_clock_view_large

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/keyguard/KeyguardClockFrame;

    .line 23
    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    .line 25
    const v0, 0x7f0a04a1    # @id/keyguard_status_area

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/keyguard/KeyguardStatusAreaView;

    .line 34
    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    .line 36
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->onConfigChanged()V

    .line 38
    return-void
    .line 41
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 2
    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda0;

    .line 7
    const/4 p2, 0x0

    .line 9
    invoke-direct {p1, p0, p2}, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;I)V

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDisplayedClockSize:Ljava/lang/Integer;

    .line 16
    const/4 p2, 0x1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mChildrenAreLaidOut:Z

    .line 21
    if-nez p1, :cond_1

    .line 23
    new-instance p1, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda0;

    .line 25
    invoke-direct {p1, p0, p2}, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;I)V

    .line 27
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 30
    :cond_1
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mChildrenAreLaidOut:Z

    .line 33
    return-void
    .line 35
.end method

.method public final onSetAlpha(I)Z
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDrawAlpha:I

    .line 2
    const/4 p0, 0x1

    .line 4
    return p0
    .line 5
.end method

.method public setLogBuffer(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLogBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 2
    return-void
    .line 4
.end method

.method public setSplitShadeCentered(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSplitShadeCentered:Z

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSplitShadeCentered:Z

    .line 6
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDisplayedClockSize:Ljava/lang/Integer;

    .line 8
    if-eqz p1, :cond_1

    .line 10
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mChildrenAreLaidOut:Z

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result p1

    .line 19
    const/4 v0, 0x1

    .line 20
    if-nez p1, :cond_0

    .line 21
    move p1, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->updateClockViews(ZZ)V

    .line 26
    :cond_1
    return-void
    .line 29
.end method

.method public final updateClockViews(ZZ)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    iget-object v3, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mLogBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 8
    if-eqz v3, :cond_0

    .line 10
    sget-object v4, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 12
    new-instance v5, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda2;

    .line 14
    invoke-direct {v5, v0, v1, v2}, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;ZZ)V

    .line 16
    new-instance v6, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda3;

    .line 19
    invoke-direct {v6}, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda3;-><init>()V

    .line 21
    const-string v7, "KeyguardClockSwitch"

    .line 24
    invoke-virtual {v3, v7, v4, v5, v6}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 26
    :cond_0
    iget-object v3, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    .line 29
    if-eqz v3, :cond_1

    .line 31
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 33
    :cond_1
    iget-object v3, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    .line 36
    if-eqz v3, :cond_2

    .line 38
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 40
    :cond_2
    iget-object v3, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusAreaAnim:Landroid/animation/AnimatorSet;

    .line 43
    if-eqz v3, :cond_3

    .line 45
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 47
    :cond_3
    const/4 v3, 0x0

    .line 50
    iput-object v3, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    .line 51
    iput-object v3, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    .line 53
    iput-object v3, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusAreaAnim:Landroid/animation/AnimatorSet;

    .line 55
    const/4 v3, 0x0

    .line 57
    const/4 v4, 0x0

    .line 58
    if-eqz v1, :cond_5

    .line 59
    iget-object v5, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Landroid/widget/FrameLayout;

    .line 61
    iget-object v6, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    .line 63
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    .line 65
    move-result v7

    .line 68
    const/4 v8, -0x1

    .line 69
    if-ne v7, v8, :cond_4

    .line 70
    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 72
    :cond_4
    iget-object v7, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Landroid/widget/FrameLayout;

    .line 75
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    .line 77
    move-result v7

    .line 80
    iget-object v8, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    .line 81
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getTop()I

    .line 83
    move-result v8

    .line 86
    sub-int/2addr v7, v8

    .line 87
    iget v8, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmartspaceTopOffset:I

    .line 88
    add-int/2addr v7, v8

    .line 90
    int-to-float v7, v7

    .line 91
    move v8, v7

    .line 92
    move v7, v3

    .line 93
    goto :goto_0

    .line 94
    :cond_5
    iget-object v6, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Landroid/widget/FrameLayout;

    .line 95
    iget-object v5, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    .line 97
    iget v7, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockSwitchYAmount:I

    .line 99
    int-to-float v7, v7

    .line 101
    const/high16 v8, -0x40800000    # -1.0f

    .line 102
    mul-float/2addr v7, v8

    .line 104
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 105
    move v8, v3

    .line 108
    :goto_0
    const/high16 v9, 0x3f800000    # 1.0f

    .line 109
    if-nez v2, :cond_6

    .line 111
    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    .line 113
    invoke-virtual {v5, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 116
    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    .line 119
    invoke-virtual {v6, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 122
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    .line 128
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 130
    iget-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    .line 133
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 135
    iget-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    .line 138
    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardStatusAreaView;->setTranslateXFromClockDesign(F)V

    .line 140
    iget-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    .line 143
    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardStatusAreaView;->setTranslateYFromClockDesign(F)V

    .line 145
    iget-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    .line 148
    invoke-virtual {v1, v8}, Lcom/android/keyguard/KeyguardStatusAreaView;->setTranslateYFromClockSize(F)V

    .line 150
    iget-object v0, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Landroid/widget/FrameLayout;

    .line 153
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 155
    return-void

    .line 158
    :cond_6
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 159
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 161
    iput-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    .line 164
    const-wide/16 v10, 0x85

    .line 166
    invoke-virtual {v2, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 168
    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    .line 171
    sget-object v12, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 173
    invoke-virtual {v2, v12}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 175
    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    .line 178
    sget-object v12, Landroid/widget/RelativeLayout;->ALPHA:Landroid/util/Property;

    .line 180
    const/4 v13, 0x1

    .line 182
    new-array v14, v13, [F

    .line 183
    aput v3, v14, v4

    .line 185
    invoke-static {v5, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 187
    move-result-object v12

    .line 190
    sget-object v14, Landroid/widget/RelativeLayout;->TRANSLATION_Y:Landroid/util/Property;

    .line 191
    new-array v15, v13, [F

    .line 193
    aput v7, v15, v4

    .line 195
    invoke-static {v5, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 197
    move-result-object v5

    .line 200
    filled-new-array {v12, v5}, [Landroid/animation/Animator;

    .line 201
    move-result-object v5

    .line 204
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 205
    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    .line 208
    new-instance v5, Lcom/android/keyguard/KeyguardClockSwitch$1;

    .line 210
    invoke-direct {v5, v0, v4}, Lcom/android/keyguard/KeyguardClockSwitch$1;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;I)V

    .line 212
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 215
    invoke-virtual {v6, v3}, Landroid/view/View;->setAlpha(F)V

    .line 218
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 221
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 224
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 226
    iput-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    .line 229
    const-wide/16 v14, 0xa7

    .line 231
    invoke-virtual {v2, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 233
    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    .line 236
    sget-object v5, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 238
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 240
    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    .line 243
    sget-object v5, Landroid/widget/RelativeLayout;->ALPHA:Landroid/util/Property;

    .line 245
    new-array v7, v13, [F

    .line 247
    aput v9, v7, v4

    .line 249
    invoke-static {v6, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 251
    move-result-object v5

    .line 254
    sget-object v7, Landroid/widget/RelativeLayout;->TRANSLATION_Y:Landroid/util/Property;

    .line 255
    new-array v12, v13, [F

    .line 257
    aput v3, v12, v4

    .line 259
    invoke-static {v6, v7, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 261
    move-result-object v6

    .line 264
    filled-new-array {v5, v6}, [Landroid/animation/Animator;

    .line 265
    move-result-object v5

    .line 268
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 269
    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    .line 272
    invoke-virtual {v2, v10, v11}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 274
    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    .line 277
    new-instance v5, Lcom/android/keyguard/KeyguardClockSwitch$1;

    .line 279
    invoke-direct {v5, v0, v13}, Lcom/android/keyguard/KeyguardClockSwitch$1;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;I)V

    .line 281
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 284
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 287
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 289
    iput-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusAreaAnim:Landroid/animation/AnimatorSet;

    .line 292
    const-wide/16 v5, 0x0

    .line 294
    invoke-virtual {v2, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 296
    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusAreaAnim:Landroid/animation/AnimatorSet;

    .line 299
    if-eqz v1, :cond_7

    .line 301
    const-wide/16 v5, 0x3c7

    .line 303
    goto :goto_1

    .line 305
    :cond_7
    const-wide/16 v5, 0x1d3

    .line 306
    :goto_1
    invoke-virtual {v2, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 308
    iget-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusAreaAnim:Landroid/animation/AnimatorSet;

    .line 311
    sget-object v2, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    .line 313
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 315
    iget-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusAreaAnim:Landroid/animation/AnimatorSet;

    .line 318
    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    .line 320
    sget-object v5, Lcom/android/keyguard/KeyguardStatusAreaView;->TRANSLATE_Y_CLOCK_SIZE:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 322
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;->val$property:Landroid/util/Property;

    .line 324
    new-array v6, v13, [F

    .line 326
    aput v8, v6, v4

    .line 328
    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 330
    move-result-object v14

    .line 333
    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Landroid/widget/FrameLayout;

    .line 334
    sget-object v5, Landroid/widget/RelativeLayout;->TRANSLATION_Y:Landroid/util/Property;

    .line 336
    new-array v6, v13, [F

    .line 338
    aput v8, v6, v4

    .line 340
    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 342
    move-result-object v15

    .line 345
    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    .line 346
    sget-object v5, Landroid/widget/RelativeLayout;->SCALE_X:Landroid/util/Property;

    .line 348
    new-array v6, v13, [F

    .line 350
    aput v9, v6, v4

    .line 352
    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 354
    move-result-object v16

    .line 357
    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    .line 358
    sget-object v5, Landroid/widget/RelativeLayout;->SCALE_Y:Landroid/util/Property;

    .line 360
    new-array v6, v13, [F

    .line 362
    aput v9, v6, v4

    .line 364
    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 366
    move-result-object v17

    .line 369
    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    .line 370
    sget-object v5, Lcom/android/keyguard/KeyguardStatusAreaView;->TRANSLATE_X_CLOCK_DESIGN:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 372
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;->val$property:Landroid/util/Property;

    .line 374
    new-array v6, v13, [F

    .line 376
    aput v3, v6, v4

    .line 378
    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 380
    move-result-object v18

    .line 383
    iget-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    .line 384
    sget-object v5, Lcom/android/keyguard/KeyguardStatusAreaView;->TRANSLATE_Y_CLOCK_DESIGN:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 386
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;->val$property:Landroid/util/Property;

    .line 388
    new-array v6, v13, [F

    .line 390
    aput v3, v6, v4

    .line 392
    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 394
    move-result-object v19

    .line 397
    filled-new-array/range {v14 .. v19}, [Landroid/animation/Animator;

    .line 398
    move-result-object v2

    .line 401
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 402
    iget-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusAreaAnim:Landroid/animation/AnimatorSet;

    .line 405
    new-instance v2, Lcom/android/keyguard/KeyguardClockSwitch$1;

    .line 407
    const/4 v3, 0x2

    .line 409
    invoke-direct {v2, v0, v3}, Lcom/android/keyguard/KeyguardClockSwitch$1;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;I)V

    .line 410
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 413
    iget-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    .line 416
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 418
    iget-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    .line 421
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 423
    iget-object v0, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusAreaAnim:Landroid/animation/AnimatorSet;

    .line 426
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 428
    return-void
    .line 431
.end method
