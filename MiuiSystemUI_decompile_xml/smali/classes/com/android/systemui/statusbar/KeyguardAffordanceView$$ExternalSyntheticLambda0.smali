.class public final synthetic Lcom/android/systemui/statusbar/KeyguardAffordanceView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/drawable/Drawable;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/drawable/Drawable;

    .line 4
    sget v1, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->$r8$clinit:I

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Integer;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    move-result p1

    .line 20
    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 23
    move-result-object p0

    .line 26
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 27
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 30
    return-void
    .line 33
.end method
