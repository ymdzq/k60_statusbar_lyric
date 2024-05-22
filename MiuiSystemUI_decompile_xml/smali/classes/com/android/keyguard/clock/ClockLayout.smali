.class public Lcom/android/keyguard/clock/ClockLayout;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAnalogClock:Landroid/view/View;

.field public mBurnInPreventionOffsetX:I

.field public mBurnInPreventionOffsetY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/clock/ClockLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/clock/ClockLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a00b6    # @id/analog_clock

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/keyguard/clock/ClockLayout;->mAnalogClock:Landroid/view/View;

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v0

    .line 17
    const v1, 0x7f07017d    # @dimen/burn_in_prevention_offset_x '8.0dp'

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 21
    move-result v1

    .line 24
    iput v1, p0, Lcom/android/keyguard/clock/ClockLayout;->mBurnInPreventionOffsetX:I

    .line 25
    const v1, 0x7f07017e    # @dimen/burn_in_prevention_offset_y '50.0dp'

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    move-result v0

    .line 33
    iput v0, p0, Lcom/android/keyguard/clock/ClockLayout;->mBurnInPreventionOffsetY:I

    .line 34
    return-void
    .line 36
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget p1, p0, Lcom/android/keyguard/clock/ClockLayout;->mBurnInPreventionOffsetX:I

    .line 5
    mul-int/lit8 p1, p1, 0x2

    .line 7
    const/4 p2, 0x1

    .line 9
    invoke-static {p1, p2}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    .line 10
    move-result p1

    .line 13
    iget p2, p0, Lcom/android/keyguard/clock/ClockLayout;->mBurnInPreventionOffsetX:I

    .line 14
    sub-int/2addr p1, p2

    .line 16
    int-to-float p1, p1

    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-static {p2, p1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 19
    move-result p1

    .line 22
    iget p3, p0, Lcom/android/keyguard/clock/ClockLayout;->mBurnInPreventionOffsetY:I

    .line 23
    mul-int/lit8 p3, p3, 0x2

    .line 25
    const/4 p4, 0x0

    .line 27
    invoke-static {p3, p4}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    .line 28
    move-result p3

    .line 31
    int-to-float p3, p3

    .line 32
    iget p4, p0, Lcom/android/keyguard/clock/ClockLayout;->mBurnInPreventionOffsetY:I

    .line 33
    int-to-float p4, p4

    .line 35
    const/high16 p5, 0x3f000000    # 0.5f

    .line 36
    mul-float/2addr p4, p5

    .line 38
    sub-float/2addr p3, p4

    .line 39
    invoke-static {p2, p3, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 40
    move-result p3

    .line 43
    iget-object p4, p0, Lcom/android/keyguard/clock/ClockLayout;->mAnalogClock:Landroid/view/View;

    .line 44
    if-eqz p4, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 48
    move-result v0

    .line 51
    iget-object v1, p0, Lcom/android/keyguard/clock/ClockLayout;->mAnalogClock:Landroid/view/View;

    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 54
    move-result v1

    .line 57
    sub-int/2addr v0, v1

    .line 58
    int-to-float v0, v0

    .line 59
    mul-float/2addr v0, p5

    .line 60
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    .line 61
    move-result v0

    .line 64
    const/high16 v1, 0x40400000    # 3.0f

    .line 65
    mul-float/2addr p1, v1

    .line 67
    add-float/2addr p1, v0

    .line 68
    invoke-virtual {p4, p1}, Landroid/view/View;->setX(F)V

    .line 69
    iget-object p1, p0, Lcom/android/keyguard/clock/ClockLayout;->mAnalogClock:Landroid/view/View;

    .line 72
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 74
    move-result p4

    .line 77
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockLayout;->mAnalogClock:Landroid/view/View;

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 80
    move-result p0

    .line 83
    sub-int/2addr p4, p0

    .line 84
    int-to-float p0, p4

    .line 85
    mul-float/2addr p0, p5

    .line 86
    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    .line 87
    move-result p0

    .line 90
    mul-float/2addr p3, v1

    .line 91
    add-float/2addr p3, p0

    .line 92
    invoke-virtual {p1, p3}, Landroid/view/View;->setY(F)V

    .line 93
    :cond_0
    return-void
    .line 96
.end method
