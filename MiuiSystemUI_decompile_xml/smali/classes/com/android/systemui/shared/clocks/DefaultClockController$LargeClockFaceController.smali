.class public final Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;
.super Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final config:Lcom/android/systemui/plugins/ClockFaceConfig;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/clocks/DefaultClockController;Lcom/android/systemui/shared/clocks/AnimatableClockView;Ljava/lang/Integer;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;-><init>(Lcom/android/systemui/shared/clocks/DefaultClockController;Lcom/android/systemui/shared/clocks/AnimatableClockView;Ljava/lang/Integer;)V

    .line 2
    new-instance p3, Lcom/android/systemui/plugins/ClockFaceConfig;

    .line 5
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    iget-boolean v3, p1, Lcom/android/systemui/shared/clocks/DefaultClockController;->hasStepClockAnimation:Z

    .line 9
    const/4 v4, 0x3

    .line 11
    const/4 v5, 0x0

    .line 12
    move-object v0, p3

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/plugins/ClockFaceConfig;-><init>(Lcom/android/systemui/plugins/ClockTickRate;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    iput-object p3, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;->config:Lcom/android/systemui/plugins/ClockFaceConfig;

    .line 17
    new-instance p3, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockAnimations;

    .line 19
    const/4 v0, 0x0

    .line 21
    invoke-direct {p3, p1, p2, v0, v0}, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockAnimations;-><init>(Lcom/android/systemui/shared/clocks/DefaultClockController;Lcom/android/systemui/shared/clocks/AnimatableClockView;FF)V

    .line 22
    iput-object p3, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->animations:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;

    .line 25
    return-void
    .line 27
.end method


# virtual methods
.method public final getConfig()Lcom/android/systemui/plugins/ClockFaceConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;->config:Lcom/android/systemui/plugins/ClockFaceConfig;

    .line 2
    return-object p0
    .line 4
.end method

.method public final recomputePadding(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    instance-of v1, v0, Landroid/view/View;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    check-cast v0, Landroid/view/View;

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    .line 16
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    .line 22
    move-result p1

    .line 25
    int-to-float p1, p1

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 27
    move-result v0

    .line 30
    int-to-float v0, v0

    .line 31
    const/high16 v1, 0x40000000    # 2.0f

    .line 32
    div-float/2addr v0, v1

    .line 34
    sub-float/2addr p1, v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getBottom()F

    .line 44
    move-result v1

    .line 47
    const/high16 v2, -0x41000000    # -0.5f

    .line 48
    mul-float/2addr v1, v2

    .line 50
    add-float/2addr v1, p1

    .line 51
    float-to-int p1, v1

    .line 52
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 53
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    return-void
    .line 58
.end method
