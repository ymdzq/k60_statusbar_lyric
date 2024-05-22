.class public final synthetic Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$1:Landroid/view/SurfaceControl;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda1;->f$0:Landroid/view/SurfaceControl$Transaction;

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda1;->f$1:Landroid/view/SurfaceControl;

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda1;->f$0:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda1;->f$1:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda1;->f$0:Landroid/view/SurfaceControl$Transaction;

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda1;->f$1:Landroid/view/SurfaceControl;

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 12
    check-cast p0, Landroid/graphics/Rect;

    .line 14
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Float;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 22
    move-result p1

    .line 25
    invoke-virtual {v0, v1, p1, p1}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 26
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 29
    move-result v2

    .line 32
    int-to-float v2, v2

    .line 33
    mul-float/2addr v2, p1

    .line 34
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 35
    move-result v3

    .line 38
    int-to-float v3, v3

    .line 39
    mul-float/2addr v3, p1

    .line 40
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    .line 41
    move-result p1

    .line 44
    const/high16 v4, 0x40000000    # 2.0f

    .line 45
    div-float/2addr v2, v4

    .line 47
    float-to-int v2, v2

    .line 48
    sub-int/2addr p1, v2

    .line 49
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    .line 50
    move-result p0

    .line 53
    div-float/2addr v3, v4

    .line 54
    float-to-int v2, v3

    .line 55
    sub-int/2addr p0, v2

    .line 56
    int-to-float p1, p1

    .line 57
    int-to-float p0, p0

    .line 58
    invoke-virtual {v0, v1, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 59
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 62
    return-void

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 66
    check-cast v0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;

    .line 68
    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda1;->f$0:Landroid/view/SurfaceControl$Transaction;

    .line 70
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda1;->f$1:Landroid/view/SurfaceControl;

    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 77
    move-result-object p1

    .line 80
    check-cast p1, Ljava/lang/Float;

    .line 81
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 83
    move-result p1

    .line 86
    iget-object v0, v0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mPosition:Landroid/graphics/Point;

    .line 87
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 89
    int-to-float v2, v2

    .line 91
    const/high16 v3, 0x3f800000    # 1.0f

    .line 92
    sub-float/2addr v3, p1

    .line 94
    mul-float/2addr v2, v3

    .line 95
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 96
    int-to-float v0, v0

    .line 98
    mul-float/2addr v0, v3

    .line 99
    invoke-virtual {v1, p0, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 100
    move-result-object v0

    .line 103
    invoke-virtual {v0, p0, p1, p1}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 104
    move-result-object p1

    .line 107
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 108
    move-result-object p0

    .line 111
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 112
    return-void

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 116
.end method
