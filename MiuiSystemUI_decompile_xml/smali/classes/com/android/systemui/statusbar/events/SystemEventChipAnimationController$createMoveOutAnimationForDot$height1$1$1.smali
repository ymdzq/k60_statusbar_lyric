.class public final Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$height1$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/core/animation/Animator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $chipVerticalCenter:I

.field public final synthetic $r8$classId:I

.field public final synthetic $this_apply:Landroidx/core/animation/ValueAnimator;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;II)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$height1$1$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$height1$1$1;->this$0:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$height1$1$1;->$this_apply:Landroidx/core/animation/ValueAnimator;

    .line 6
    iput p3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$height1$1$1;->$chipVerticalCenter:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/core/animation/Animator;)V
    .locals 5

    .line 1
    const/4 p1, 0x2

    .line 2
    iget v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$height1$1$1;->$r8$classId:I

    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$height1$1$1;->this$0:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    .line 5
    iget v2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$height1$1$1;->$chipVerticalCenter:I

    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$height1$1$1;->$this_apply:Landroidx/core/animation/ValueAnimator;

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 11
    goto :goto_0

    .line 14
    :pswitch_0
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/Integer;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result p0

    .line 24
    iget-object v0, v1, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animRect:Landroid/graphics/Rect;

    .line 25
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 27
    int-to-float p0, p0

    .line 29
    int-to-float p1, p1

    .line 30
    div-float/2addr p0, p1

    .line 31
    invoke-static {p0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 32
    move-result p1

    .line 35
    sub-int p1, v2, p1

    .line 36
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 38
    invoke-static {p0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 40
    move-result p0

    .line 43
    add-int/2addr p0, v2

    .line 44
    invoke-virtual {v0, v3, p1, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 45
    iget-object p0, v1, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    .line 48
    if-eqz p0, :cond_0

    .line 50
    iget-object p1, v1, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animRect:Landroid/graphics/Rect;

    .line 52
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 54
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 56
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 58
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 60
    invoke-interface {p0, v0, v1, v2, p1}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->setBoundsForAnimation(IIII)V

    .line 62
    :cond_0
    return-void

    .line 65
    :goto_0
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 66
    move-result-object p0

    .line 69
    check-cast p0, Ljava/lang/Integer;

    .line 70
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 72
    move-result p0

    .line 75
    iget-object v0, v1, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animRect:Landroid/graphics/Rect;

    .line 76
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 78
    int-to-float p0, p0

    .line 80
    int-to-float p1, p1

    .line 81
    div-float/2addr p0, p1

    .line 82
    invoke-static {p0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 83
    move-result p1

    .line 86
    sub-int p1, v2, p1

    .line 87
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 89
    invoke-static {p0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 91
    move-result p0

    .line 94
    add-int/2addr p0, v2

    .line 95
    invoke-virtual {v0, v3, p1, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 96
    iget-object p0, v1, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    .line 99
    if-eqz p0, :cond_1

    .line 101
    iget-object p1, v1, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animRect:Landroid/graphics/Rect;

    .line 103
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 105
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 107
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 109
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 111
    invoke-interface {p0, v0, v1, v2, p1}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->setBoundsForAnimation(IIII)V

    .line 113
    :cond_1
    return-void

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 118
.end method
