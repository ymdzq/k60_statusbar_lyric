.class public Lcom/android/settings/BackTapGuideView;
.super Landroid/widget/FrameLayout;
.source "BackTapGuideView.java"


# static fields
.field private static GUIDE_VIEW_RADIUS:F = 52.0f


# instance fields
.field private mBackTapGuideView:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method static bridge synthetic -$$Nest$sfgetGUIDE_VIEW_RADIUS()F
    .locals 1

    .line 0
    sget v0, Lcom/android/settings/BackTapGuideView;->GUIDE_VIEW_RADIUS:F

    return v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/android/settings/BackTapGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/BackTapGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 33
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 34
    sget v0, Lcom/android/settings/R$id;->backtap_guide_lottie_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/settings/BackTapGuideView;->mBackTapGuideView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 35
    new-instance v1, Lcom/android/settings/BackTapGuideView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/BackTapGuideView$1;-><init>(Lcom/android/settings/BackTapGuideView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 41
    iget-object p0, p0, Lcom/android/settings/BackTapGuideView;->mBackTapGuideView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    return-void
.end method
