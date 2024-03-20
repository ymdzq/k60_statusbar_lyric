.class public final Lcom/android/keyguard/widget/MiuiLockPatternView$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

.field public final synthetic val$cellState:Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

.field public final synthetic val$endAlpha:F

.field public final synthetic val$endScale:F

.field public final synthetic val$endTranslationY:F

.field public final synthetic val$startAlpha:F

.field public final synthetic val$startScale:F

.field public final synthetic val$startTranslationY:F


# direct methods
.method public constructor <init>(Lcom/android/keyguard/widget/MiuiLockPatternView;Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;FFFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$1;->this$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$1;->val$cellState:Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

    .line 4
    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    iput p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$1;->val$startAlpha:F

    .line 8
    iput p3, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$1;->val$endAlpha:F

    .line 10
    iput p4, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$1;->val$startTranslationY:F

    .line 12
    iput p5, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$1;->val$endTranslationY:F

    .line 14
    iput p6, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$1;->val$startScale:F

    .line 16
    iput p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$1;->val$endScale:F

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
    .line 23
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$1;->val$cellState:Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

    .line 12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 14
    sub-float/2addr v1, p1

    .line 16
    iget v2, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$1;->val$startAlpha:F

    .line 17
    mul-float/2addr v2, v1

    .line 19
    iget v3, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$1;->val$endAlpha:F

    .line 20
    mul-float/2addr v3, p1

    .line 22
    add-float/2addr v3, v2

    .line 23
    iput v3, v0, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->alpha:F

    .line 24
    iget v2, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$1;->val$startTranslationY:F

    .line 26
    mul-float/2addr v2, v1

    .line 28
    iget v3, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$1;->val$endTranslationY:F

    .line 29
    mul-float/2addr v3, p1

    .line 31
    add-float/2addr v3, v2

    .line 32
    iput v3, v0, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->translationY:F

    .line 33
    iget-object v2, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$1;->this$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 35
    iget v3, v2, Lcom/android/keyguard/widget/MiuiLockPatternView;->mDotSize:I

    .line 37
    div-int/lit8 v3, v3, 0x2

    .line 39
    int-to-float v3, v3

    .line 41
    iget v4, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$1;->val$startScale:F

    .line 42
    mul-float/2addr v1, v4

    .line 44
    iget p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$1;->val$endScale:F

    .line 45
    mul-float/2addr p1, p0

    .line 47
    add-float/2addr p1, v1

    .line 48
    mul-float/2addr p1, v3

    .line 49
    iput p1, v0, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->radius:F

    .line 50
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 52
    return-void
    .line 55
.end method
