.class Lcom/android/settings/display/PageLayoutFragment$3;
.super Ljava/lang/Object;
.source "PageLayoutFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/PageLayoutFragment;->showRecommendLayout()V
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

    .line 753
    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment$3;->this$0:Lcom/android/settings/display/PageLayoutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 761
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutFragment$3;->this$0:Lcom/android/settings/display/PageLayoutFragment;

    invoke-static {p1}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetscrollViewCard(Lcom/android/settings/display/PageLayoutFragment;)Lcom/android/settings/display/FontSettingsScrollView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/display/FontSettingsScrollView;->setCanScroll(Z)V

    .line 762
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment$3;->this$0:Lcom/android/settings/display/PageLayoutFragment;

    invoke-static {p0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetmRecommendLayout(Lcom/android/settings/display/PageLayoutFragment;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    sget v0, Lcom/android/settings/R$dimen;->miuix_appcompat_normal_text_size:I

    invoke-static {p0, p1, v0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$msetAllTextByCustomSize(Lcom/android/settings/display/PageLayoutFragment;Landroid/view/View;I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method
