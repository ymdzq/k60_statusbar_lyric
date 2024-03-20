.class public Lcom/android/systemui/fsgesture/GestureStubView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static isUserSetUp:Z


# instance fields
.field public final mAnimatorListener:Lcom/android/systemui/fsgesture/GestureStubView$1;

.field public mAssistX1:F

.field public mAssistX2:F

.field public mBesideNotchArrowXStart:I

.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mCurrAction:I

.field public mCurrX:F

.field public mCurrY:F

.field public mDensity:F

.field public mDisplay:Landroid/view/Display;

.field public final mDisplayListener:Lcom/android/systemui/fsgesture/GestureStubView$StubViewDisplayListener;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDownEvent:Landroid/view/MotionEvent;

.field public mDownX:F

.field public mDownY:F

.field public mEarWidth:I

.field public mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

.field public mGestureStubDefaultSize:I

.field public mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

.field public mGestureStubPos:I

.field public mGestureStubSize:I

.field public mGesturesBackController:Lcom/android/systemui/fsgesture/GesturesBackController;

.field public final mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

.field public mHideNotch:Z

.field public mIsGestureStarted:Z

.field public mKeepHidden:Z

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mLastConfiguration:Landroid/content/res/Configuration;

.field public final mLocation:[I

.field public mNeedAdaptRotation:Z

.field public mNeedAdjustArrowPosition:Z

.field public mNeedRender:Z

.field public mNotchHeight:I

.field public mNotchWidth:I

.field public mPendingResetStatus:Z

.field public mRotation:I

.field public mScreenHeight:I

.field public mScreenWidth:I

.field public final mSettingsObserver:Lcom/android/systemui/fsgesture/GestureStubView$MiuiSettingsObserver;

.field public mSwipeInRightDirection:Z

.field public final mVibrator:Landroid/os/Vibrator;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static -$$Nest$minjectKeyEvent(Lcom/android/systemui/fsgesture/GestureStubView;)V
    .locals 25

    .line 1
    const/4 v6, 0x4

    .line 2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    const-string v0, "injectKeyEvent keyCode:4"

    .line 6
    const-string v1, "GestureStubView"

    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 13
    move-result-wide v3

    .line 16
    new-instance v5, Landroid/view/KeyEvent;

    .line 17
    const/4 v12, 0x0

    .line 19
    const/16 v20, 0x0

    .line 20
    const/16 v21, 0x0

    .line 22
    const/16 v22, -0x1

    .line 24
    const/16 v23, 0x0

    .line 26
    const/16 v24, 0x8

    .line 28
    const/16 v19, 0x101

    .line 30
    const/4 v14, 0x0

    .line 32
    const/4 v15, 0x0

    .line 33
    const/16 v16, -0x1

    .line 34
    const/16 v17, 0x0

    .line 36
    const/16 v18, 0x8

    .line 38
    const/4 v13, 0x4

    .line 40
    move-object v7, v5

    .line 41
    move-wide v8, v3

    .line 42
    move-wide v10, v3

    .line 43
    invoke-direct/range {v7 .. v19}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 44
    new-instance v13, Landroid/view/KeyEvent;

    .line 47
    const/4 v7, 0x1

    .line 49
    const/16 v12, 0x101

    .line 50
    move-object v0, v13

    .line 52
    move-wide v1, v3

    .line 53
    move-object v14, v5

    .line 54
    move v5, v7

    .line 55
    move/from16 v7, v20

    .line 56
    move/from16 v8, v21

    .line 58
    move/from16 v9, v22

    .line 60
    move/from16 v10, v23

    .line 62
    move/from16 v11, v24

    .line 64
    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 66
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 69
    move-result-object v0

    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, v14, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 74
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 77
    move-result-object v0

    .line 80
    invoke-virtual {v0, v13, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 81
    sget-boolean v0, Lcom/miui/interfaces/IHapticFeedBack;->IS_SUPPORT_LINEAR_MOTOR_VIBRATE:Z

    .line 84
    if-eqz v0, :cond_0

    .line 86
    const-class v0, Lcom/miui/interfaces/IHapticFeedBack;

    .line 88
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 90
    move-result-object v0

    .line 93
    check-cast v0, Lcom/miui/interfaces/IHapticFeedBack;

    .line 94
    check-cast v0, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 96
    iget-object v0, v0, Lcom/miui/systemui/functions/HapticFeedBackImpl;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 98
    const-string v2, "mesh_heavy"

    .line 100
    invoke-virtual {v0, v2, v1}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z

    .line 102
    :cond_0
    return-void
    .line 105
.end method

.method public static -$$Nest$minjectMotionEvent(Lcom/android/systemui/fsgesture/GestureStubView;I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    .line 4
    if-nez v0, :cond_0

    .line 6
    goto/16 :goto_0

    .line 8
    :cond_0
    const-string v1, "injectMotionEvent action :"

    .line 10
    const-string v2, " downX: "

    .line 12
    move/from16 v7, p1

    .line 14
    invoke-static {v1, v7, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object v1

    .line 19
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    .line 20
    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    const-string v2, " downY: "

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    .line 32
    move-result v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 36
    const-string v2, " flags:"

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    .line 44
    move-result v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 54
    const-string v2, "GestureStubView"

    .line 55
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    .line 60
    move-result v1

    .line 63
    const/high16 v2, 0x10000

    .line 64
    and-int/2addr v1, v2

    .line 66
    if-nez v1, :cond_1

    .line 67
    const/4 v1, 0x1

    .line 69
    invoke-static {v1}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    .line 70
    move-result-object v9

    .line 73
    const/4 v2, 0x0

    .line 74
    aget-object v3, v9, v2

    .line 75
    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 77
    invoke-static {v1}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    .line 80
    move-result-object v10

    .line 83
    aget-object v1, v10, v2

    .line 84
    invoke-virtual {v0, v2, v1}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 86
    aget-object v1, v10, v2

    .line 89
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    .line 91
    move-result v3

    .line 94
    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 95
    aget-object v1, v10, v2

    .line 97
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    .line 99
    move-result v3

    .line 102
    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 103
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    .line 105
    move-result-wide v3

    .line 108
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    .line 109
    move-result-wide v5

    .line 112
    const/4 v8, 0x1

    .line 113
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    .line 114
    move-result v11

    .line 117
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getButtonState()I

    .line 118
    move-result v12

    .line 121
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getXPrecision()F

    .line 122
    move-result v13

    .line 125
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getYPrecision()F

    .line 126
    move-result v14

    .line 129
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 130
    move-result v15

    .line 133
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 134
    move-result v16

    .line 137
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    .line 138
    move-result v17

    .line 141
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    .line 142
    move-result v18

    .line 145
    move/from16 v7, p1

    .line 146
    invoke-static/range {v3 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 148
    move-result-object v0

    .line 151
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 152
    move-result-object v1

    .line 155
    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 156
    :cond_1
    :goto_0
    return-void
    .line 159
.end method

.method public static -$$Nest$misInSpeedLimit(Lcom/android/systemui/fsgesture/GestureStubView;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrX:F

    .line 6
    iget v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mAssistX1:F

    .line 8
    sub-float/2addr v0, v1

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 11
    move-result v0

    .line 14
    const/16 v1, 0x14

    .line 15
    int-to-float v1, v1

    .line 17
    cmpg-float v0, v0, v1

    .line 18
    if-gez v0, :cond_0

    .line 20
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrX:F

    .line 22
    iget p0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mAssistX2:F

    .line 24
    sub-float/2addr v0, p0

    .line 26
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 27
    move-result p0

    .line 30
    cmpg-float p0, p0, v1

    .line 31
    if-gez p0, :cond_0

    .line 33
    const/4 p0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    :goto_0
    return p0
    .line 38
.end method

.method public static -$$Nest$misSwipeRightInDirection(Lcom/android/systemui/fsgesture/GestureStubView;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrX:F

    .line 6
    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mAssistX1:F

    .line 8
    cmpg-float v1, v1, v2

    .line 10
    if-ltz v1, :cond_1

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_2

    .line 15
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrX:F

    .line 17
    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mAssistX1:F

    .line 19
    cmpl-float v0, v0, v2

    .line 21
    if-lez v0, :cond_2

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mSwipeInRightDirection:Z

    .line 26
    goto :goto_0

    .line 28
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mSwipeInRightDirection:Z

    .line 29
    :goto_0
    iget-boolean p0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mSwipeInRightDirection:Z

    .line 31
    return p0
    .line 33
.end method

.method public static -$$Nest$mrenderView(Lcom/android/systemui/fsgesture/GestureStubView;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mKeepHidden:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    .line 7
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->getAnimatingLayoutParam()Landroid/view/WindowManager$LayoutParams;

    .line 9
    move-result-object v1

    .line 12
    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    const-string v0, "GestureStubView"

    .line 16
    const-string/jumbo v1, "renderView"

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 24
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNeedRender:Z

    .line 37
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 39
    move-result-object v0

    .line 42
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 43
    :cond_1
    :goto_0
    return-void
    .line 46
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const/4 v0, 0x2

    .line 5
    new-array v1, v0, [I

    .line 6
    iput-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mLocation:[I

    .line 8
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrAction:I

    .line 11
    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    .line 13
    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenHeight:I

    .line 15
    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    .line 17
    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    .line 19
    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    .line 21
    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchHeight:I

    .line 23
    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchWidth:I

    .line 25
    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mEarWidth:I

    .line 27
    const/4 v1, 0x0

    .line 29
    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mRotation:I

    .line 30
    const/high16 v2, -0x40800000    # -1.0f

    .line 32
    iput v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDensity:F

    .line 34
    iput-boolean v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNeedAdjustArrowPosition:Z

    .line 36
    new-instance v2, Lcom/android/systemui/fsgesture/GestureStubView$1;

    .line 38
    invoke-direct {v2, p0}, Lcom/android/systemui/fsgesture/GestureStubView$1;-><init>(Lcom/android/systemui/fsgesture/GestureStubView;)V

    .line 40
    iput-object v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mAnimatorListener:Lcom/android/systemui/fsgesture/GestureStubView$1;

    .line 43
    new-instance v2, Lcom/android/systemui/fsgesture/GestureStubView$2;

    .line 45
    invoke-direct {v2, p0}, Lcom/android/systemui/fsgesture/GestureStubView$2;-><init>(Lcom/android/systemui/fsgesture/GestureStubView;)V

    .line 47
    new-instance v3, Landroid/content/res/Configuration;

    .line 50
    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    .line 52
    iput-object v3, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 55
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object v4

    .line 62
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 63
    move-result-object v4

    .line 66
    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 67
    iput-boolean v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mIsGestureStarted:Z

    .line 70
    iput v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    .line 72
    new-instance v3, Lcom/android/systemui/fsgesture/GestureStubView$H;

    .line 74
    invoke-direct {v3, p0}, Lcom/android/systemui/fsgesture/GestureStubView$H;-><init>(Lcom/android/systemui/fsgesture/GestureStubView;)V

    .line 76
    iput-object v3, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    .line 79
    const-string/jumbo v4, "window"

    .line 81
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    move-result-object v4

    .line 87
    check-cast v4, Landroid/view/WindowManager;

    .line 88
    iput-object v4, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->initScreenSizeAndDensity()V

    .line 92
    const-string/jumbo v5, "ro.miui.notch"

    .line 95
    invoke-static {v5, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 98
    move-result v5

    .line 101
    const/4 v6, 0x1

    .line 102
    if-ne v5, v6, :cond_0

    .line 103
    move v5, v6

    .line 105
    goto :goto_0

    .line 106
    :cond_0
    move v5, v1

    .line 107
    :goto_0
    if-eqz v5, :cond_2

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    move-result-object v5

    .line 113
    const v7, 0x7f070d62    # @dimen/notch_height '-100.0dp'

    .line 114
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 117
    move-result v5

    .line 120
    iput v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchHeight:I

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 123
    move-result-object v5

    .line 126
    const v7, 0x7f070d65    # @dimen/notch_width '-100.0dp'

    .line 127
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 130
    move-result v5

    .line 133
    iput v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchWidth:I

    .line 134
    iget v7, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenHeight:I

    .line 136
    iget v8, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    .line 138
    if-ge v7, v8, :cond_1

    .line 140
    sub-int/2addr v7, v5

    .line 142
    goto :goto_1

    .line 143
    :cond_1
    sub-int v7, v8, v5

    .line 144
    :goto_1
    div-int/2addr v7, v0

    .line 146
    iput v7, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mEarWidth:I

    .line 147
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->initGestureEdgeSize()[I

    .line 149
    move-result-object v0

    .line 152
    new-instance v5, Lcom/android/systemui/fsgesture/GesturesBackController;

    .line 153
    aget v1, v0, v1

    .line 155
    aget v0, v0, v6

    .line 157
    invoke-direct {v5, v2, v1, v0}, Lcom/android/systemui/fsgesture/GesturesBackController;-><init>(Lcom/android/systemui/fsgesture/GestureStubView$2;II)V

    .line 159
    iput-object v5, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGesturesBackController:Lcom/android/systemui/fsgesture/GesturesBackController;

    .line 162
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->getGestureStubWindowParam()Landroid/view/WindowManager$LayoutParams;

    .line 164
    move-result-object v0

    .line 167
    invoke-interface {v4, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance v0, Lcom/android/systemui/fsgesture/GestureStubView$StubViewDisplayListener;

    .line 171
    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/GestureStubView$StubViewDisplayListener;-><init>(Lcom/android/systemui/fsgesture/GestureStubView;)V

    .line 173
    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplayListener:Lcom/android/systemui/fsgesture/GestureStubView$StubViewDisplayListener;

    .line 176
    const-string v0, "display"

    .line 178
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    move-result-object v0

    .line 183
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 184
    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 186
    const-string v0, "keyguard"

    .line 188
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 190
    move-result-object v0

    .line 193
    check-cast v0, Landroid/app/KeyguardManager;

    .line 194
    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 196
    new-instance v0, Lcom/android/systemui/fsgesture/GestureStubView$MiuiSettingsObserver;

    .line 198
    invoke-direct {v0, p0, v3}, Lcom/android/systemui/fsgesture/GestureStubView$MiuiSettingsObserver;-><init>(Lcom/android/systemui/fsgesture/GestureStubView;Lcom/android/systemui/fsgesture/GestureStubView$H;)V

    .line 200
    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mSettingsObserver:Lcom/android/systemui/fsgesture/GestureStubView$MiuiSettingsObserver;

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 205
    move-result-object v0

    .line 208
    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mContentResolver:Landroid/content/ContentResolver;

    .line 209
    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->isUserSetUp(Landroid/content/ContentResolver;)Z

    .line 211
    move-result v0

    .line 214
    sput-boolean v0, Lcom/android/systemui/fsgesture/GestureStubView;->isUserSetUp:Z

    .line 215
    const-string/jumbo v0, "vibrator"

    .line 217
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 220
    move-result-object p1

    .line 223
    check-cast p1, Landroid/os/Vibrator;

    .line 224
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mVibrator:Landroid/os/Vibrator;

    .line 226
    const/16 p1, 0x8

    .line 228
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 230
    return-void
    .line 233
.end method

.method private getAnimatingLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .line 1
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    .line 2
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    const/16 v3, 0x7eb

    .line 6
    const/16 v4, 0x128

    .line 8
    const/4 v5, 0x1

    .line 10
    move-object v0, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 12
    const/4 v0, 0x1

    .line 15
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 20
    return-object p0
    .line 22
.end method

.method private getGestureStubWindowParam()Landroid/view/WindowManager$LayoutParams;
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    .line 2
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    .line 7
    const/4 v2, -0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    .line 11
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    .line 13
    int-to-float v0, v0

    .line 15
    const v3, 0x3f19999a    # 0.6f

    .line 16
    mul-float/2addr v0, v3

    .line 19
    float-to-int v0, v0

    .line 20
    :goto_0
    move v5, v0

    .line 21
    move v4, v2

    .line 22
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    .line 23
    const/4 v2, 0x0

    .line 25
    const/4 v9, 0x1

    .line 26
    if-nez v0, :cond_1

    .line 27
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 29
    const/16 v6, 0x7eb

    .line 31
    const/16 v7, 0x128

    .line 33
    const/4 v8, 0x1

    .line 35
    move-object v3, v0

    .line 36
    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 37
    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    .line 40
    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 42
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    .line 47
    const/high16 v3, 0x3f800000    # 1.0f

    .line 49
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 51
    goto :goto_1

    .line 53
    :cond_1
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 54
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 56
    :goto_1
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    .line 58
    const/16 v3, 0x50

    .line 60
    if-ne v0, v1, :cond_2

    .line 62
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    .line 64
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 66
    const-string v1, "GestureStubBottom"

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    .line 73
    return-object p0

    .line 75
    :cond_2
    if-nez v0, :cond_3

    .line 76
    move v2, v9

    .line 78
    :cond_3
    if-eqz v2, :cond_4

    .line 79
    const/4 v0, 0x3

    .line 81
    goto :goto_2

    .line 82
    :cond_4
    const/4 v0, 0x5

    .line 83
    :goto_2
    iget v4, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mRotation:I

    .line 84
    if-eqz v4, :cond_6

    .line 86
    if-ne v4, v1, :cond_5

    .line 88
    goto :goto_3

    .line 90
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    .line 91
    const/4 v3, 0x0

    .line 93
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 94
    const/16 v3, 0x10

    .line 96
    goto :goto_4

    .line 98
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 99
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 103
    move-result-object v1

    .line 106
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 107
    const/high16 v4, 0x41500000    # 13.0f

    .line 109
    mul-float/2addr v1, v4

    .line 111
    iget v4, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenHeight:I

    .line 112
    int-to-float v4, v4

    .line 114
    div-float/2addr v1, v4

    .line 115
    iget-object v4, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    .line 116
    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 118
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    .line 120
    or-int/2addr v0, v3

    .line 122
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 123
    if-eqz v2, :cond_7

    .line 125
    const-string v0, "GestureStubLeft"

    .line 127
    goto :goto_5

    .line 129
    :cond_7
    const-string v0, "GestureStubRight"

    .line 130
    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    .line 135
    return-object p0
    .line 137
.end method

.method public static isUserSetUp(Landroid/content/ContentResolver;)Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/fsgesture/GestureStubView;->isUserSetUp:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    const-string v0, "device_provisioned"

    .line 6
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    const-string/jumbo v0, "user_setup_complete"

    .line 15
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 18
    move-result v2

    .line 21
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 22
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    const/4 v1, 0x1

    .line 28
    :cond_0
    sput-boolean v1, Lcom/android/systemui/fsgesture/GestureStubView;->isUserSetUp:Z

    .line 29
    :cond_1
    sget-boolean p0, Lcom/android/systemui/fsgesture/GestureStubView;->isUserSetUp:Z

    .line 31
    return p0
    .line 33
.end method


# virtual methods
.method public final adaptRotation(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplay:Landroid/view/Display;

    .line 2
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 4
    move-result v0

    .line 7
    if-nez p1, :cond_0

    .line 8
    iget v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mRotation:I

    .line 10
    if-ne v0, v1, :cond_1

    .line 12
    :cond_0
    if-eqz p1, :cond_2

    .line 14
    iget p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mRotation:I

    .line 16
    sub-int/2addr p1, v0

    .line 18
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 19
    move-result p1

    .line 22
    const/4 v1, 0x2

    .line 23
    if-ne p1, v1, :cond_2

    .line 24
    :cond_1
    iput v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mRotation:I

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->rotateGesture()V

    .line 28
    :cond_2
    return-void
    .line 31
.end method

.method public final gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNeedRender:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 8
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 12
    move-result v1

    .line 15
    const-string v2, "gatherTransparentRegion: need render w:"

    .line 16
    const-string v3, "  h:"

    .line 18
    const-string v4, "GestureStubView"

    .line 20
    invoke-static {v2, v0, v3, v1, v4}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 22
    if-lez v0, :cond_0

    .line 25
    if-lez v1, :cond_0

    .line 27
    iget-object v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mLocation:[I

    .line 29
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 31
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mLocation:[I

    .line 34
    const/4 v2, 0x0

    .line 36
    aget v4, p0, v2

    .line 37
    const/4 v3, 0x1

    .line 39
    aget v5, p0, v3

    .line 40
    add-int v6, v4, v0

    .line 42
    add-int v7, v5, v1

    .line 44
    sget-object v8, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 46
    move-object v3, p1

    .line 48
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 49
    return v2

    .line 52
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 53
    move-result p0

    .line 56
    return p0
    .line 57
.end method

.method public final initGestureEdgeSize()[I
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplay:Landroid/view/Display;

    .line 5
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    .line 7
    move-result v1

    .line 10
    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mRotation:I

    .line 11
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    iget v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchHeight:I

    .line 17
    iget v4, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    .line 19
    add-int/2addr v1, v4

    .line 21
    aput v1, v0, v2

    .line 22
    iget p0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    .line 24
    sub-int/2addr p0, v4

    .line 26
    aput p0, v0, v3

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    const/4 v4, 0x3

    .line 30
    if-ne v1, v4, :cond_1

    .line 31
    iget v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    .line 33
    aput v1, v0, v2

    .line 35
    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    .line 37
    sub-int/2addr v2, v1

    .line 39
    iget p0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchHeight:I

    .line 40
    sub-int/2addr v2, p0

    .line 42
    aput v2, v0, v3

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    iget v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    .line 46
    aput v1, v0, v2

    .line 48
    iget p0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    .line 50
    sub-int/2addr p0, v1

    .line 52
    aput p0, v0, v3

    .line 53
    :goto_0
    return-object v0
    .line 55
.end method

.method public final initScreenSizeAndDensity()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    .line 7
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 9
    move-result-object v1

    .line 12
    iput-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplay:Landroid/view/Display;

    .line 13
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 15
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 18
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 20
    if-le v1, v0, :cond_0

    .line 22
    iput v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    .line 24
    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenHeight:I

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    .line 29
    iput v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenHeight:I

    .line 31
    :goto_0
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    .line 33
    const/16 v1, 0x2d0

    .line 35
    if-eq v0, v1, :cond_2

    .line 37
    const/16 v1, 0x438

    .line 39
    const/16 v2, 0x36

    .line 41
    if-eq v0, v1, :cond_1

    .line 43
    iput v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    .line 45
    iput v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    .line 47
    goto :goto_1

    .line 49
    :cond_1
    iput v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    .line 50
    iput v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    .line 52
    goto :goto_1

    .line 54
    :cond_2
    const/16 v0, 0x28

    .line 55
    iput v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    .line 57
    iput v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    .line 59
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 67
    move-result-object v0

    .line 70
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 71
    iput v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDensity:F

    .line 73
    return-void
    .line 75
.end method

.method public final onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mSettingsObserver:Lcom/android/systemui/fsgesture/GestureStubView$MiuiSettingsObserver;

    .line 5
    iget-object v1, v0, Lcom/android/systemui/fsgesture/GestureStubView$MiuiSettingsObserver;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 7
    iget-object v2, v1, Lcom/android/systemui/fsgesture/GestureStubView;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object v2

    .line 14
    iput-object v2, v1, Lcom/android/systemui/fsgesture/GestureStubView;->mContentResolver:Landroid/content/ContentResolver;

    .line 15
    iget-object v1, v0, Lcom/android/systemui/fsgesture/GestureStubView$MiuiSettingsObserver;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 17
    iget-object v1, v1, Lcom/android/systemui/fsgesture/GestureStubView;->mContentResolver:Landroid/content/ContentResolver;

    .line 19
    const-string v2, "force_black_v2"

    .line 21
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    move-result-object v2

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, -0x1

    .line 28
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 29
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 32
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplayListener:Lcom/android/systemui/fsgesture/GestureStubView$StubViewDisplayListener;

    .line 34
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 37
    return-void
    .line 40
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 7
    move-result p1

    .line 10
    and-int/lit16 v0, p1, 0x400

    .line 11
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v2

    .line 19
    :goto_0
    and-int/lit16 v3, p1, 0x800

    .line 20
    if-eqz v3, :cond_1

    .line 22
    move v3, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v3, v2

    .line 26
    :goto_1
    and-int/lit16 p1, p1, 0x1000

    .line 27
    if-eqz p1, :cond_2

    .line 29
    move p1, v1

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move p1, v2

    .line 33
    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mKeepHidden:Z

    .line 34
    if-nez v4, :cond_4

    .line 36
    if-eqz p1, :cond_4

    .line 38
    if-eqz v3, :cond_4

    .line 40
    if-eqz v0, :cond_4

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->initScreenSizeAndDensity()V

    .line 44
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 47
    if-eqz p1, :cond_3

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 51
    :cond_3
    iget p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/systemui/fsgesture/GestureStubView;->setGestureStubPosition(I)V

    .line 56
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGesturesBackController:Lcom/android/systemui/fsgesture/GesturesBackController;

    .line 59
    if-eqz p1, :cond_4

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->initGestureEdgeSize()[I

    .line 63
    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGesturesBackController:Lcom/android/systemui/fsgesture/GesturesBackController;

    .line 67
    aget v3, p1, v2

    .line 69
    aget p1, p1, v1

    .line 71
    iput v3, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mGestureEdgeLeft:I

    .line 73
    iput p1, v0, Lcom/android/systemui/fsgesture/GesturesBackController;->mGestureEdgeRight:I

    .line 75
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/systemui/fsgesture/GestureStubView;->adaptRotation(Z)V

    .line 77
    iget-boolean p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNeedAdaptRotation:Z

    .line 80
    if-eqz p1, :cond_5

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->rotateGesture()V

    .line 84
    :cond_5
    iput-boolean v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNeedAdaptRotation:Z

    .line 87
    return-void
    .line 89
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mSettingsObserver:Lcom/android/systemui/fsgesture/GestureStubView$MiuiSettingsObserver;

    .line 5
    iget-object v1, v0, Lcom/android/systemui/fsgesture/GestureStubView$MiuiSettingsObserver;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 7
    iget-object v2, v1, Lcom/android/systemui/fsgesture/GestureStubView;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object v2

    .line 14
    iput-object v2, v1, Lcom/android/systemui/fsgesture/GestureStubView;->mContentResolver:Landroid/content/ContentResolver;

    .line 15
    iget-object v1, v0, Lcom/android/systemui/fsgesture/GestureStubView$MiuiSettingsObserver;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 17
    iget-object v1, v1, Lcom/android/systemui/fsgesture/GestureStubView;->mContentResolver:Landroid/content/ContentResolver;

    .line 19
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 21
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 24
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplayListener:Lcom/android/systemui/fsgesture/GestureStubView$StubViewDisplayListener;

    .line 26
    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 28
    return-void
    .line 31
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    move-result v0

    .line 5
    iput v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrAction:I

    .line 6
    const/16 v1, 0x100

    .line 8
    const-wide/16 v2, 0x96

    .line 10
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x2

    .line 13
    const-string v6, "GestureStubView"

    .line 14
    const/4 v7, 0x1

    .line 16
    if-eqz v0, :cond_4

    .line 17
    const/16 v8, 0xff

    .line 19
    if-eq v0, v7, :cond_1

    .line 21
    if-eq v0, v5, :cond_0

    .line 23
    const/4 v9, 0x3

    .line 25
    if-eq v0, v9, :cond_1

    .line 26
    goto/16 :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 30
    move-result v0

    .line 33
    iput v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrX:F

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 36
    move-result v0

    .line 39
    iput v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrY:F

    .line 40
    iget v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownY:F

    .line 42
    sub-float/2addr v0, v1

    .line 44
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 45
    move-result v0

    .line 48
    iget v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrX:F

    .line 49
    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownX:F

    .line 51
    sub-float/2addr v1, v2

    .line 53
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 54
    move-result v1

    .line 57
    const/high16 v2, 0x40000000    # 2.0f

    .line 58
    mul-float/2addr v1, v2

    .line 60
    cmpl-float v0, v0, v1

    .line 61
    if-lez v0, :cond_6

    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mIsGestureStarted:Z

    .line 65
    if-nez v0, :cond_6

    .line 67
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    .line 69
    invoke-virtual {v0, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 71
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    const-string/jumbo v0, "up-slide detected, sendMessage MSG_SET_GESTURE_STUB_UNTOUCHABLE"

    .line 78
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    goto/16 :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    .line 86
    if-nez v0, :cond_2

    .line 88
    return v7

    .line 90
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 91
    move-result v9

    .line 94
    iput v9, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrX:F

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 97
    move-result v9

    .line 100
    iput v9, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrY:F

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 103
    move-result-wide v9

    .line 106
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    .line 107
    move-result-wide v11

    .line 110
    sub-long/2addr v9, v11

    .line 111
    cmp-long v2, v9, v2

    .line 112
    if-gez v2, :cond_3

    .line 114
    iget-boolean v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mIsGestureStarted:Z

    .line 116
    if-nez v2, :cond_3

    .line 118
    iget-object v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    .line 120
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    .line 125
    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 127
    iget v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrX:F

    .line 130
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    .line 132
    move-result v2

    .line 135
    sub-float/2addr v1, v2

    .line 136
    iget v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrY:F

    .line 137
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    .line 139
    move-result v0

    .line 142
    sub-float/2addr v2, v0

    .line 143
    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mIsGestureStarted:Z

    .line 144
    if-nez v0, :cond_3

    .line 146
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 148
    move-result v0

    .line 151
    const/high16 v3, 0x41f00000    # 30.0f

    .line 152
    cmpg-float v0, v0, v3

    .line 154
    if-gtz v0, :cond_3

    .line 156
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 158
    move-result v0

    .line 161
    cmpg-float v0, v0, v3

    .line 162
    if-gtz v0, :cond_3

    .line 164
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    .line 166
    invoke-virtual {v0, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 168
    move-result-object v3

    .line 171
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    .line 175
    const-string v3, "currTime - mDownTime < MSG_CHECK_GESTURE_STUB_TOUCHABLE_TIMEOUT updateViewLayout UnTouchable, diffX:"

    .line 177
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, " diffY:"

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object v0

    .line 196
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_3
    iput-boolean v4, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mIsGestureStarted:Z

    .line 200
    goto :goto_0

    .line 202
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 203
    move-result v0

    .line 206
    iput v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mAssistX2:F

    .line 207
    iput v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mAssistX1:F

    .line 209
    iput v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownX:F

    .line 211
    iput v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrX:F

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 215
    move-result v0

    .line 218
    iput v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownY:F

    .line 219
    iput v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrY:F

    .line 221
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    .line 223
    if-eqz v0, :cond_5

    .line 225
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 227
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    .line 230
    move-result-object v0

    .line 233
    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    .line 234
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    .line 236
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 238
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    .line 241
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 243
    move-result-object v1

    .line 246
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 247
    const-string v0, "onTouch ACTION_DOWN sendMessageDelayed MSG_CHECK_GESTURE_STUB_TOUCHABLE"

    .line 250
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGesturesBackController:Lcom/android/systemui/fsgesture/GesturesBackController;

    .line 255
    if-eqz v0, :cond_7

    .line 257
    iget v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    .line 259
    if-eq v1, v5, :cond_7

    .line 261
    iget-boolean p0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mPendingResetStatus:Z

    .line 263
    if-nez p0, :cond_7

    .line 265
    invoke-virtual {v0, p1}, Lcom/android/systemui/fsgesture/GesturesBackController;->onPointerEvent(Landroid/view/MotionEvent;)V

    .line 267
    return v7

    .line 270
    :cond_7
    return v4
    .line 271
.end method

.method public final resetRenderProperty(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mKeepHidden:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    .line 7
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->getGestureStubWindowParam()Landroid/view/WindowManager$LayoutParams;

    .line 9
    move-result-object v1

    .line 12
    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    const-string/jumbo v0, "resetRenderProperty: "

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 22
    const-string v0, "GestureStubView"

    .line 23
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 28
    move-result-object p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 34
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNeedRender:Z

    .line 41
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 43
    move-result-object p1

    .line 46
    invoke-interface {p1, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 47
    :cond_1
    return-void
    .line 50
.end method

.method public final rotateGesture()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/fsgesture/GestureStubView;->setSize(I)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Landroid/graphics/Point;

    .line 11
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 13
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    .line 16
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 18
    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplay:Landroid/view/Display;

    .line 22
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 24
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 27
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 29
    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mDisplayWidth:I

    .line 31
    :cond_0
    return-void
    .line 33
.end method

.method public setGestureStubPosition(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    .line 2
    new-instance p1, Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mContext:Landroid/content/Context;

    .line 6
    iget v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    .line 8
    const/4 v2, 0x0

    .line 10
    invoke-direct {p1, v0, v2, v1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 16
    new-instance p1, Landroid/graphics/Point;

    .line 19
    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 21
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    .line 24
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 26
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplay:Landroid/view/Display;

    .line 30
    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 32
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 35
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 37
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mDisplayWidth:I

    .line 39
    return-void
    .line 41
.end method

.method public setSize(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    .line 2
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    .line 4
    sget-boolean p1, Lcom/miui/utils/configs/MiuiConfigs;->IS_NOTCH:Z

    .line 6
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz p1, :cond_6

    .line 10
    iget p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchHeight:I

    .line 12
    if-lez p1, :cond_6

    .line 14
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDisplay:Landroid/view/Display;

    .line 16
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 18
    move-result p1

    .line 21
    const/high16 v2, 0x43240000    # 164.0f

    .line 22
    if-eq p1, v0, :cond_3

    .line 24
    const/4 v3, 0x3

    .line 26
    if-eq p1, v3, :cond_0

    .line 27
    iget p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    .line 29
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    .line 31
    iput-boolean v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNeedAdjustArrowPosition:Z

    .line 33
    iput v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mBesideNotchArrowXStart:I

    .line 35
    goto :goto_2

    .line 37
    :cond_0
    iget p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    .line 38
    if-ne p1, v0, :cond_1

    .line 40
    iget p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    .line 42
    iget v3, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchHeight:I

    .line 44
    add-int/2addr p1, v3

    .line 46
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    .line 47
    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNeedAdjustArrowPosition:Z

    .line 49
    goto :goto_0

    .line 51
    :cond_1
    if-nez p1, :cond_2

    .line 52
    iget p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    .line 54
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    .line 56
    iput-boolean v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNeedAdjustArrowPosition:Z

    .line 58
    :cond_2
    :goto_0
    iget p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchWidth:I

    .line 60
    int-to-float p1, p1

    .line 62
    iget v3, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDensity:F

    .line 63
    mul-float/2addr v3, v2

    .line 65
    cmpg-float p1, p1, v3

    .line 66
    if-gez p1, :cond_6

    .line 68
    iget p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchHeight:I

    .line 70
    sub-int/2addr p1, v0

    .line 72
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mBesideNotchArrowXStart:I

    .line 73
    goto :goto_2

    .line 75
    :cond_3
    iget p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubPos:I

    .line 76
    if-nez p1, :cond_4

    .line 78
    iget p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    .line 80
    iget v3, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchHeight:I

    .line 82
    add-int/2addr p1, v3

    .line 84
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    .line 85
    iput-boolean v0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNeedAdjustArrowPosition:Z

    .line 87
    goto :goto_1

    .line 89
    :cond_4
    if-ne p1, v0, :cond_5

    .line 90
    iget p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubDefaultSize:I

    .line 92
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureStubSize:I

    .line 94
    iput-boolean v1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNeedAdjustArrowPosition:Z

    .line 96
    :cond_5
    :goto_1
    iget p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchWidth:I

    .line 98
    int-to-float p1, p1

    .line 100
    iget v3, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDensity:F

    .line 101
    mul-float/2addr v3, v2

    .line 103
    cmpg-float p1, p1, v3

    .line 104
    if-gez p1, :cond_6

    .line 106
    iget p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mNotchHeight:I

    .line 108
    sub-int/2addr p1, v0

    .line 110
    iput p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mBesideNotchArrowXStart:I

    .line 111
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGesturesBackController:Lcom/android/systemui/fsgesture/GesturesBackController;

    .line 113
    if-eqz p1, :cond_7

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureStubView;->initGestureEdgeSize()[I

    .line 117
    move-result-object p1

    .line 120
    iget-object v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mGesturesBackController:Lcom/android/systemui/fsgesture/GesturesBackController;

    .line 121
    aget v1, p1, v1

    .line 123
    aget p1, p1, v0

    .line 125
    iput v1, v2, Lcom/android/systemui/fsgesture/GesturesBackController;->mGestureEdgeLeft:I

    .line 127
    iput p1, v2, Lcom/android/systemui/fsgesture/GesturesBackController;->mGestureEdgeRight:I

    .line 129
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 131
    move-result p1

    .line 134
    if-eqz p1, :cond_8

    .line 135
    const-string/jumbo p1, "setSize"

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/systemui/fsgesture/GestureStubView;->resetRenderProperty(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_3

    .line 143
    :catch_0
    move-exception p0

    .line 144
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    :cond_8
    :goto_3
    return-void
    .line 148
.end method
