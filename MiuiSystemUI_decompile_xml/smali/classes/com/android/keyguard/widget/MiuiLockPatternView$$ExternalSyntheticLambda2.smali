.class public final synthetic Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

.field public final synthetic f$1:Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/widget/MiuiLockPatternView;Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 5
    iput-object p2, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda2;->f$1:Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

    .line 7
    iput p3, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda2;->f$2:F

    .line 9
    iput p4, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda2;->f$3:F

    .line 11
    iput p5, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda2;->f$4:F

    .line 13
    iput p6, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda2;->f$5:F

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda2;->f$1:Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

    .line 4
    iget v2, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda2;->f$2:F

    .line 6
    iget v3, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda2;->f$3:F

    .line 8
    iget v4, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda2;->f$4:F

    .line 10
    iget p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda2;->f$5:F

    .line 12
    sget v5, Lcom/android/keyguard/widget/MiuiLockPatternView;->$r8$clinit:I

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/Float;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 25
    move-result p1

    .line 28
    const/high16 v5, 0x3f800000    # 1.0f

    .line 29
    sub-float/2addr v5, p1

    .line 31
    mul-float/2addr v2, v5

    .line 32
    mul-float/2addr v3, p1

    .line 33
    add-float/2addr v3, v2

    .line 34
    iput v3, v1, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->lineEndX:F

    .line 35
    mul-float/2addr v5, v4

    .line 37
    mul-float/2addr p1, p0

    .line 38
    add-float/2addr p1, v5

    .line 39
    iput p1, v1, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->lineEndY:F

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 42
    return-void
    .line 45
.end method
