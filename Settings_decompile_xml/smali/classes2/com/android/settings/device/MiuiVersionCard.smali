.class public Lcom/android/settings/device/MiuiVersionCard;
.super Landroid/widget/FrameLayout;
.source "MiuiVersionCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/device/MiuiVersionCard$CustomImageSpan;
    }
.end annotation


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field private mHandler:Landroid/os/Handler;

.field private mIconImageView:Landroid/widget/ImageView;

.field private mInterpolater:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

.field private mNeedStartAnim:Z

.field private mNeedUpdate:Z

.field mRootView:Landroid/view/ViewGroup;

.field private mUpdateHintLayout:Landroid/view/ViewGroup;

.field private mUpdateText:Landroid/widget/TextView;

.field private mVersionLayout:Landroid/view/ViewGroup;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/device/MiuiVersionCard;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/device/MiuiVersionCard;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedUpdate(Lcom/android/settings/device/MiuiVersionCard;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/device/MiuiVersionCard;->mNeedUpdate:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmNeedStartAnim(Lcom/android/settings/device/MiuiVersionCard;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/device/MiuiVersionCard;->mNeedStartAnim:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckUpdate(Lcom/android/settings/device/MiuiVersionCard;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/device/MiuiVersionCard;->checkUpdate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mperformLogoAnimation(Lcom/android/settings/device/MiuiVersionCard;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/device/MiuiVersionCard;->performLogoAnimation(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/android/settings/device/MiuiVersionCard;->mNeedStartAnim:Z

    .line 54
    iput-boolean p1, p0, Lcom/android/settings/device/MiuiVersionCard;->mNeedUpdate:Z

    .line 56
    new-instance p1, Lcom/android/settings/device/MiuiVersionCard$1;

    invoke-direct {p1, p0}, Lcom/android/settings/device/MiuiVersionCard$1;-><init>(Lcom/android/settings/device/MiuiVersionCard;)V

    iput-object p1, p0, Lcom/android/settings/device/MiuiVersionCard;->mHandler:Landroid/os/Handler;

    .line 74
    invoke-direct {p0}, Lcom/android/settings/device/MiuiVersionCard;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/android/settings/device/MiuiVersionCard;->mNeedStartAnim:Z

    .line 54
    iput-boolean p1, p0, Lcom/android/settings/device/MiuiVersionCard;->mNeedUpdate:Z

    .line 56
    new-instance p1, Lcom/android/settings/device/MiuiVersionCard$1;

    invoke-direct {p1, p0}, Lcom/android/settings/device/MiuiVersionCard$1;-><init>(Lcom/android/settings/device/MiuiVersionCard;)V

    iput-object p1, p0, Lcom/android/settings/device/MiuiVersionCard;->mHandler:Landroid/os/Handler;

    .line 79
    invoke-direct {p0}, Lcom/android/settings/device/MiuiVersionCard;->initView()V

    return-void
.end method

.method private checkUpdate()V
    .locals 4

    .line 116
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 117
    :goto_0
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getUpdateInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/device/MiuiVersionCard;->mNeedUpdate:Z

    return-void
.end method

.method private initView()V
    .locals 3

    .line 83
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->miui_version_card:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/device/MiuiVersionCard;->mRootView:Landroid/view/ViewGroup;

    .line 84
    sget v0, Lcom/android/settings/R$id;->miui_logo_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/device/MiuiVersionCard;->mIconImageView:Landroid/widget/ImageView;

    .line 85
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isPocoBrand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/settings/device/MiuiVersionCard;->mIconImageView:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$drawable;->xiaomi_os_logo_poco:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isRedmiBrand()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/settings/device/MiuiVersionCard;->mIconImageView:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$drawable;->xiaomi_os_logo_redmi:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/android/settings/device/MiuiVersionCard;->mIconImageView:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$drawable;->xiaomi_os_logo:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    :goto_0
    sget v0, Lcom/android/settings/R$id;->miui_version_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v2}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getMiuiVersionInCard(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_2
    sget v0, Lcom/android/settings/R$id;->version_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/device/MiuiVersionCard;->mVersionLayout:Landroid/view/ViewGroup;

    .line 100
    sget v0, Lcom/android/settings/R$id;->update_hint:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/device/MiuiVersionCard;->mUpdateHintLayout:Landroid/view/ViewGroup;

    .line 101
    sget v0, Lcom/android/settings/R$id;->update_hint_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/device/MiuiVersionCard;->mUpdateText:Landroid/widget/TextView;

    .line 102
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/device/MiuiVersionCard;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 103
    new-instance v0, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v0}, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    iput-object v0, p0, Lcom/android/settings/device/MiuiVersionCard;->mInterpolater:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    .line 104
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/settings/device/MiuiVersionCard;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 105
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/device/MiuiVersionCard;->mUpdateText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-direct {p0}, Lcom/android/settings/device/MiuiVersionCard;->checkUpdate()V

    .line 108
    iget-boolean v0, p0, Lcom/android/settings/device/MiuiVersionCard;->mNeedUpdate:Z

    if-nez v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/android/settings/device/MiuiVersionCard;->mIconImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/device/MiuiVersionCard;->mVersionLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 111
    iget-object p0, p0, Lcom/android/settings/device/MiuiVersionCard;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method private performLogoAnimation(Z)V
    .locals 11

    .line 206
    iget-boolean v0, p0, Lcom/android/settings/device/MiuiVersionCard;->mNeedStartAnim:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/device/MiuiVersionCard;->mNeedUpdate:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcom/android/settings/device/MiuiVersionCard;->mNeedStartAnim:Z

    .line 208
    iget-object v1, p0, Lcom/android/settings/device/MiuiVersionCard;->mIconImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 210
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const-string v2, "alpha"

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/android/settings/device/MiuiVersionCard;->mIconImageView:Landroid/widget/ImageView;

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    .line 213
    invoke-static {p1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v4, p0, Lcom/android/settings/device/MiuiVersionCard;->mVersionLayout:Landroid/view/ViewGroup;

    new-array v5, v3, [F

    fill-array-data v5, :array_1

    .line 214
    invoke-static {v4, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/device/MiuiVersionCard;->mUpdateHintLayout:Landroid/view/ViewGroup;

    new-array v6, v3, [F

    fill-array-data v6, :array_2

    .line 215
    invoke-static {v5, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    filled-new-array {p1, v4, v2}, [Landroid/animation/Animator;

    move-result-object p1

    .line 212
    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object p1, p0, Lcom/android/settings/device/MiuiVersionCard;->mUpdateHintLayout:Landroid/view/ViewGroup;

    new-array v4, v3, [F

    fill-array-data v4, :array_3

    .line 218
    invoke-static {p1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    filled-new-array {p1}, [Landroid/animation/Animator;

    move-result-object p1

    .line 217
    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    const-wide/16 v4, 0x320

    .line 221
    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 222
    iget-object p1, p0, Lcom/android/settings/device/MiuiVersionCard;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 224
    iget-object p1, p0, Lcom/android/settings/device/MiuiVersionCard;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/settings/device/MiuiVersionCard;->mIconImageView:Landroid/widget/ImageView;

    const/4 v5, 0x1

    new-array v6, v5, [F

    .line 226
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result v7

    const/high16 v8, -0x3e280000    # -27.0f

    const/high16 v9, -0x3e100000    # -30.0f

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/android/settings/MiuiUtils;->dp2px(Landroid/content/Context;F)I

    move-result v7

    goto :goto_1

    :cond_1
    iget-object v7, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v7, v9}, Lcom/android/settings/MiuiUtils;->dp2px(Landroid/content/Context;F)I

    move-result v7

    :goto_1
    int-to-float v7, v7

    aput v7, v6, v0

    const-string/jumbo v7, "translationY"

    .line 225
    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v0

    iget-object v4, p0, Lcom/android/settings/device/MiuiVersionCard;->mVersionLayout:Landroid/view/ViewGroup;

    new-array v6, v5, [F

    .line 228
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v9, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v9, v8}, Lcom/android/settings/MiuiUtils;->dp2px(Landroid/content/Context;F)I

    move-result v8

    goto :goto_2

    :cond_2
    iget-object v8, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/android/settings/MiuiUtils;->dp2px(Landroid/content/Context;F)I

    move-result v8

    :goto_2
    int-to-float v8, v8

    aput v8, v6, v0

    .line 227
    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, v5

    aput-object v1, v2, v3

    .line 224
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 230
    iget-object p1, p0, Lcom/android/settings/device/MiuiVersionCard;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 231
    iget-object p1, p0, Lcom/android/settings/device/MiuiVersionCard;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/settings/device/MiuiVersionCard;->mInterpolater:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 232
    iget-object p1, p0, Lcom/android/settings/device/MiuiVersionCard;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 233
    iget-object p1, p0, Lcom/android/settings/device/MiuiVersionCard;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 235
    iget-object p1, p0, Lcom/android/settings/device/MiuiVersionCard;->mUpdateText:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 236
    iget-object p1, p0, Lcom/android/settings/device/MiuiVersionCard;->mUpdateText:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 201
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x1

    .line 202
    invoke-direct {p0, p1}, Lcom/android/settings/device/MiuiVersionCard;->performLogoAnimation(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "MiuiVersionCard"

    const-string v0, "click update"

    .line 192
    invoke-static {p1, v0}, Lmiuix/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/device/MiuiVersionCard;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    if-eqz p0, :cond_0

    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->startUpdater(Landroid/app/Activity;)V

    const-string/jumbo p0, "setting_About_phone_update"

    .line 195
    invoke-static {p0}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 242
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 243
    iget-object p0, p0, Lcom/android/settings/device/MiuiVersionCard;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public refreshBetaView(Ljava/lang/String;)V
    .locals 1

    .line 122
    sget v0, Lcom/android/settings/R$id;->miui_version_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 124
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getMiuiBetaVersionInCard(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 126
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public refreshUpdateStatus()V
    .locals 6

    .line 175
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 176
    :goto_0
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getUpdateInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    iget-boolean v5, p0, Lcom/android/settings/device/MiuiVersionCard;->mNeedUpdate:Z

    if-eq v4, v5, :cond_3

    .line 178
    iput-boolean v2, p0, Lcom/android/settings/device/MiuiVersionCard;->mNeedStartAnim:Z

    .line 179
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/device/MiuiVersionCard;->mNeedUpdate:Z

    .line 180
    iget-object v0, p0, Lcom/android/settings/device/MiuiVersionCard;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 181
    invoke-direct {p0}, Lcom/android/settings/device/MiuiVersionCard;->initView()V

    .line 182
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3
    return-void
.end method

.method public setFragment(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/android/settings/device/MiuiVersionCard;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    return-void
.end method
