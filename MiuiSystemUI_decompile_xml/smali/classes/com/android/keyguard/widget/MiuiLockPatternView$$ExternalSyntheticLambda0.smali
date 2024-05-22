.class public final synthetic Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

.field public final synthetic f$1:Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/widget/MiuiLockPatternView;Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 4
    iput-object p2, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda0;->f$1:Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 8
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda0;->f$1:Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

    .line 10
    sget v1, Lcom/android/keyguard/widget/MiuiLockPatternView;->$r8$clinit:I

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Float;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 23
    move-result p1

    .line 26
    iput p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->radius:F

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 29
    return-void

    .line 32
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 33
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda0;->f$1:Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

    .line 35
    sget v1, Lcom/android/keyguard/widget/MiuiLockPatternView;->$r8$clinit:I

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 45
    check-cast p1, Ljava/lang/Float;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 54
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 58
.end method
