.class public Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final MSG_UPDATE_CURSOR_TYPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MiuiFreeformCursorHandler"

.field private static WAIT_THRESHOLD:I = 0xc8


# instance fields
.field private DEBUG:Z

.field private mCaptionHeight:I

.field private final mContext:Landroid/content/Context;

.field private mCurentPosition:I

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mLastPosition:I

.field private mLastPositionX:I

.field private mLastPositionY:I

.field private final mMainHandler:Landroid/os/Handler;

.field private mMiuiFreeformModeGestureHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;

.field private mSupportMouse:Z

.field mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCaptionHeight(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mCaptionHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$mupdateSupportMouse(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->updateSupportMouse()V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mCurentPosition:I

    .line 6
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mLastPosition:I

    .line 8
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mLastPositionX:I

    .line 11
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mLastPositionY:I

    .line 13
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->DEBUG:Z

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    const-string v2, "MiuiFreeformCursorHandler mainHandler:"

    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 30
    const-string v2, "MiuiFreeformCursorHandler"

    .line 31
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mMainHandler:Landroid/os/Handler;

    .line 38
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mMiuiFreeformModeGestureHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;

    .line 40
    iput p4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mCaptionHeight:I

    .line 42
    const-string p3, "input"

    .line 44
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 49
    check-cast p1, Landroid/hardware/input/InputManager;

    .line 50
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mInputManager:Landroid/hardware/input/InputManager;

    .line 52
    new-instance p3, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler$MiuiInputDeviceListener;

    .line 54
    invoke-direct {p3, p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler$MiuiInputDeviceListener;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;I)V

    .line 56
    invoke-virtual {p1, p3, p2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 59
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->updateSupportMouse()V

    .line 62
    return-void
    .line 65
.end method

.method private updateLastPositon(II)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mLastPositionX:I

    .line 2
    iput p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mLastPositionY:I

    .line 4
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->DEBUG:Z

    .line 6
    if-eqz p0, :cond_0

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 10
    const-string v0, "mLastPositionX: "

    .line 12
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string p1, " mLastPositionY: "

    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 31
    const-string p1, "MiuiFreeformCursorHandler"

    .line 32
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    return-void
    .line 37
.end method

.method private updateSupportMouse()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mInputManager:Landroid/hardware/input/InputManager;

    .line 2
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "MiuiFreeformCursorHandler"

    .line 8
    if-eqz v0, :cond_1

    .line 10
    const/4 v2, 0x0

    .line 12
    iput-boolean v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mSupportMouse:Z

    .line 13
    array-length v3, v0

    .line 15
    :goto_0
    if-ge v2, v3, :cond_1

    .line 16
    aget v4, v0, v2

    .line 18
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mInputManager:Landroid/hardware/input/InputManager;

    .line 20
    invoke-virtual {v5, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 22
    move-result-object v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    const/16 v5, 0x2002

    .line 28
    invoke-virtual {v4, v5}, Landroid/view/InputDevice;->supportsSource(I)Z

    .line 30
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mSupportMouse:Z

    .line 37
    const-string/jumbo p0, "updateSupportMouse mSupportMouse\uff1atrue"

    .line 39
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void

    .line 45
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    const-string/jumbo p0, "updateSupportMouse mSupportMouse\uff1afalse"

    .line 49
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
    .line 55
.end method


# virtual methods
.method public getmLastPositionX()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mLastPositionX:I

    .line 2
    return p0
    .line 4
.end method

.method public getmLastPositionY()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mLastPositionY:I

    .line 2
    return p0
    .line 4
.end method

.method public handleMotionEvents(Landroid/view/MotionEvent;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->resetTouchState()V

    .line 8
    return-void

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mSupportMouse:Z

    .line 12
    if-nez v0, :cond_1

    .line 14
    return-void

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 18
    move-result v0

    .line 21
    const/4 v1, 0x2

    .line 22
    if-ne v0, v1, :cond_2

    .line 23
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->resetTouchState()V

    .line 25
    return-void

    .line 28
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 29
    move-result v0

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 33
    move-result v2

    .line 36
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mMiuiFreeformModeGestureHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;

    .line 37
    if-eqz v3, :cond_c

    .line 39
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->getMiuiWindowDecorViewModel()Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 41
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 45
    move-result-object v3

    .line 48
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getmMiuiInfinityModeController()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 49
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->isKeyguardLocked()Z

    .line 53
    move-result v3

    .line 56
    if-eqz v3, :cond_3

    .line 57
    goto/16 :goto_2

    .line 59
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 61
    move-result p1

    .line 64
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mMiuiFreeformModeGestureHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;

    .line 65
    invoke-virtual {v3, v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->findControlCursorActiveMiuiFreeformTask(FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 67
    move-result-object v3

    .line 70
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mMiuiFreeformModeGestureHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;

    .line 71
    invoke-virtual {v4, v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->findControlCursorMiuiFreeformTask(FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 73
    move-result-object v4

    .line 76
    if-nez v4, :cond_5

    .line 77
    new-instance v5, Landroid/util/DisplayMetrics;

    .line 79
    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 81
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {v6}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    .line 86
    move-result-object v6

    .line 89
    invoke-virtual {v6, v5}, Landroid/view/Display;->getDisplayRealMetricsSize(Landroid/util/DisplayMetrics;)V

    .line 90
    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 93
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mMiuiFreeformModeGestureHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;

    .line 95
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->getMiuiWindowDecorViewModel()Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 97
    move-result-object v6

    .line 100
    invoke-virtual {v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 101
    move-result-object v6

    .line 104
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getmMiuiInfinityModeController()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 105
    move-result-object v6

    .line 108
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getMiuiInfinityModeThermalArea()Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;

    .line 109
    move-result-object v6

    .line 112
    float-to-int v7, v0

    .line 113
    float-to-int v8, v2

    .line 114
    invoke-virtual {v6, v7, v8}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;->isWithinHotAreaRegion(II)Z

    .line 115
    move-result v6

    .line 118
    if-eqz v6, :cond_5

    .line 119
    div-int/2addr v5, v1

    .line 121
    int-to-float p1, v5

    .line 122
    cmpl-float p1, v0, p1

    .line 123
    if-lez p1, :cond_4

    .line 125
    const/16 p1, 0xbbe

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->setMagicPointerIconType(I)V

    .line 129
    goto :goto_0

    .line 132
    :cond_4
    const/16 p1, 0xbbf

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->setMagicPointerIconType(I)V

    .line 135
    :goto_0
    return-void

    .line 138
    :cond_5
    float-to-int v0, v0

    .line 139
    float-to-int v1, v2

    .line 140
    const/4 v2, 0x1

    .line 141
    if-eq p1, v2, :cond_a

    .line 142
    const/4 v2, 0x7

    .line 144
    if-eq p1, v2, :cond_6

    .line 145
    const/16 v2, 0x9

    .line 147
    if-eq p1, v2, :cond_6

    .line 149
    const/16 v2, 0xa

    .line 151
    if-eq p1, v2, :cond_a

    .line 153
    goto :goto_1

    .line 155
    :cond_6
    if-nez v4, :cond_7

    .line 156
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->resetTouchState()V

    .line 158
    return-void

    .line 161
    :cond_7
    if-nez v3, :cond_8

    .line 162
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->resetTouchStateInFreeform()V

    .line 164
    return-void

    .line 167
    :cond_8
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInAnimating()Z

    .line 168
    move-result p1

    .line 171
    if-eqz p1, :cond_9

    .line 172
    return-void

    .line 174
    :cond_9
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->updateCursorType(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;II)V

    .line 175
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->updateLastPositon(II)V

    .line 178
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mCaptionHeight:I

    .line 181
    invoke-static {v3, v0, v1, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorUtils;->getMousePosition(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;III)I

    .line 183
    move-result p1

    .line 186
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mLastPosition:I

    .line 187
    if-eq p1, v0, :cond_b

    .line 189
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mCurentPosition:I

    .line 191
    goto :goto_1

    .line 193
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->updateLastPositon(II)V

    .line 194
    :cond_b
    :goto_1
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mCurentPosition:I

    .line 197
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mLastPosition:I

    .line 199
    return-void

    .line 201
    :cond_c
    :goto_2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->resetTouchState()V

    .line 202
    return-void
    .line 205
.end method

.method public resetTouchState()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mLastPosition:I

    .line 3
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mCurentPosition:I

    .line 5
    invoke-direct {p0, v0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->updateLastPositon(II)V

    .line 7
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorUtils;->getCursorType()I

    .line 10
    move-result v1

    .line 13
    if-eq v1, v0, :cond_0

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->setMagicPointerIconType(I)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public resetTouchStateInFreeform()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mLastPosition:I

    .line 3
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mCurentPosition:I

    .line 5
    invoke-direct {p0, v0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->updateLastPositon(II)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->setMagicPointerIconType(I)V

    .line 10
    return-void
    .line 13
.end method

.method public setMagicPointerIconType(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mMainHandler:Landroid/os/Handler;

    .line 2
    new-instance v1, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler$2;

    .line 4
    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler$2;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;I)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
    .line 12
.end method

.method public updateCursorType(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;II)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->mMainHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler$1;

    .line 7
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler$1;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;II)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    return-void
    .line 15
.end method
