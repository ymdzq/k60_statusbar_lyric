.class public final Lcom/android/systemui/qs/MiuiQSContainer$updateIndicator$1$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $drawable:Lcom/android/systemui/qs/IndicatorDrawable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/IndicatorDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSContainer$updateIndicator$1$2;->$drawable:Lcom/android/systemui/qs/IndicatorDrawable;

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
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSContainer$updateIndicator$1$2;->$drawable:Lcom/android/systemui/qs/IndicatorDrawable;

    .line 12
    iput p1, p0, Lcom/android/systemui/qs/IndicatorDrawable;->mCaretProgress:F

    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 16
    return-void
    .line 19
.end method
