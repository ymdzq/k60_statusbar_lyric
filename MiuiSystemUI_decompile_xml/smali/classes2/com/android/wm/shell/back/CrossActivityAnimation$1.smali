.class public final Lcom/android/wm/shell/back/CrossActivityAnimation$1;
.super Landroid/util/FloatProperty;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/back/CrossActivityAnimation$1;->$r8$classId:I

    .line 2
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final get(Lcom/android/wm/shell/back/CrossActivityAnimation;)Ljava/lang/Float;
    .locals 1

    iget p0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation$1;->$r8$classId:I

    const/high16 v0, 0x42c80000    # 100.0f

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget p0, p1, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringProgress:F

    mul-float/2addr p0, v0

    .line 4
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 5
    :goto_0
    iget p0, p1, Lcom/android/wm/shell/back/CrossActivityAnimation;->mLeavingProgress:F

    mul-float/2addr p0, v0

    .line 6
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Lcom/android/wm/shell/back/CrossActivityAnimation;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/back/CrossActivityAnimation$1;->get(Lcom/android/wm/shell/back/CrossActivityAnimation;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 2
    :goto_0
    check-cast p1, Lcom/android/wm/shell/back/CrossActivityAnimation;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/back/CrossActivityAnimation$1;->get(Lcom/android/wm/shell/back/CrossActivityAnimation;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final setValue(Lcom/android/wm/shell/back/CrossActivityAnimation;F)V
    .locals 9

    iget v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation$1;->$r8$classId:I

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const v5, 0x3c23d70a    # 0.01f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3e6147ae    # 0.22f

    const/high16 v8, 0x42c80000    # 100.0f

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    div-float v1, p2, v8

    .line 3
    iput v1, p1, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringProgress:F

    .line 4
    iget-object v8, p1, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v8, :cond_2

    iget-object v8, v8, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    if-eqz v8, :cond_2

    cmpg-float v8, v1, v7

    if-gez v8, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v4, v1, v6

    if-ltz v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    sub-float v4, v1, v7

    const v6, 0x3f47ae14    # 0.78f

    div-float/2addr v4, v6

    mul-float v6, v4, v4

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    mul-float v4, v2, v6

    .line 5
    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p1, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v4, p1, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringRect:Landroid/graphics/RectF;

    iget v5, p1, Lcom/android/wm/shell/back/CrossActivityAnimation;->mWindowXShift:F

    neg-float v5, v5

    const/4 v6, 0x0

    move-object v0, p1

    .line 6
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/back/CrossActivityAnimation;->transformWithProgress(FFLandroid/view/SurfaceControl;Landroid/graphics/RectF;FF)V

    :cond_2
    return-void

    :goto_1
    div-float v1, p2, v8

    .line 7
    iput v1, p1, Lcom/android/wm/shell/back/CrossActivityAnimation;->mLeavingProgress:F

    .line 8
    iget-object v8, p1, Lcom/android/wm/shell/back/CrossActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v8, :cond_5

    iget-object v8, v8, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    if-eqz v8, :cond_5

    cmpg-float v8, v1, v4

    if-gez v8, :cond_3

    goto :goto_2

    :cond_3
    cmpl-float v8, v1, v7

    if-ltz v8, :cond_4

    move v4, v6

    goto :goto_2

    :cond_4
    sub-float v4, v1, v4

    div-float/2addr v4, v7

    mul-float v7, v4, v4

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    mul-float v4, v2, v7

    :goto_2
    sub-float/2addr v6, v4

    .line 9
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p1, Lcom/android/wm/shell/back/CrossActivityAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v4, p1, Lcom/android/wm/shell/back/CrossActivityAnimation;->mClosingRect:Landroid/graphics/RectF;

    iget v6, p1, Lcom/android/wm/shell/back/CrossActivityAnimation;->mWindowXShift:F

    const/4 v5, 0x0

    move-object v0, p1

    .line 10
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/back/CrossActivityAnimation;->transformWithProgress(FFLandroid/view/SurfaceControl;Landroid/graphics/RectF;FF)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Lcom/android/wm/shell/back/CrossActivityAnimation;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/back/CrossActivityAnimation$1;->setValue(Lcom/android/wm/shell/back/CrossActivityAnimation;F)V

    return-void

    .line 2
    :goto_0
    check-cast p1, Lcom/android/wm/shell/back/CrossActivityAnimation;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/back/CrossActivityAnimation$1;->setValue(Lcom/android/wm/shell/back/CrossActivityAnimation;F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
