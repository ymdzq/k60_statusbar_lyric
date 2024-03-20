.class public Lcom/android/settings/knock/KnockGestureLottieView;
.super Landroid/widget/LinearLayout;
.source "KnockGestureLottieView.java"


# instance fields
.field private mKnockGestureVLottieView:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/android/settings/knock/KnockGestureLottieView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/knock/KnockGestureLottieView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private setLottieInfo(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/settings/knock/KnockGestureLottieView;->mKnockGestureVLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 43
    iget-object p1, p0, Lcom/android/settings/knock/KnockGestureLottieView;->mKnockGestureVLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 44
    iget-object p0, p0, Lcom/android/settings/knock/KnockGestureLottieView;->mKnockGestureVLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .line 33
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 34
    sget v0, Lcom/android/settings/R$id;->knock_gesture_v:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/settings/knock/KnockGestureLottieView;->mKnockGestureVLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 35
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "knock_gesture_v"

    const-string/jumbo v3, "raw"

    .line 35
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 37
    invoke-direct {p0, v0}, Lcom/android/settings/knock/KnockGestureLottieView;->setLottieInfo(I)V

    return-void
.end method
