.class public final Lcom/android/wm/shell/pip/phone/PipMenuView$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipMenuView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$1;->this$0:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

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
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$1;->this$0:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 14
    const v0, 0x3e99999a    # 0.3f

    .line 16
    mul-float/2addr p1, v0

    .line 19
    const/high16 v0, 0x437f0000    # 255.0f

    .line 20
    mul-float/2addr p1, v0

    .line 22
    float-to-int p1, p1

    .line 23
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 24
    return-void
    .line 27
.end method
