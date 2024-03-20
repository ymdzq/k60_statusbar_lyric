.class Lcom/android/settings/display/PageLayoutFragment$5;
.super Ljava/lang/Object;
.source "PageLayoutFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
.method public static synthetic $r8$lambda$LOsgIKYSlu3117Ue4MuumZCm-dM(Lcom/android/settings/display/PageLayoutFragment$5;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/PageLayoutFragment$5;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/display/PageLayoutFragment;)V
    .locals 0

    .line 791
    iput-object p1, p0, Lcom/android/settings/display/PageLayoutFragment$5;->this$0:Lcom/android/settings/display/PageLayoutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .locals 1

    .line 800
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutFragment$5;->this$0:Lcom/android/settings/display/PageLayoutFragment;

    invoke-static {p0}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$fgetmRecommendLayout(Lcom/android/settings/display/PageLayoutFragment;)Landroid/view/View;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/display/PageLayoutFragment;->-$$Nest$sfgetRECOMMEND_HIDE()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 799
    new-instance p1, Lcom/android/settings/display/PageLayoutFragment$5$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/display/PageLayoutFragment$5$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/PageLayoutFragment$5;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

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
