.class final synthetic Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$animateStuckToTarget$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const/4 v1, 0x5

    .line 2
    const-class v3, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    .line 3
    const-string v4, "animateStuckToTargetInternal"

    .line 5
    const-string v5, "animateStuckToTargetInternal(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;FFZLkotlin/jvm/functions/Function0;)V"

    .line 7
    const/4 v6, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v2, p1

    .line 11
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    .line 2
    check-cast p2, Ljava/lang/Number;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 6
    move-result p2

    .line 9
    check-cast p3, Ljava/lang/Number;

    .line 10
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    .line 12
    move-result p3

    .line 15
    check-cast p4, Ljava/lang/Boolean;

    .line 16
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    move-result p4

    .line 21
    check-cast p5, Lkotlin/jvm/functions/Function0;

    .line 22
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 24
    check-cast p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    new-instance v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;

    .line 34
    invoke-direct {v0, p1}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;-><init>(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;)V

    .line 36
    iget-object v1, p1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->targetView:Landroid/view/View;

    .line 39
    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 41
    iget-object v0, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->underlyingObject:Ljava/lang/Object;

    .line 44
    iget-object v1, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->objectLocationOnScreen:[I

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->getLocationOnScreen(Ljava/lang/Object;[I)V

    .line 48
    iget-object p1, p1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->centerOnScreen:Landroid/graphics/PointF;

    .line 51
    iget v2, p1, Landroid/graphics/PointF;->x:F

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->getWidth(Ljava/lang/Object;)F

    .line 55
    move-result v3

    .line 58
    const/high16 v4, 0x40000000    # 2.0f

    .line 59
    div-float/2addr v3, v4

    .line 61
    sub-float/2addr v2, v3

    .line 62
    const/4 v3, 0x0

    .line 63
    aget v3, v1, v3

    .line 64
    int-to-float v3, v3

    .line 66
    sub-float/2addr v2, v3

    .line 67
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->getHeight(Ljava/lang/Object;)F

    .line 70
    move-result v3

    .line 73
    div-float/2addr v3, v4

    .line 74
    sub-float/2addr p1, v3

    .line 75
    const/4 v3, 0x1

    .line 76
    aget v1, v1, v3

    .line 77
    int-to-float v1, v1

    .line 79
    sub-float/2addr p1, v1

    .line 80
    if-eqz p4, :cond_0

    .line 81
    iget-object p4, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flungIntoTargetSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 83
    goto :goto_0

    .line 85
    :cond_0
    iget-object p4, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->springConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->cancelAnimations$frameworks__base__libs__WindowManager__Shell__android_common__WindowManager_Shell()V

    .line 88
    iget-object v1, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->xProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 91
    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    .line 93
    move-result v3

    .line 96
    add-float/2addr v3, v2

    .line 97
    iget-object v2, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->animator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 98
    invoke-virtual {v2, v1, v3, p2, p4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 100
    iget-object p0, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->yProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 103
    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    .line 105
    move-result p2

    .line 108
    add-float/2addr p2, p1

    .line 109
    invoke-virtual {v2, p0, p2, p3, p4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 110
    if-eqz p5, :cond_1

    .line 113
    filled-new-array {p5}, [Lkotlin/jvm/functions/Function0;

    .line 115
    move-result-object p0

    .line 118
    iget-object p1, v2, Lcom/android/wm/shell/animation/PhysicsAnimator;->endActions:Ljava/util/ArrayList;

    .line 119
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    .line 121
    move-result-object p0

    .line 124
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 125
    :cond_1
    invoke-virtual {v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 128
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 131
    return-object p0
    .line 133
.end method
