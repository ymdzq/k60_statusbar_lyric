.class public final synthetic Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/widget/MiuiLockPatternView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/widget/MiuiLockPatternView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 2
    sget p1, Lcom/android/keyguard/widget/MiuiLockPatternView;->$r8$clinit:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
    .line 9
.end method
