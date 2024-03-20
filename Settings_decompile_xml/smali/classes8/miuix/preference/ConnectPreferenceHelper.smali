.class public Lmiuix/preference/ConnectPreferenceHelper;
.super Ljava/lang/Object;
.source "ConnectPreferenceHelper.java"


# static fields
.field private static final STATE_ATTR_CONNECTED:[I

.field private static final STATE_ATTR_DISCONNECTED:[I


# instance fields
.field private bgDrawableConnected:Landroid/graphics/drawable/Drawable;

.field private bgDrawableParent:Landroid/graphics/drawable/LayerDrawable;

.field private connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private iconColorList:Landroid/content/res/ColorStateList;

.field private mContext:Landroid/content/Context;

.field private mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

.field private mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

.field private mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

.field private mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

.field private mIconAnimEnabled:Z

.field private mLastState:I

.field private mPreference:Landroidx/preference/Preference;

.field private mState:I

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;

.field private mWidgetView:Landroid/view/View;

.field private summaryColorList:Landroid/content/res/ColorStateList;

.field private titleColorList:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    sget v0, Lmiuix/preference/R$attr;->state_connected:I

    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_CONNECTED:[I

    neg-int v0, v0

    .line 50
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/Preference;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    .line 39
    iput v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mLastState:I

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mIconAnimEnabled:Z

    .line 66
    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lmiuix/preference/ConnectPreferenceHelper;->mPreference:Landroidx/preference/Preference;

    .line 68
    sget p2, Lmiuix/preference/R$color;->miuix_preference_connect_title_color:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/ConnectPreferenceHelper;->titleColorList:Landroid/content/res/ColorStateList;

    .line 69
    sget p2, Lmiuix/preference/R$color;->miuix_preference_connect_summary_color:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/ConnectPreferenceHelper;->summaryColorList:Landroid/content/res/ColorStateList;

    .line 70
    sget p2, Lmiuix/preference/R$color;->miuix_preference_connect_icon_color:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/ConnectPreferenceHelper;->iconColorList:Landroid/content/res/ColorStateList;

    .line 73
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->initAnim(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/preference/ConnectPreferenceHelper;)Landroidx/preference/Preference;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/preference/ConnectPreferenceHelper;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mIconAnimEnabled:Z

    return p0
.end method

.method static synthetic access$200(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/widget/TextView;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/widget/TextView;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mSummaryView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableConnected:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 0

    .line 28
    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object p0
.end method

.method private initAnim(Landroid/content/Context;)V
    .locals 7

    .line 81
    sget v0, Lmiuix/preference/R$drawable;->miuix_preference_ic_bg_connect:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableParent:Landroid/graphics/drawable/LayerDrawable;

    if-nez p1, :cond_0

    return-void

    .line 90
    :cond_0
    sget v0, Lmiuix/preference/R$id;->anim_preference_connecting:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 91
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableParent:Landroid/graphics/drawable/LayerDrawable;

    sget v0, Lmiuix/preference/R$id;->shape_preference_connected:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableConnected:Landroid/graphics/drawable/Drawable;

    .line 93
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->titleColorList:Landroid/content/res/ColorStateList;

    sget-object v0, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    sget v1, Lmiuix/preference/R$color;->miuix_preference_connect_title_disconnected_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 94
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->titleColorList:Landroid/content/res/ColorStateList;

    sget-object v2, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_CONNECTED:[I

    sget v3, Lmiuix/preference/R$color;->miuix_preference_connect_title_connected_color:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 95
    iget-object v3, p0, Lmiuix/preference/ConnectPreferenceHelper;->summaryColorList:Landroid/content/res/ColorStateList;

    sget v4, Lmiuix/preference/R$color;->miuix_preference_connect_summary_disconnected_color:I

    invoke-virtual {v3, v0, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 96
    iget-object v4, p0, Lmiuix/preference/ConnectPreferenceHelper;->summaryColorList:Landroid/content/res/ColorStateList;

    sget v5, Lmiuix/preference/R$color;->miuix_preference_connect_summary_connected_color:I

    invoke-virtual {v4, v2, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 97
    iget-object v5, p0, Lmiuix/preference/ConnectPreferenceHelper;->iconColorList:Landroid/content/res/ColorStateList;

    sget v6, Lmiuix/preference/R$color;->miuix_preference_connect_icon_disconnected_color:I

    invoke-virtual {v5, v0, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 98
    iget-object v5, p0, Lmiuix/preference/ConnectPreferenceHelper;->iconColorList:Landroid/content/res/ColorStateList;

    sget v6, Lmiuix/preference/R$color;->miuix_preference_connect_icon_connected_color:I

    invoke-virtual {v5, v2, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 100
    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x12c

    .line 101
    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 102
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lmiuix/preference/ConnectPreferenceHelper$1;

    invoke-direct {v2, p0}, Lmiuix/preference/ConnectPreferenceHelper$1;-><init>(Lmiuix/preference/ConnectPreferenceHelper;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 112
    filled-new-array {p1, v1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    .line 113
    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 114
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    new-instance v0, Lmiuix/preference/ConnectPreferenceHelper$2;

    invoke-direct {v0, p0}, Lmiuix/preference/ConnectPreferenceHelper$2;-><init>(Lmiuix/preference/ConnectPreferenceHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 123
    filled-new-array {v3, v4}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    .line 124
    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 125
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    new-instance v0, Lmiuix/preference/ConnectPreferenceHelper$3;

    invoke-direct {v0, p0}, Lmiuix/preference/ConnectPreferenceHelper$3;-><init>(Lmiuix/preference/ConnectPreferenceHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p1, 0x0

    const/16 v0, 0xff

    .line 135
    filled-new-array {p1, v0}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    .line 136
    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 137
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    new-instance v0, Lmiuix/preference/ConnectPreferenceHelper$4;

    invoke-direct {v0, p0}, Lmiuix/preference/ConnectPreferenceHelper$4;-><init>(Lmiuix/preference/ConnectPreferenceHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 144
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    new-instance v0, Lmiuix/preference/ConnectPreferenceHelper$5;

    invoke-direct {v0, p0}, Lmiuix/preference/ConnectPreferenceHelper$5;-><init>(Lmiuix/preference/ConnectPreferenceHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private static setAlphaFolme(Landroid/view/View;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 365
    :cond_0
    filled-new-array {p0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    filled-new-array {v1}, [Lmiuix/animation/ITouchStyle$TouchType;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    invoke-interface {v0, v2, v1}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p0, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private startConnectedToDisConnectedAnim()V
    .locals 2

    .line 273
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 275
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 278
    :cond_0
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 279
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    .line 281
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 284
    :cond_1
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 285
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    .line 287
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 290
    :cond_2
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 291
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    .line 293
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 294
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 296
    :cond_3
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 297
    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    return-void
.end method

.method private startDisConnectedToConnectedAnim()V
    .locals 2

    .line 301
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 303
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 306
    :cond_0
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 307
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedBgAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 309
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 312
    :cond_1
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 313
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedTitleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 315
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 316
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 318
    :cond_2
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 319
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedSummaryAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 321
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 322
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 324
    :cond_3
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 325
    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mDisConnectedToConnectedIconAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateState(Z)V
    .locals 2

    .line 257
    iget v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateStateConnecting(Z)V

    goto :goto_0

    .line 265
    :cond_1
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateStateConnected(Z)V

    goto :goto_0

    .line 262
    :cond_2
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateStateDisconnected(Z)V

    :goto_0
    return-void
.end method

.method private updateStateConnected(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 248
    invoke-direct {p0}, Lmiuix/preference/ConnectPreferenceHelper;->startDisConnectedToConnectedAnim()V

    goto :goto_0

    .line 250
    :cond_0
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableConnected:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 251
    sget-object p1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_CONNECTED:[I

    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateViewColorList([I)V

    .line 253
    :goto_0
    sget-object p1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_CONNECTED:[I

    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateWidgetDrawable([I)V

    return-void
.end method

.method private updateStateConnecting(Z)V
    .locals 2

    .line 212
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableConnected:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 214
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    const/16 v1, 0xff

    .line 215
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAlpha(I)V

    .line 216
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    if-nez p1, :cond_1

    .line 221
    sget-object p1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateViewColorList([I)V

    .line 223
    :cond_1
    sget-object p1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateWidgetDrawable([I)V

    return-void
.end method

.method private updateStateDisconnected(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 228
    iget p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mLastState:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 229
    invoke-direct {p0}, Lmiuix/preference/ConnectPreferenceHelper;->startConnectedToDisConnectedAnim()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 230
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p1, :cond_2

    .line 231
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 233
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    goto :goto_0

    .line 236
    :cond_1
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableConnected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 237
    sget-object p1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateViewColorList([I)V

    .line 240
    :cond_2
    :goto_0
    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->connectingAnimDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p1, :cond_3

    .line 241
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAlpha(I)V

    .line 243
    :cond_3
    sget-object p1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_DISCONNECTED:[I

    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateWidgetDrawable([I)V

    return-void
.end method

.method private updateViewColorList([I)V
    .locals 3

    .line 329
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    iget-boolean v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mIconAnimEnabled:Z

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->iconColorList:Landroid/content/res/ColorStateList;

    sget v2, Lmiuix/preference/R$color;->miuix_preference_connect_icon_disconnected_color:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 334
    :cond_0
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 335
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper;->titleColorList:Landroid/content/res/ColorStateList;

    sget v2, Lmiuix/preference/R$color;->miuix_preference_connect_title_disconnected_color:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    :cond_1
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 339
    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->summaryColorList:Landroid/content/res/ColorStateList;

    sget v1, Lmiuix/preference/R$color;->miuix_preference_connect_summary_disconnected_color:I

    invoke-virtual {p0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method private updateWidgetDrawable([I)V
    .locals 3

    .line 200
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mWidgetView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 201
    sget-object v1, Lmiuix/preference/ConnectPreferenceHelper;->STATE_ATTR_CONNECTED:[I

    if-ne p1, v1, :cond_0

    .line 202
    check-cast v0, Landroid/widget/ImageView;

    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mContext:Landroid/content/Context;

    sget p1, Lmiuix/preference/R$drawable;->miuix_preference_ic_detail_connected:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 204
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 205
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lmiuix/preference/R$attr;->connectDetailDisconnectedDrawable:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 206
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mWidgetView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mContext:Landroid/content/Context;

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getConnectState()I
    .locals 0

    .line 357
    iget p0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    return p0
.end method

.method public initConnectState(I)V
    .locals 1

    .line 345
    iget v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    iput v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mLastState:I

    .line 346
    iput p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->bgDrawableParent:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 175
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x1020016    # @android:id/title

    .line 177
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lmiuix/preference/ConnectPreferenceHelper;->mTitleView:Landroid/widget/TextView;

    const p2, 0x1020010    # @android:id/summary

    .line 178
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lmiuix/preference/ConnectPreferenceHelper;->mSummaryView:Landroid/widget/TextView;

    .line 179
    sget p2, Lmiuix/preference/R$id;->preference_detail:I

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mWidgetView:Landroid/view/View;

    .line 180
    invoke-static {p1}, Lmiuix/preference/ConnectPreferenceHelper;->setAlphaFolme(Landroid/view/View;)V

    .line 182
    iget p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mLastState:I

    const/4 p2, -0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_3

    .line 183
    iget p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    if-ne p1, p2, :cond_1

    .line 185
    invoke-virtual {p0, v0}, Lmiuix/preference/ConnectPreferenceHelper;->initConnectState(I)V

    .line 186
    invoke-direct {p0, v0}, Lmiuix/preference/ConnectPreferenceHelper;->updateState(Z)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    .line 189
    invoke-direct {p0, v0}, Lmiuix/preference/ConnectPreferenceHelper;->updateState(Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 191
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateState(Z)V

    goto :goto_0

    .line 195
    :cond_3
    invoke-direct {p0, v0}, Lmiuix/preference/ConnectPreferenceHelper;->updateState(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setConnectState(I)V
    .locals 1

    .line 350
    iget v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    iput v0, p0, Lmiuix/preference/ConnectPreferenceHelper;->mLastState:I

    .line 351
    iput p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mState:I

    const/4 p1, 0x1

    .line 352
    invoke-direct {p0, p1}, Lmiuix/preference/ConnectPreferenceHelper;->updateState(Z)V

    return-void
.end method

.method public setIconAnimEnabled(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lmiuix/preference/ConnectPreferenceHelper;->mIconAnimEnabled:Z

    return-void
.end method
