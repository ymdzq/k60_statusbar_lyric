.class public Lcom/android/systemui/qs/QSFooterView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBuildText:Landroid/widget/TextView;

.field public final mDeveloperSettingsObserver:Lcom/android/systemui/qs/QSFooterView$1;

.field public mEditButton:Landroid/view/View;

.field public mExpanded:Z

.field public mExpansionAmount:F

.field public mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field public mQsDisabled:Z

.field public mShouldShowBuildText:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lcom/android/systemui/qs/QSFooterView$1;

    .line 5
    new-instance p2, Landroid/os/Handler;

    .line 7
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 11
    move-result-object v0

    .line 14
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/QSFooterView$1;-><init>(Lcom/android/systemui/qs/QSFooterView;Landroid/os/Handler;)V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterView;->mDeveloperSettingsObserver:Lcom/android/systemui/qs/QSFooterView$1;

    .line 21
    return-void
    .line 23
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    move-result-object v0

    .line 10
    const-string v1, "development_settings_enabled"

    .line 11
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    move-result-object v1

    .line 16
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterView;->mDeveloperSettingsObserver:Lcom/android/systemui/qs/QSFooterView$1;

    .line 17
    const/4 v2, -0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 21
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterView;->updateResources()V

    .line 5
    return-void
    .line 8
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterView;->mDeveloperSettingsObserver:Lcom/android/systemui/qs/QSFooterView$1;

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 10
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 13
    return-void
    .line 16
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0380    # @id/footer_page_indicator

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/qs/PageIndicator;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 14
    const v0, 0x7f0a019f    # @id/build

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mBuildText:Landroid/widget/TextView;

    .line 25
    const v0, 0x1020003    # @android:id/edit

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mEditButton:Landroid/view/View;

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterView;->updateResources()V

    .line 36
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterView;->setBuildText()V

    .line 43
    return-void
    .line 46
.end method

.method public final setBuildText()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mBuildText:Landroid/widget/TextView;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 7
    const-string/jumbo v1, "user"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 15
    check-cast v1, Landroid/os/UserManager;

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    move-result-object v0

    .line 21
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 22
    const-string v3, "eng"

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 29
    const-string v3, "development_settings_enabled"

    .line 30
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 32
    move-result v0

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x1

    .line 37
    if-eqz v0, :cond_1

    .line 38
    move v0, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v0, v2

    .line 42
    :goto_0
    const-string v4, "no_debugging_features"

    .line 43
    invoke-virtual {v1, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    .line 45
    move-result v4

    .line 48
    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    .line 49
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    if-nez v4, :cond_2

    .line 55
    if-eqz v0, :cond_2

    .line 57
    move v0, v3

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move v0, v2

    .line 61
    :goto_1
    if-eqz v0, :cond_3

    .line 62
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mBuildText:Landroid/widget/TextView;

    .line 64
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 66
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE_OR_CODENAME:Ljava/lang/String;

    .line 68
    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 70
    filled-new-array {v2, v4}, [Ljava/lang/Object;

    .line 72
    move-result-object v2

    .line 75
    const v4, 0x10401e9    # @android:string/config_bodyFontFamily

    .line 76
    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mBuildText:Landroid/widget/TextView;

    .line 86
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 88
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSFooterView;->mShouldShowBuildText:Z

    .line 91
    goto :goto_2

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mBuildText:Landroid/widget/TextView;

    .line 94
    const/4 v1, 0x0

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSFooterView;->mShouldShowBuildText:Z

    .line 100
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterView;->mBuildText:Landroid/widget/TextView;

    .line 102
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 104
    :goto_2
    return-void
    .line 107
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setExpansion(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/QSFooterView;->mExpansionAmount:F

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterView;->mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public setKeyguardShowing()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/QSFooterView;->mExpansionAmount:F

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterView;->setExpansion(F)V

    .line 4
    return-void
    .line 7
.end method

.method public final updateResources()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterView;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 7
    const/4 v2, 0x2

    .line 9
    new-array v3, v2, [F

    .line 10
    fill-array-data v3, :array_0

    .line 12
    const-string v4, "alpha"

    .line 15
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 17
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterView;->mBuildText:Landroid/widget/TextView;

    .line 20
    new-array v3, v2, [F

    .line 22
    fill-array-data v3, :array_1

    .line 24
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 27
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterView;->mEditButton:Landroid/view/View;

    .line 30
    new-array v2, v2, [F

    .line 32
    fill-array-data v2, :array_2

    .line 34
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    .line 37
    const v1, 0x3f666666    # 0.9f

    .line 40
    iput v1, v0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    .line 43
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    .line 45
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterView;->mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 49
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 51
    move-result-object v0

    .line 54
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 55
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 57
    move-result-object v1

    .line 60
    const v2, 0x7f070fa1    # @dimen/qs_footers_margin_bottom '8.0dp'

    .line 61
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 64
    move-result v1

    .line 67
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 68
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    return-void

    .line 73
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 74
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 82
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 90
.end method
