.class public final Lcom/android/keyguard/widget/MiuiKeyBoardView$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/widget/MiuiKeyBoardView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/widget/MiuiKeyBoardView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView$3;->this$0:Lcom/android/keyguard/widget/MiuiKeyBoardView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

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
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView$3;->this$0:Lcom/android/keyguard/widget/MiuiKeyBoardView;

    .line 12
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 16
    return-void
    .line 19
.end method
