.class public Lmiuix/appcompat/internal/app/FragmentAnimator;
.super Landroid/animation/ValueAnimator;
.source "FragmentAnimator.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final USE_DIM:Z


# instance fields
.field private mFromDim:I

.field private mFromXDelta:F

.field private mFromXValue:F

.field private mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mToDim:I

.field private mToXDelta:F

.field private mToXValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lmiuix/appcompat/internal/app/FragmentAnimator;->USE_DIM:Z

    .line 31
    new-instance v0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    invoke-direct {v0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;-><init>()V

    const v1, 0x3f733333    # 0.95f

    .line 32
    invoke-virtual {v0, v1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setDamping(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setResponse(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/internal/app/FragmentAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;ZZ)V
    .locals 3

    .line 43
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const/high16 p1, 0x42190000    # 38.25f

    const/high16 v0, -0x41800000    # -0.25f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 46
    invoke-direct {p0, v1, v2}, Lmiuix/appcompat/internal/app/FragmentAnimator;->initValues(FF)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-direct {p0, v2, v0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->initValues(FF)V

    .line 49
    sget-boolean p2, Lmiuix/appcompat/internal/app/FragmentAnimator;->USE_DIM:Z

    if-eqz p2, :cond_3

    .line 50
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mToDim:I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 55
    invoke-direct {p0, v0, v2}, Lmiuix/appcompat/internal/app/FragmentAnimator;->initValues(FF)V

    .line 56
    sget-boolean p2, Lmiuix/appcompat/internal/app/FragmentAnimator;->USE_DIM:Z

    if-eqz p2, :cond_3

    .line 57
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromDim:I

    goto :goto_0

    .line 60
    :cond_2
    invoke-direct {p0, v2, v1}, Lmiuix/appcompat/internal/app/FragmentAnimator;->initValues(FF)V

    .line 64
    :cond_3
    :goto_0
    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 65
    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 66
    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 67
    sget-object p1, Lmiuix/appcompat/internal/app/FragmentAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p1, 0x1f4

    .line 68
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private clearForeground(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x0

    .line 122
    invoke-virtual {p1, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initValues(FF)V
    .locals 0

    .line 72
    iput p1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromXValue:F

    .line 73
    iput p2, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mToXValue:F

    return-void
.end method

.method private setForegroundDim(Landroid/view/View;I)V
    .locals 1

    if-gez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0xff

    if-le p2, p0, :cond_1

    move p2, p0

    .line 112
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_2

    .line 114
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, -0x1000000

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 115
    invoke-virtual {p1, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_2
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method private updateTargetParams()V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .line 98
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 99
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 101
    :goto_0
    iget v1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromXValue:F

    int-to-float v0, v0

    mul-float/2addr v1, v0

    iput v1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromXDelta:F

    .line 102
    iget v1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mToXValue:F

    mul-float/2addr v1, v0

    iput v1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mToXDelta:F

    return-void
.end method


# virtual methods
.method public getTarget()Ljava/lang/Object;
    .locals 0

    .line 92
    iget-object p0, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 141
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->getTarget()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->getTarget()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 145
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 147
    iget v0, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromDim:I

    iget v1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mToDim:I

    if-eq v0, v1, :cond_1

    .line 148
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/FragmentAnimator;->clearForeground(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 127
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->getTarget()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->getTarget()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 131
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->updateTargetParams()V

    .line 132
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 133
    iget v0, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromXDelta:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 134
    iget v0, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromDim:I

    iget v1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mToDim:I

    if-eq v0, v1, :cond_1

    .line 135
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->setForegroundDim(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 162
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 166
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 167
    iget v1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromXDelta:F

    .line 168
    iget v2, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mToXDelta:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 171
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 172
    iget v1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mFromDim:I

    iget v2, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mToDim:I

    if-eq v1, v2, :cond_2

    int-to-float v3, v1

    sub-int/2addr v2, v1

    int-to-float v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v3, v1

    .line 173
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/internal/app/FragmentAnimator;->setForegroundDim(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 180
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->updateTargetParams()V

    .line 181
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p0, p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    :cond_0
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 2

    .line 78
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/FragmentAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_3

    .line 80
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 83
    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 84
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 86
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/FragmentAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void
.end method
