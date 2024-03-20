.class Lcom/android/settings/display/PageLayoutFragment$4;
.super Ljava/lang/Object;
.source "PageLayoutFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/PageLayoutFragment;->scrollViewToHideRecommend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/PageLayoutFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/PageLayoutFragment;)V
    .locals 0

    .line 785
    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment$4;->this$0:Lcom/android/settings/display/PageLayoutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 788
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment$4;->this$0:Lcom/android/settings/display/PageLayoutFragment;

    invoke-static {p0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetmRecommendLayout(Lcom/android/settings/display/PageLayoutFragment;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
