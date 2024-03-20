.class public final Lcom/android/systemui/navigationbar/buttons/DeadZone;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final FLASH_PROPERTY:Lcom/android/systemui/navigationbar/buttons/DeadZone$1;


# instance fields
.field public final mDebugFlash:Lcom/android/systemui/navigationbar/buttons/DeadZone$2;

.field public mDecay:I

.field public final mDisplayId:I

.field public mDisplayRotation:I

.field public mFlashFrac:F

.field public mHold:I

.field public mLastPokeTime:J

.field public final mNavBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

.field public final mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

.field public mShouldFlash:Z

.field public mSizeMax:I

.field public mSizeMin:I

.field public mVertical:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/buttons/DeadZone$1;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/navigationbar/buttons/DeadZone$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->FLASH_PROPERTY:Lcom/android/systemui/navigationbar/buttons/DeadZone$1;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mFlashFrac:F

    .line 6
    new-instance v0, Lcom/android/systemui/navigationbar/buttons/DeadZone$2;

    .line 8
    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/buttons/DeadZone$2;-><init>(Lcom/android/systemui/navigationbar/buttons/DeadZone;)V

    .line 10
    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mDebugFlash:Lcom/android/systemui/navigationbar/buttons/DeadZone$2;

    .line 13
    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 15
    const-class v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 17
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 23
    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mNavBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 25
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 27
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 31
    move-result p1

    .line 34
    iput p1, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mDisplayId:I

    .line 35
    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/buttons/DeadZone;->onConfigurationChanged(I)V

    .line 38
    return-void
    .line 41
.end method


# virtual methods
.method public final getSize(J)F
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mSizeMax:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-wide v1, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mLastPokeTime:J

    .line 8
    sub-long/2addr p1, v1

    .line 10
    iget v1, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mHold:I

    .line 11
    iget v2, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mDecay:I

    .line 13
    add-int v3, v1, v2

    .line 15
    int-to-long v3, v3

    .line 17
    cmp-long v3, p1, v3

    .line 18
    if-lez v3, :cond_1

    .line 20
    iget p0, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mSizeMin:I

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    int-to-long v3, v1

    .line 25
    cmp-long v3, p1, v3

    .line 26
    if-gez v3, :cond_2

    .line 28
    int-to-float p0, v0

    .line 30
    return p0

    .line 31
    :cond_2
    int-to-float v0, v0

    .line 32
    iget p0, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mSizeMin:I

    .line 33
    int-to-float p0, p0

    .line 35
    int-to-long v3, v1

    .line 36
    sub-long/2addr p1, v3

    .line 37
    long-to-float p1, p1

    .line 38
    int-to-float p2, v2

    .line 39
    div-float/2addr p1, p2

    .line 40
    invoke-static {p0, v0, p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 41
    move-result p0

    .line 44
    float-to-int p0, p0

    .line 45
    :goto_0
    int-to-float p0, p0

    .line 46
    return p0
    .line 47
.end method

.method public final onConfigurationChanged(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mDisplayRotation:I

    .line 2
    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 4
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 9
    const v1, 0x7f0b00e5    # @integer/navigation_bar_deadzone_hold '111'

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 13
    move-result v1

    .line 16
    iput v1, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mHold:I

    .line 17
    const v1, 0x7f0b00e4    # @integer/navigation_bar_deadzone_decay '222'

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 22
    move-result v1

    .line 25
    iput v1, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mDecay:I

    .line 26
    const v1, 0x7f070d10    # @dimen/navigation_bar_deadzone_size '4.0dp'

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    move-result v1

    .line 34
    iput v1, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mSizeMin:I

    .line 35
    const v1, 0x7f070d11    # @dimen/navigation_bar_deadzone_size_max '24.0dp'

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    move-result v1

    .line 43
    iput v1, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mSizeMax:I

    .line 44
    const v1, 0x7f0b00e6    # @integer/navigation_bar_deadzone_orientation '0'

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 49
    move-result v1

    .line 52
    const/4 v2, 0x1

    .line 53
    if-ne v1, v2, :cond_0

    .line 54
    goto :goto_0

    .line 56
    :cond_0
    const/4 v2, 0x0

    .line 57
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mVertical:Z

    .line 58
    const v1, 0x7f050017    # @bool/config_dead_zone_flash 'false'

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 63
    move-result v0

    .line 66
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mShouldFlash:Z

    .line 67
    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mFlashFrac:F

    .line 70
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->postInvalidate()V

    .line 72
    return-void
    .line 75
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 3
    move-result v1

    .line 6
    const/4 v2, 0x3

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    return v0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 11
    move-result v1

    .line 14
    const/4 v3, 0x4

    .line 15
    iget-object v4, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 16
    const/4 v5, 0x1

    .line 18
    if-ne v1, v3, :cond_2

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 21
    move-result-wide v0

    .line 24
    iput-wide v0, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mLastPokeTime:J

    .line 25
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mShouldFlash:Z

    .line 27
    if-eqz p0, :cond_1

    .line 29
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->postInvalidate()V

    .line 31
    :cond_1
    return v5

    .line 34
    :cond_2
    if-nez v1, :cond_7

    .line 35
    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mNavBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 37
    iget v3, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mDisplayId:I

    .line 39
    invoke-virtual {v1, v3}, Lcom/android/systemui/navigationbar/NavigationBarController;->touchAutoDim(I)V

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 44
    move-result-wide v6

    .line 47
    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/navigationbar/buttons/DeadZone;->getSize(J)F

    .line 48
    move-result v1

    .line 51
    float-to-int v1, v1

    .line 52
    iget-boolean v3, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mVertical:Z

    .line 53
    if-eqz v3, :cond_4

    .line 55
    iget v3, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mDisplayRotation:I

    .line 57
    if-ne v3, v2, :cond_3

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 61
    move-result v2

    .line 64
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    .line 65
    move-result v3

    .line 68
    sub-int/2addr v3, v1

    .line 69
    int-to-float v1, v3

    .line 70
    cmpl-float v1, v2, v1

    .line 71
    if-lez v1, :cond_5

    .line 73
    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 76
    move-result v2

    .line 79
    int-to-float v1, v1

    .line 80
    cmpg-float v1, v2, v1

    .line 81
    if-gez v1, :cond_5

    .line 83
    goto :goto_0

    .line 85
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 86
    move-result v2

    .line 89
    int-to-float v1, v1

    .line 90
    cmpg-float v1, v2, v1

    .line 91
    if-gez v1, :cond_5

    .line 93
    :goto_0
    move v1, v5

    .line 95
    goto :goto_1

    .line 96
    :cond_5
    move v1, v0

    .line 97
    :goto_1
    if-eqz v1, :cond_7

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 103
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mShouldFlash:Z

    .line 106
    if-eqz p1, :cond_6

    .line 108
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/DeadZone;->mDebugFlash:Lcom/android/systemui/navigationbar/buttons/DeadZone$2;

    .line 110
    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 112
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->postInvalidate()V

    .line 115
    :cond_6
    return v5

    .line 118
    :cond_7
    return v0
    .line 119
.end method
