.class public Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter$FollowViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "KeyguardPasswordSlidingGuideAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FollowViewHolder"
.end annotation


# instance fields
.field private context:Landroid/widget/TextView;

.field private mLottieView:Lcom/airbnb/lottie/LottieAnimationView;

.field final synthetic this$0:Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter;

.field private title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter;Landroid/view/View;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter$FollowViewHolder;->this$0:Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter;

    .line 48
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 49
    sget p1, Lcom/android/settings/R$id;->guide_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter$FollowViewHolder;->title:Landroid/widget/TextView;

    .line 50
    sget p1, Lcom/android/settings/R$id;->guide_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter$FollowViewHolder;->context:Landroid/widget/TextView;

    .line 51
    sget p1, Lcom/android/settings/R$id;->lottie_view:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter$FollowViewHolder;->mLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method


# virtual methods
.method bind(Lcom/android/settings/KeyguardPasswordSlidingGuideBean;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter$FollowViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter$FollowViewHolder;->context:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;->getContext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter$FollowViewHolder;->mLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/android/settings/KeyguardPasswordSlidingGuideBean;->getAnimationName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 60
    iget-object p0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideAdapter$FollowViewHolder;->mLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method
