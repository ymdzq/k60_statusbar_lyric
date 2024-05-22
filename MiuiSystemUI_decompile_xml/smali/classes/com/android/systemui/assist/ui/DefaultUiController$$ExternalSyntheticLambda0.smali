.class public final synthetic Lcom/android/systemui/assist/ui/DefaultUiController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/assist/ui/DefaultUiController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/assist/ui/DefaultUiController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/assist/ui/DefaultUiController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/assist/ui/DefaultUiController;

    .line 5
    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/android/systemui/assist/ui/DefaultUiController$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/assist/ui/DefaultUiController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/assist/ui/DefaultUiController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Float;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 13
    move-result p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/ui/DefaultUiController;->setProgressInternal(F)V

    .line 17
    return-void
    .line 20
.end method
