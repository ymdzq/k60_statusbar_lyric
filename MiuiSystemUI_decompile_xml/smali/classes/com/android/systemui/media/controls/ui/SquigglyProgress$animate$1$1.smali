.class public final Lcom/android/systemui/media/controls/ui/SquigglyProgress$animate$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/SquigglyProgress;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/SquigglyProgress;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/SquigglyProgress$animate$1$1;->this$0:Lcom/android/systemui/media/controls/ui/SquigglyProgress;

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
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/SquigglyProgress$animate$1$1;->this$0:Lcom/android/systemui/media/controls/ui/SquigglyProgress;

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Float;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 10
    move-result p1

    .line 13
    iput p1, v0, Lcom/android/systemui/media/controls/ui/SquigglyProgress;->heightFraction:F

    .line 14
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/SquigglyProgress$animate$1$1;->this$0:Lcom/android/systemui/media/controls/ui/SquigglyProgress;

    .line 16
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 18
    return-void
    .line 21
.end method
