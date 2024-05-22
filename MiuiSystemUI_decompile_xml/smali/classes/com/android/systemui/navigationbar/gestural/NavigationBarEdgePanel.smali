.class public Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;
.super Landroid/view/View;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;


# static fields
.field public static final CURRENT_ANGLE:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;

.field public static final CURRENT_TRANSLATION:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;

.field public static final CURRENT_VERTICAL_TRANSLATION:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;

.field public static final RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final RUBBER_BAND_INTERPOLATOR_APPEAR:Landroid/view/animation/Interpolator;


# instance fields
.field public final mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final mAngleAppearForce:Landroidx/dynamicanimation/animation/SpringForce;

.field public final mAngleDisappearForce:Landroidx/dynamicanimation/animation/SpringForce;

.field public mAngleOffset:F

.field public mArrowColor:I

.field public final mArrowColorAnimator:Landroid/animation/ValueAnimator;

.field public mArrowColorDark:I

.field public mArrowColorLight:I

.field public final mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

.field public final mArrowLength:F

.field public mArrowPaddingEnd:I

.field public final mArrowPath:Landroid/graphics/Path;

.field public mArrowStartColor:I

.field public final mArrowThickness:F

.field public mArrowsPointLeft:Z

.field public mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

.field public final mBaseTranslation:F

.field public mCurrentAngle:F

.field public mCurrentArrowColor:I

.field public mCurrentTranslation:F

.field public final mDensity:F

.field public mDesiredAngle:F

.field public mDesiredTranslation:F

.field public mDesiredVerticalTranslation:F

.field public mDisappearAmount:F

.field public final mDisplaySize:Landroid/graphics/Point;

.field public mDragSlopPassed:Z

.field public final mFailsafeRunnable:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;

.field public mFingerOffset:I

.field public final mHandler:Landroid/os/Handler;

.field public mIsDark:Z

.field public mIsLeftPanel:Z

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public mLeftInset:I

.field public mMaxTranslation:F

.field public mMinArrowPosition:I

.field public final mMinDeltaForSwitch:F

.field public final mPaint:Landroid/graphics/Paint;

.field public mPreviousTouchTranslation:F

.field public mProtectionColorDark:I

.field public mProtectionColorLight:I

.field public final mProtectionPaint:Landroid/graphics/Paint;

.field public mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

.field public final mRegularTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

.field public mRightInset:I

.field public final mSamplingRect:Landroid/graphics/Rect;

.field public mScreenSize:I

.field public final mSetGoneEndListener:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$1;

.field public final mShowProtection:Z

.field public mStartX:F

.field public mStartY:F

.field public final mSwipeTriggerThreshold:F

.field public mTotalTouchDelta:F

.field public mTrackingBackArrowLatency:Z

.field public final mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mTriggerBack:Z

.field public final mTriggerBackSpring:Landroidx/dynamicanimation/animation/SpringForce;

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public mVerticalTranslation:F

.field public final mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mVibrationTime:J

.field public final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static bridge synthetic -$$Nest$mgetCurrentAngle(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->getCurrentAngle()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static bridge synthetic -$$Nest$mgetCurrentTranslation(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->getCurrentTranslation()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static bridge synthetic -$$Nest$mgetVerticalTranslation(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->getVerticalTranslation()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 2
    const v1, 0x3e4ccccd    # 0.2f

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 9
    sput-object v0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 12
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 14
    const/high16 v1, 0x3e800000    # 0.25f

    .line 16
    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 18
    sput-object v0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR_APPEAR:Landroid/view/animation/Interpolator;

    .line 21
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;

    .line 23
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;-><init>(I)V

    .line 26
    sput-object v0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->CURRENT_ANGLE:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;

    .line 29
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;

    .line 31
    const/4 v1, 0x1

    .line 33
    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;-><init>(I)V

    .line 34
    sput-object v0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->CURRENT_TRANSLATION:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;

    .line 37
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;

    .line 39
    const/4 v1, 0x2

    .line 41
    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;-><init>(I)V

    .line 42
    sput-object v0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->CURRENT_VERTICAL_TRANSLATION:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;

    .line 45
    return-void
    .line 47
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/statusbar/VibratorHelper;Ljava/util/concurrent/Executor;Lcom/android/systemui/settings/DisplayTracker;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    .line 10
    new-instance v1, Landroid/graphics/Path;

    .line 12
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    .line 17
    new-instance v1, Landroid/graphics/Point;

    .line 19
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDisplaySize:Landroid/graphics/Point;

    .line 24
    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mIsDark:Z

    .line 27
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mShowProtection:Z

    .line 29
    new-instance v2, Landroid/graphics/Rect;

    .line 31
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 33
    iput-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mSamplingRect:Landroid/graphics/Rect;

    .line 36
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTrackingBackArrowLatency:Z

    .line 38
    new-instance v2, Landroid/os/Handler;

    .line 40
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 42
    iput-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v2, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;

    .line 47
    const/4 v3, 0x1

    .line 49
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;I)V

    .line 50
    iput-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mFailsafeRunnable:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;

    .line 53
    new-instance v2, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$1;

    .line 55
    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$1;-><init>(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)V

    .line 57
    iput-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mSetGoneEndListener:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$1;

    .line 60
    const-class v2, Landroid/view/WindowManager;

    .line 62
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    move-result-object v2

    .line 67
    check-cast v2, Landroid/view/WindowManager;

    .line 68
    iput-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mWindowManager:Landroid/view/WindowManager;

    .line 70
    iput-object p3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    move-result-object p3

    .line 77
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 78
    move-result-object p3

    .line 81
    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    .line 82
    iput p3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDensity:F

    .line 84
    const/high16 v2, 0x42000000    # 32.0f

    .line 86
    mul-float/2addr v2, p3

    .line 88
    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mBaseTranslation:F

    .line 89
    const/high16 v4, 0x41900000    # 18.0f

    .line 91
    mul-float/2addr v4, p3

    .line 93
    iput v4, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowLength:F

    .line 94
    const/high16 v4, 0x40200000    # 2.5f

    .line 96
    mul-float/2addr p3, v4

    .line 98
    iput p3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowThickness:F

    .line 99
    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mMinDeltaForSwitch:F

    .line 101
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 103
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 106
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 108
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 111
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 114
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 119
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 121
    const/4 v2, 0x2

    .line 124
    new-array v4, v2, [F

    .line 125
    fill-array-data v4, :array_0

    .line 127
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 130
    move-result-object v4

    .line 133
    iput-object v4, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowColorAnimator:Landroid/animation/ValueAnimator;

    .line 134
    const-wide/16 v5, 0x78

    .line 136
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 138
    new-instance v5, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda1;

    .line 141
    invoke-direct {v5, p0, v1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;I)V

    .line 143
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 146
    new-array v2, v2, [F

    .line 149
    fill-array-data v2, :array_1

    .line 151
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 154
    move-result-object v2

    .line 157
    iput-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    .line 158
    const-wide/16 v4, 0x64

    .line 160
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 162
    sget-object v4, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 165
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 167
    new-instance v4, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda1;

    .line 170
    invoke-direct {v4, p0, v3}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;I)V

    .line 172
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 175
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 178
    sget-object v4, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->CURRENT_ANGLE:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;

    .line 180
    invoke-direct {v2, v4, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)V

    .line 182
    iput-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 185
    new-instance v4, Landroidx/dynamicanimation/animation/SpringForce;

    .line 187
    invoke-direct {v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 189
    const/high16 v5, 0x43fa0000    # 500.0f

    .line 192
    invoke-virtual {v4, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 194
    move-result-object v4

    .line 197
    const/high16 v5, 0x3f000000    # 0.5f

    .line 198
    invoke-virtual {v4, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 200
    move-result-object v4

    .line 203
    iput-object v4, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleAppearForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 204
    new-instance v6, Landroidx/dynamicanimation/animation/SpringForce;

    .line 206
    invoke-direct {v6}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 208
    const v7, 0x44bb8000    # 1500.0f

    .line 211
    invoke-virtual {v6, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 214
    move-result-object v6

    .line 217
    invoke-virtual {v6, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 218
    move-result-object v5

    .line 221
    const/high16 v6, 0x42b40000    # 90.0f

    .line 222
    invoke-virtual {v5, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 224
    move-result-object v5

    .line 227
    iput-object v5, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleDisappearForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 228
    iput-object v4, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 230
    iput v6, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 232
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 234
    sget-object v4, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->CURRENT_TRANSLATION:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;

    .line 236
    invoke-direct {v2, v4, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)V

    .line 238
    iput-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 241
    new-instance v4, Landroidx/dynamicanimation/animation/SpringForce;

    .line 243
    invoke-direct {v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 245
    invoke-virtual {v4, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 248
    move-result-object v4

    .line 251
    const/high16 v5, 0x3f400000    # 0.75f

    .line 252
    invoke-virtual {v4, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 254
    move-result-object v4

    .line 257
    iput-object v4, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mRegularTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 258
    new-instance v6, Landroidx/dynamicanimation/animation/SpringForce;

    .line 260
    invoke-direct {v6}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 262
    const/high16 v8, 0x43e10000    # 450.0f

    .line 265
    invoke-virtual {v6, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 267
    move-result-object v6

    .line 270
    invoke-virtual {v6, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 271
    move-result-object v6

    .line 274
    iput-object v6, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTriggerBackSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 275
    iput-object v4, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 277
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 279
    sget-object v4, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->CURRENT_VERTICAL_TRANSLATION:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;

    .line 281
    invoke-direct {v2, v4, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)V

    .line 283
    iput-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 286
    new-instance v4, Landroidx/dynamicanimation/animation/SpringForce;

    .line 288
    invoke-direct {v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 290
    invoke-virtual {v4, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 293
    move-result-object v4

    .line 296
    invoke-virtual {v4, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 297
    move-result-object v4

    .line 300
    iput-object v4, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 301
    new-instance v2, Landroid/graphics/Paint;

    .line 303
    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 305
    iput-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mProtectionPaint:Landroid/graphics/Paint;

    .line 308
    const/high16 v0, 0x40000000    # 2.0f

    .line 310
    add-float/2addr p3, v0

    .line 312
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 313
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->loadDimens()V

    .line 316
    const p3, 0x7f04021a    # @attr/darkIconTheme

    .line 319
    invoke-static {p3, p1}, Lcom/android/settingslib/Utils;->getThemeAttr(ILandroid/content/Context;)I

    .line 322
    move-result p3

    .line 325
    const v0, 0x7f04046c    # @attr/lightIconTheme

    .line 326
    invoke-static {v0, p1}, Lcom/android/settingslib/Utils;->getThemeAttr(ILandroid/content/Context;)I

    .line 329
    move-result v0

    .line 332
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 333
    invoke-direct {v2, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 335
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 338
    invoke-direct {v0, p1, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 340
    const p3, 0x7f0406c2    # @attr/singleToneColor

    .line 343
    invoke-static {v2, p3, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 346
    move-result v2

    .line 349
    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowColorLight:I

    .line 350
    invoke-static {v0, p3, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 352
    move-result p3

    .line 355
    iput p3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowColorDark:I

    .line 356
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowColorLight:I

    .line 358
    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mProtectionColorDark:I

    .line 360
    iput p3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mProtectionColorLight:I

    .line 362
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->updateIsDark(Z)V

    .line 364
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 367
    move-result p3

    .line 370
    if-nez p3, :cond_0

    .line 371
    move p3, v3

    .line 373
    goto :goto_0

    .line 374
    :cond_0
    move p3, v1

    .line 375
    :goto_0
    iput-boolean p3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    .line 376
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 378
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 381
    move-result-object p3

    .line 384
    const v0, 0x7f070d18    # @dimen/navigation_edge_action_drag_threshold '16.0dp'

    .line 385
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 388
    move-result p3

    .line 391
    iput p3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mSwipeTriggerThreshold:F

    .line 392
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 394
    move-result-object p1

    .line 397
    const p3, 0x7f070d19    # @dimen/navigation_edge_action_progress_threshold '412.0dp'

    .line 398
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 401
    const/16 p1, 0x8

    .line 404
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 409
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 411
    move-result p1

    .line 414
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 415
    if-nez p1, :cond_1

    .line 418
    move v1, v3

    .line 420
    :cond_1
    new-instance p1, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 421
    new-instance p3, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$5;

    .line 423
    invoke-direct {p3, p0, v1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$5;-><init>(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;Z)V

    .line 425
    invoke-direct {p1, p0, p3, p4}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;-><init>(Landroid/view/View;Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;Ljava/util/concurrent/Executor;)V

    .line 428
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 431
    iput-boolean v3, p1, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mWindowVisible:Z

    .line 433
    invoke-virtual {p1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingListener()V

    .line 435
    xor-int/lit8 p1, v1, 0x1

    .line 438
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mShowProtection:Z

    .line 440
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 442
    return-void

    .line 444
    nop

    .line 445
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 446
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 454
.end method

.method private getCurrentAngle()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mCurrentAngle:F

    .line 2
    return p0
    .line 4
.end method

.method private getCurrentTranslation()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mCurrentTranslation:F

    .line 2
    return p0
    .line 4
.end method

.method private getStaticArrowWidth()F
    .locals 2

    .line 1
    const/high16 v0, 0x42600000    # 56.0f

    .line 2
    float-to-double v0, v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 5
    move-result-wide v0

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 9
    move-result-wide v0

    .line 12
    double-to-float v0, v0

    .line 13
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowLength:F

    .line 14
    mul-float/2addr v0, p0

    .line 16
    return v0
    .line 17
.end method

.method private getVerticalTranslation()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVerticalTranslation:F

    .line 2
    return p0
    .line 4
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "NavigationBarEdgePanel:"

    .line 2
    const-string v1, "  mIsLeftPanel="

    .line 4
    invoke-static {p1, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mIsLeftPanel:Z

    .line 10
    const-string v2, "  mTriggerBack="

    .line 12
    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v0

    .line 17
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTriggerBack:Z

    .line 18
    const-string v2, "  mDragSlopPassed="

    .line 20
    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    move-result-object v0

    .line 25
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDragSlopPassed:Z

    .line 26
    const-string v2, "  mCurrentAngle="

    .line 28
    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object v0

    .line 33
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mCurrentAngle:F

    .line 34
    const-string v2, "  mDesiredAngle="

    .line 36
    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/LockIconView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    move-result-object v0

    .line 41
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDesiredAngle:F

    .line 42
    const-string v2, "  mCurrentTranslation="

    .line 44
    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/LockIconView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move-result-object v0

    .line 49
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mCurrentTranslation:F

    .line 50
    const-string v2, "  mDesiredTranslation="

    .line 52
    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/LockIconView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    move-result-object v0

    .line 57
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDesiredTranslation:F

    .line 58
    const-string v2, "  mTranslationAnimation running="

    .line 60
    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/LockIconView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 66
    iget-boolean v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 68
    invoke-static {v0, v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 70
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->dump(Ljava/io/PrintWriter;)V

    .line 75
    return-void
    .line 78
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final loadDimens()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f070d39    # @dimen/navigation_edge_panel_padding '8.0dp'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    move-result v1

    .line 12
    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowPaddingEnd:I

    .line 13
    const v1, 0x7f070d25    # @dimen/navigation_edge_arrow_min_y '64.0dp'

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    move-result v1

    .line 21
    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mMinArrowPosition:I

    .line 22
    const v1, 0x7f070d37    # @dimen/navigation_edge_finger_offset '64.0dp'

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 27
    move-result v0

    .line 30
    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mFingerOffset:I

    .line 31
    return-void
    .line 33
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 5
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->loadDimens()V

    .line 19
    return-void
    .line 22
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mHandler:Landroid/os/Handler;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mFailsafeRunnable:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mWindowManager:Landroid/view/WindowManager;

    .line 9
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 11
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->stop()V

    .line 16
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 20
    return-void
    .line 22
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mCurrentTranslation:F

    .line 2
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowThickness:F

    .line 4
    const/high16 v2, 0x40000000    # 2.0f

    .line 6
    div-float/2addr v1, v2

    .line 8
    sub-float/2addr v0, v1

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 10
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mIsLeftPanel:Z

    .line 13
    if-eqz v1, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 18
    move-result v1

    .line 21
    int-to-float v1, v1

    .line 22
    sub-float v0, v1, v0

    .line 23
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 25
    move-result v1

    .line 28
    int-to-float v1, v1

    .line 29
    const/high16 v2, 0x3f000000    # 0.5f

    .line 30
    mul-float/2addr v1, v2

    .line 32
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVerticalTranslation:F

    .line 33
    add-float/2addr v1, v2

    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 36
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mCurrentAngle:F

    .line 39
    float-to-double v0, v0

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 42
    move-result-wide v0

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 46
    move-result-wide v0

    .line 49
    double-to-float v0, v0

    .line 50
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowLength:F

    .line 51
    mul-float/2addr v0, v1

    .line 53
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mCurrentAngle:F

    .line 54
    float-to-double v1, v1

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    .line 57
    move-result-wide v1

    .line 60
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 61
    move-result-wide v1

    .line 64
    double-to-float v1, v1

    .line 65
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowLength:F

    .line 66
    mul-float/2addr v1, v2

    .line 68
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    .line 69
    if-nez v2, :cond_1

    .line 71
    neg-float v0, v0

    .line 73
    :cond_1
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDisappearAmount:F

    .line 74
    const/high16 v3, 0x3f800000    # 1.0f

    .line 76
    const/high16 v4, 0x3f400000    # 0.75f

    .line 78
    invoke-static {v3, v4, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 80
    move-result v2

    .line 83
    mul-float/2addr v0, v2

    .line 84
    mul-float/2addr v1, v2

    .line 85
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    .line 86
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 88
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    .line 91
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 93
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    .line 96
    const/4 v3, 0x0

    .line 98
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 99
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    .line 102
    neg-float v1, v1

    .line 104
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    .line 108
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mShowProtection:Z

    .line 110
    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mProtectionPaint:Landroid/graphics/Paint;

    .line 114
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    .line 119
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 124
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTrackingBackArrowLatency:Z

    .line 127
    if-eqz p1, :cond_3

    .line 129
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 131
    const/16 v0, 0xf

    .line 133
    invoke-virtual {p1, v0}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 135
    const/4 p1, 0x0

    .line 138
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTrackingBackArrowLatency:Z

    .line 139
    :cond_3
    return-void
    .line 141
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 5
    move-result p1

    .line 8
    iget p2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowPaddingEnd:I

    .line 9
    sub-int/2addr p1, p2

    .line 11
    int-to-float p1, p1

    .line 12
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mMaxTranslation:F

    .line 13
    return-void
    .line 15
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 6
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 17
    move-result v0

    .line 20
    const/high16 v1, 0x40000000    # 2.0f

    .line 21
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz v0, :cond_1c

    .line 26
    const/16 v5, 0x8

    .line 28
    const-wide/16 v6, 0xc8

    .line 30
    const/4 v8, 0x0

    .line 32
    const/16 v9, 0x3e8

    .line 33
    if-eq v0, v3, :cond_13

    .line 35
    const/4 v10, 0x2

    .line 37
    if-eq v0, v10, :cond_3

    .line 38
    const/4 p1, 0x3

    .line 40
    if-eq v0, p1, :cond_1

    .line 41
    goto/16 :goto_8

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    .line 45
    invoke-interface {p1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;->cancelBack()V

    .line 47
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 50
    iget-boolean v0, p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 52
    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mSetGoneEndListener:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$1;

    .line 56
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 58
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mHandler:Landroid/os/Handler;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mFailsafeRunnable:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mHandler:Landroid/os/Handler;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mFailsafeRunnable:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;

    .line 70
    invoke-virtual {p1, v0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 76
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 79
    invoke-virtual {p1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->stop()V

    .line 81
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 84
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 86
    iput-object v8, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 89
    goto/16 :goto_8

    .line 91
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 93
    move-result v0

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 97
    move-result p1

    .line 100
    iget v5, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mStartX:F

    .line 101
    sub-float v5, v0, v5

    .line 103
    invoke-static {v5}, Landroid/util/MathUtils;->abs(F)F

    .line 105
    move-result v5

    .line 108
    iget v6, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mStartY:F

    .line 109
    sub-float/2addr p1, v6

    .line 111
    iget v6, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mPreviousTouchTranslation:F

    .line 112
    sub-float v6, v5, v6

    .line 114
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 116
    move-result v7

    .line 119
    cmpl-float v7, v7, v2

    .line 120
    if-lez v7, :cond_5

    .line 122
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    .line 124
    move-result v7

    .line 127
    iget v8, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTotalTouchDelta:F

    .line 128
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    .line 130
    move-result v8

    .line 133
    cmpl-float v7, v7, v8

    .line 134
    if-nez v7, :cond_4

    .line 136
    iget v7, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTotalTouchDelta:F

    .line 138
    add-float/2addr v7, v6

    .line 140
    iput v7, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTotalTouchDelta:F

    .line 141
    goto :goto_1

    .line 143
    :cond_4
    iput v6, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTotalTouchDelta:F

    .line 144
    :cond_5
    :goto_1
    iput v5, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mPreviousTouchTranslation:F

    .line 146
    iget-boolean v6, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDragSlopPassed:Z

    .line 148
    const/high16 v7, 0x3f800000    # 1.0f

    .line 150
    if-nez v6, :cond_6

    .line 152
    iget v6, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mSwipeTriggerThreshold:F

    .line 154
    cmpl-float v6, v5, v6

    .line 156
    if-lez v6, :cond_6

    .line 158
    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDragSlopPassed:Z

    .line 160
    iget-object v6, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 162
    invoke-virtual {v6, v10}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 167
    move-result-wide v10

    .line 170
    iput-wide v10, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVibrationTime:J

    .line 171
    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDisappearAmount:F

    .line 173
    invoke-virtual {p0, v7}, Landroid/view/View;->setAlpha(F)V

    .line 175
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->setTriggerBack(ZZ)V

    .line 178
    :cond_6
    iget v6, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mBaseTranslation:F

    .line 181
    cmpl-float v8, v5, v6

    .line 183
    const/high16 v10, 0x40800000    # 4.0f

    .line 185
    if-lez v8, :cond_7

    .line 187
    sub-float/2addr v5, v6

    .line 189
    iget v8, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mScreenSize:I

    .line 190
    int-to-float v8, v8

    .line 192
    sub-float/2addr v8, v6

    .line 193
    div-float/2addr v5, v8

    .line 194
    invoke-static {v5}, Landroid/util/MathUtils;->saturate(F)F

    .line 195
    move-result v5

    .line 198
    sget-object v6, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 199
    check-cast v6, Landroid/view/animation/PathInterpolator;

    .line 201
    invoke-virtual {v6, v5}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 203
    move-result v5

    .line 206
    iget v6, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mMaxTranslation:F

    .line 207
    iget v8, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mBaseTranslation:F

    .line 209
    invoke-static {v6, v8, v5, v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 211
    move-result v5

    .line 214
    goto :goto_2

    .line 215
    :cond_7
    sub-float v5, v6, v5

    .line 216
    div-float/2addr v5, v6

    .line 218
    invoke-static {v5}, Landroid/util/MathUtils;->saturate(F)F

    .line 219
    move-result v5

    .line 222
    sget-object v6, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR_APPEAR:Landroid/view/animation/Interpolator;

    .line 223
    check-cast v6, Landroid/view/animation/PathInterpolator;

    .line 225
    invoke-virtual {v6, v5}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 227
    move-result v5

    .line 230
    iget v6, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mBaseTranslation:F

    .line 231
    div-float v8, v6, v10

    .line 233
    mul-float/2addr v8, v5

    .line 235
    sub-float v5, v6, v8

    .line 236
    :goto_2
    iget-boolean v6, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTriggerBack:Z

    .line 238
    iget v8, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTotalTouchDelta:F

    .line 240
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 242
    move-result v8

    .line 245
    iget v11, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mMinDeltaForSwitch:F

    .line 246
    cmpl-float v8, v8, v11

    .line 248
    if-lez v8, :cond_9

    .line 250
    iget v6, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTotalTouchDelta:F

    .line 252
    cmpl-float v6, v6, v2

    .line 254
    if-lez v6, :cond_8

    .line 256
    move v6, v3

    .line 258
    goto :goto_3

    .line 259
    :cond_8
    move v6, v4

    .line 260
    :cond_9
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 261
    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 263
    iget-object v8, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 266
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 268
    move-result v8

    .line 271
    iget-object v9, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 272
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 274
    move-result v9

    .line 277
    invoke-static {v8, v9}, Landroid/util/MathUtils;->mag(FF)F

    .line 278
    move-result v9

    .line 281
    const/high16 v11, 0x447a0000    # 1000.0f

    .line 282
    div-float/2addr v9, v11

    .line 284
    mul-float/2addr v9, v10

    .line 285
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    .line 286
    move-result v9

    .line 289
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    .line 290
    move-result v8

    .line 293
    mul-float/2addr v8, v9

    .line 294
    iput v8, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleOffset:F

    .line 295
    iget-boolean v9, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mIsLeftPanel:Z

    .line 297
    if-eqz v9, :cond_a

    .line 299
    iget-boolean v10, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    .line 301
    if-nez v10, :cond_b

    .line 303
    :cond_a
    if-nez v9, :cond_c

    .line 305
    iget-boolean v9, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    .line 307
    if-nez v9, :cond_c

    .line 309
    :cond_b
    const/high16 v9, -0x40800000    # -1.0f

    .line 311
    mul-float/2addr v8, v9

    .line 313
    iput v8, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleOffset:F

    .line 314
    :cond_c
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 316
    move-result v8

    .line 319
    iget v9, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mStartX:F

    .line 320
    sub-float/2addr v0, v9

    .line 322
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 323
    move-result v0

    .line 326
    mul-float/2addr v0, v1

    .line 327
    cmpl-float v0, v8, v0

    .line 328
    if-lez v0, :cond_d

    .line 330
    goto :goto_4

    .line 332
    :cond_d
    move v4, v6

    .line 333
    :goto_4
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->setTriggerBack(ZZ)V

    .line 334
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTriggerBack:Z

    .line 337
    if-nez v0, :cond_e

    .line 339
    move v5, v2

    .line 341
    goto :goto_5

    .line 342
    :cond_e
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mIsLeftPanel:Z

    .line 343
    if-eqz v0, :cond_f

    .line 345
    iget-boolean v4, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    .line 347
    if-nez v4, :cond_10

    .line 349
    :cond_f
    if-nez v0, :cond_11

    .line 351
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    .line 353
    if-nez v0, :cond_11

    .line 355
    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->getStaticArrowWidth()F

    .line 357
    move-result v0

    .line 360
    sub-float/2addr v5, v0

    .line 361
    :cond_11
    :goto_5
    invoke-virtual {p0, v5, v3}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->setDesiredTranslation(FZ)V

    .line 362
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 365
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 368
    move-result v0

    .line 371
    int-to-float v0, v0

    .line 372
    div-float/2addr v0, v1

    .line 373
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowLength:F

    .line 374
    sub-float/2addr v0, v1

    .line 376
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 377
    move-result v1

    .line 380
    const/high16 v3, 0x41700000    # 15.0f

    .line 381
    mul-float/2addr v3, v0

    .line 383
    div-float/2addr v1, v3

    .line 384
    invoke-static {v1, v2, v7}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 385
    move-result v1

    .line 388
    sget-object v2, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 389
    check-cast v2, Landroid/view/animation/PathInterpolator;

    .line 391
    invoke-virtual {v2, v1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 393
    move-result v1

    .line 396
    mul-float/2addr v1, v0

    .line 397
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 398
    move-result p1

    .line 401
    mul-float/2addr p1, v1

    .line 402
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDesiredVerticalTranslation:F

    .line 403
    cmpl-float v0, v0, p1

    .line 405
    if-eqz v0, :cond_12

    .line 407
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDesiredVerticalTranslation:F

    .line 409
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 411
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 413
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 416
    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->updateSamplingRect()V

    .line 419
    goto/16 :goto_8

    .line 422
    :cond_13
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTriggerBack:Z

    .line 424
    if-eqz p1, :cond_1a

    .line 426
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    .line 428
    invoke-interface {p1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;->triggerBack()V

    .line 430
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 433
    if-nez p1, :cond_14

    .line 435
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 437
    move-result-object p1

    .line 440
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 441
    :cond_14
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 443
    invoke-virtual {p1, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 445
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 448
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 450
    move-result p1

    .line 453
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 454
    move-result p1

    .line 457
    const/high16 v0, 0x43fa0000    # 500.0f

    .line 458
    cmpg-float p1, p1, v0

    .line 460
    if-gez p1, :cond_15

    .line 462
    move p1, v3

    .line 464
    goto :goto_6

    .line 465
    :cond_15
    move p1, v4

    .line 466
    :goto_6
    if-nez p1, :cond_16

    .line 467
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 469
    move-result-wide v0

    .line 472
    iget-wide v9, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVibrationTime:J

    .line 473
    sub-long/2addr v0, v9

    .line 475
    const-wide/16 v9, 0x190

    .line 476
    cmp-long p1, v0, v9

    .line 478
    if-ltz p1, :cond_17

    .line 480
    :cond_16
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 482
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    .line 484
    :cond_17
    iget p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleOffset:F

    .line 487
    const/high16 v0, -0x3f800000    # -4.0f

    .line 489
    cmpl-float v0, p1, v0

    .line 491
    if-lez v0, :cond_18

    .line 493
    const/high16 v0, 0x41000000    # 8.0f

    .line 495
    sub-float/2addr p1, v0

    .line 497
    const/high16 v0, -0x3f000000    # -8.0f

    .line 498
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 500
    move-result p1

    .line 503
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleOffset:F

    .line 504
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 506
    :cond_18
    new-instance p1, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;

    .line 509
    invoke-direct {p1, p0, v4}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;I)V

    .line 511
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 514
    iget-boolean v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 516
    if-eqz v1, :cond_19

    .line 518
    new-instance v1, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$6;

    .line 520
    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$6;-><init>(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;)V

    .line 522
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 525
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mHandler:Landroid/os/Handler;

    .line 528
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mFailsafeRunnable:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;

    .line 530
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 532
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mHandler:Landroid/os/Handler;

    .line 535
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mFailsafeRunnable:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;

    .line 537
    invoke-virtual {p1, v0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 539
    goto :goto_7

    .line 542
    :cond_19
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;->run()V

    .line 543
    goto :goto_7

    .line 546
    :cond_1a
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    .line 547
    invoke-interface {p1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;->cancelBack()V

    .line 549
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 552
    iget-boolean v0, p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 554
    if-eqz v0, :cond_1b

    .line 556
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mSetGoneEndListener:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$1;

    .line 558
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 560
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mHandler:Landroid/os/Handler;

    .line 563
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mFailsafeRunnable:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;

    .line 565
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 567
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mHandler:Landroid/os/Handler;

    .line 570
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mFailsafeRunnable:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;

    .line 572
    invoke-virtual {p1, v0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 574
    goto :goto_7

    .line 577
    :cond_1b
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 578
    :goto_7
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 581
    invoke-virtual {p1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->stop()V

    .line 583
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 586
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 588
    iput-object v8, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 591
    goto/16 :goto_8

    .line 593
    :cond_1c
    iput-boolean v4, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDragSlopPassed:Z

    .line 595
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 597
    move-result-object v0

    .line 600
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 601
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 604
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 606
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 609
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 611
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 614
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 616
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    .line 619
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 621
    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleOffset:F

    .line 624
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 626
    iget-object v5, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mRegularTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 628
    iput-object v5, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 630
    invoke-virtual {p0, v4, v4}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->setTriggerBack(ZZ)V

    .line 632
    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->setDesiredTranslation(FZ)V

    .line 635
    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mCurrentTranslation:F

    .line 638
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 640
    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 643
    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mPreviousTouchTranslation:F

    .line 646
    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTotalTouchDelta:F

    .line 648
    const-wide/16 v5, 0x0

    .line 650
    iput-wide v5, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVibrationTime:J

    .line 652
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDesiredVerticalTranslation:F

    .line 654
    cmpl-float v0, v0, v2

    .line 656
    if-eqz v0, :cond_1d

    .line 658
    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDesiredVerticalTranslation:F

    .line 660
    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVerticalTranslation:F

    .line 662
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 664
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 667
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mHandler:Landroid/os/Handler;

    .line 670
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mFailsafeRunnable:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;

    .line 672
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 674
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 677
    move-result v0

    .line 680
    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mStartX:F

    .line 681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 683
    move-result v0

    .line 686
    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mStartY:F

    .line 687
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 689
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 692
    move-result p1

    .line 695
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mFingerOffset:I

    .line 696
    int-to-float v0, v0

    .line 698
    sub-float/2addr p1, v0

    .line 699
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mMinArrowPosition:I

    .line 700
    int-to-float v0, v0

    .line 702
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 703
    move-result p1

    .line 706
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 707
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 709
    int-to-float v2, v2

    .line 711
    div-float/2addr v2, v1

    .line 712
    sub-float/2addr p1, v2

    .line 713
    float-to-int p1, p1

    .line 714
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDisplaySize:Landroid/graphics/Point;

    .line 715
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 717
    invoke-static {p1, v4, v1}, Landroid/util/MathUtils;->constrain(III)I

    .line 719
    move-result p1

    .line 722
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 723
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->updateSamplingRect()V

    .line 725
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 728
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mSamplingRect:Landroid/graphics/Rect;

    .line 730
    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    .line 732
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mWindowManager:Landroid/view/WindowManager;

    .line 735
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 737
    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 739
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 742
    const/16 v0, 0xf

    .line 744
    invoke-virtual {p1, v0}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 746
    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTrackingBackArrowLatency:Z

    .line 749
    :goto_8
    return-void
    .line 751
.end method

.method public setBackCallback(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    .line 2
    return-void
    .line 4
.end method

.method public final setDesiredTranslation(FZ)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDesiredTranslation:F

    .line 2
    cmpl-float v0, v0, p1

    .line 4
    if-eqz v0, :cond_1

    .line 6
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDesiredTranslation:F

    .line 8
    if-nez p2, :cond_0

    .line 10
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mCurrentTranslation:F

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 18
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 20
    :cond_1
    :goto_0
    return-void
    .line 23
.end method

.method public setDisplaySize(Landroid/graphics/Point;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDisplaySize:Landroid/graphics/Point;

    .line 2
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 4
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->set(II)V

    .line 8
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDisplaySize:Landroid/graphics/Point;

    .line 11
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 13
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 15
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 17
    move-result p1

    .line 20
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mScreenSize:I

    .line 21
    return-void
    .line 23
.end method

.method public setInsets(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mLeftInset:I

    .line 2
    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mRightInset:I

    .line 4
    return-void
    .line 6
.end method

.method public setIsLeftPanel(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mIsLeftPanel:Z

    .line 2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    const/16 p1, 0x33

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/16 p1, 0x35

    .line 11
    :goto_0
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 13
    return-void
    .line 15
.end method

.method public setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mWindowManager:Landroid/view/WindowManager;

    .line 4
    invoke-interface {v0, p0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    return-void
    .line 9
.end method

.method public final setTriggerBack(ZZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTriggerBack:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTriggerBack:Z

    .line 6
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 8
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 10
    invoke-virtual {p0, p2}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 13
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 16
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 18
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    .line 21
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTriggerBack:Z

    .line 23
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;->setTriggerBack(Z)V

    .line 25
    :cond_0
    return-void
    .line 28
.end method

.method public final updateAngle(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTriggerBack:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/high16 v1, 0x42600000    # 56.0f

    .line 6
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleOffset:F

    .line 8
    add-float/2addr v2, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/high16 v2, 0x42b40000    # 90.0f

    .line 12
    :goto_0
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDesiredAngle:F

    .line 14
    cmpl-float v1, v2, v1

    .line 16
    if-eqz v1, :cond_3

    .line 18
    if-nez p1, :cond_1

    .line 20
    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mCurrentAngle:F

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 24
    goto :goto_2

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 28
    if-eqz v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleAppearForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 32
    goto :goto_1

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleDisappearForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 35
    :goto_1
    iput-object v0, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 37
    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 39
    :goto_2
    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDesiredAngle:F

    .line 42
    :cond_3
    return-void
    .line 44
.end method

.method public final updateIsDark(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mIsDark:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mProtectionColorDark:I

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mProtectionColorLight:I

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mProtectionPaint:Landroid/graphics/Paint;

    .line 11
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mIsDark:Z

    .line 16
    if-eqz v0, :cond_1

    .line 18
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowColorDark:I

    .line 20
    goto :goto_1

    .line 22
    :cond_1
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowColorLight:I

    .line 23
    :goto_1
    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowColor:I

    .line 25
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowColorAnimator:Landroid/animation/ValueAnimator;

    .line 27
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 29
    if-nez p1, :cond_2

    .line 32
    iget p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowColor:I

    .line 34
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mCurrentArrowColor:I

    .line 36
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    .line 38
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 43
    goto :goto_2

    .line 46
    :cond_2
    iget p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mCurrentArrowColor:I

    .line 47
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowStartColor:I

    .line 49
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowColorAnimator:Landroid/animation/ValueAnimator;

    .line 51
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 53
    :goto_2
    return-void
    .line 56
.end method

.method public final updateSamplingRect()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mIsLeftPanel:Z

    .line 6
    if-eqz v2, :cond_0

    .line 8
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mLeftInset:I

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDisplaySize:Landroid/graphics/Point;

    .line 13
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 15
    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mRightInset:I

    .line 17
    sub-int/2addr v2, v3

    .line 19
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 20
    sub-int/2addr v2, v3

    .line 22
    :goto_0
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 23
    add-int/2addr v3, v2

    .line 25
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 26
    add-int/2addr v0, v1

    .line 28
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mSamplingRect:Landroid/graphics/Rect;

    .line 29
    invoke-virtual {v4, v2, v1, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 31
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDesiredTranslation:F

    .line 34
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTriggerBack:Z

    .line 36
    if-nez v1, :cond_3

    .line 38
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mBaseTranslation:F

    .line 40
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mIsLeftPanel:Z

    .line 42
    if-eqz v1, :cond_1

    .line 44
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    .line 46
    if-nez v2, :cond_2

    .line 48
    :cond_1
    if-nez v1, :cond_3

    .line 50
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    .line 52
    if-nez v1, :cond_3

    .line 54
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->getStaticArrowWidth()F

    .line 56
    move-result v1

    .line 59
    sub-float/2addr v0, v1

    .line 60
    :cond_3
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowThickness:F

    .line 61
    const/high16 v2, 0x40000000    # 2.0f

    .line 63
    div-float/2addr v1, v2

    .line 65
    sub-float/2addr v0, v1

    .line 66
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mIsLeftPanel:Z

    .line 67
    if-eqz v1, :cond_4

    .line 69
    goto :goto_1

    .line 71
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mSamplingRect:Landroid/graphics/Rect;

    .line 72
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 74
    move-result v1

    .line 77
    int-to-float v1, v1

    .line 78
    sub-float v0, v1, v0

    .line 79
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->getStaticArrowWidth()F

    .line 81
    move-result v1

    .line 84
    const/high16 v3, 0x42600000    # 56.0f

    .line 85
    float-to-double v3, v3

    .line 87
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    .line 88
    move-result-wide v3

    .line 91
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 92
    move-result-wide v3

    .line 95
    double-to-float v3, v3

    .line 96
    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowLength:F

    .line 97
    mul-float/2addr v3, v4

    .line 99
    mul-float/2addr v3, v2

    .line 100
    iget-boolean v4, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    .line 101
    if-nez v4, :cond_5

    .line 103
    sub-float/2addr v0, v1

    .line 105
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 106
    move-result v4

    .line 109
    int-to-float v4, v4

    .line 110
    const/high16 v5, 0x3f000000    # 0.5f

    .line 111
    mul-float/2addr v4, v5

    .line 113
    iget v5, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDesiredVerticalTranslation:F

    .line 114
    add-float/2addr v4, v5

    .line 116
    div-float v2, v3, v2

    .line 117
    sub-float/2addr v4, v2

    .line 119
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mSamplingRect:Landroid/graphics/Rect;

    .line 120
    float-to-int v0, v0

    .line 122
    float-to-int v4, v4

    .line 123
    invoke-virtual {v2, v0, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mSamplingRect:Landroid/graphics/Rect;

    .line 127
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 129
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 131
    int-to-float v5, v2

    .line 133
    add-float/2addr v5, v1

    .line 134
    float-to-int v1, v5

    .line 135
    int-to-float v5, v4

    .line 136
    add-float/2addr v5, v3

    .line 137
    float-to-int v3, v5

    .line 138
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 139
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingRect()V

    .line 144
    return-void
    .line 147
.end method
