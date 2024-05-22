.class public final synthetic Lcom/android/wm/shell/back/CrossActivityAnimation$Callback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/window/BackProgressAnimator$ProgressCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/back/CrossActivityAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/CrossActivityAnimation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation$Callback$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/back/CrossActivityAnimation;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onProgressUpdate(Landroid/window/BackEvent;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation$Callback$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/back/CrossActivityAnimation;

    .line 2
    iget-boolean v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mBackInProgress:Z

    .line 4
    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mInitialTouchPos:Landroid/graphics/PointF;

    .line 8
    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchX()F

    .line 10
    move-result v1

    .line 13
    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    .line 14
    move-result v2

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 18
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mBackInProgress:Z

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mTouchPos:Landroid/graphics/PointF;

    .line 24
    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchX()F

    .line 26
    move-result v1

    .line 29
    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    .line 30
    move-result v2

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 34
    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    .line 37
    move-result p1

    .line 40
    const v0, 0x3dcccccd    # 0.1f

    .line 41
    cmpl-float v1, p1, v0

    .line 44
    const/high16 v2, 0x3f000000    # 0.5f

    .line 46
    if-lez v1, :cond_1

    .line 48
    sub-float v0, p1, v0

    .line 50
    mul-float/2addr v0, v2

    .line 52
    const v1, 0x3f666666    # 0.9f

    .line 53
    div-float/2addr v0, v1

    .line 56
    add-float/2addr v0, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x0

    .line 59
    sub-float v1, p1, v0

    .line 60
    mul-float/2addr v1, v2

    .line 62
    const/high16 v2, 0x3f800000    # 1.0f

    .line 63
    div-float/2addr v1, v2

    .line 65
    add-float/2addr v0, v1

    .line 66
    :goto_0
    const/high16 v1, 0x42c80000    # 100.0f

    .line 67
    mul-float/2addr v0, v1

    .line 69
    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mLeavingProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    .line 70
    invoke-virtual {v1, v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 72
    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mEnteringProgressSpring:Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    .line 75
    invoke-virtual {v1, v0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 77
    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/back/BackAnimationBackground;->onBackProgressed(F)V

    .line 82
    return-void
    .line 85
.end method
