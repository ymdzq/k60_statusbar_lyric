.class public Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;
.super Lcom/android/systemui/qs/tiles/UserDetailItemView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mDarkAmount:F

.field public mTextColor:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/keyguard/KeyguardConstants;->DEBUG:Z

    .line 2
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->DEBUG:Z

    .line 4
    return-void
    .line 6
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/tiles/UserDetailItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public getFontSizeDimen()I
    .locals 0

    .line 1
    const p0, 0x7f0704bf    # @dimen/kg_user_switcher_text_size '16.0sp'

    .line 2
    return p0
    .line 5
.end method

.method public final onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->onFinishInflate()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 7
    move-result v0

    .line 10
    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->mTextColor:I

    .line 11
    const/4 v1, -0x1

    .line 13
    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->mDarkAmount:F

    .line 14
    invoke-static {v2, v0, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(FII)I

    .line 16
    move-result v0

    .line 19
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    return-void
    .line 25
.end method

.method public setDarkAmount(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->mDarkAmount:F

    .line 2
    cmpl-float v0, v0, p1

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->mDarkAmount:F

    .line 9
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->mTextColor:I

    .line 11
    const/4 v1, -0x1

    .line 13
    invoke-static {p1, v0, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(FII)I

    .line 14
    move-result p1

    .line 17
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 18
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    return-void
    .line 23
.end method

.method public final updateVisibilities(ZZZ)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    move-result-object v1

    .line 13
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object v2

    .line 17
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    const-string/jumbo v1, "updateVisibilities itemIsShown=%b nameIsShown=%b animate=%b"

    .line 22
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 28
    const-string v1, "KeyguardUserDetailItemView"

    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 34
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    if-eqz p1, :cond_1

    .line 39
    if-eqz p2, :cond_1

    .line 41
    const/16 v2, 0xff

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    move v2, v1

    .line 46
    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 47
    const/16 v0, 0x8

    .line 50
    const/high16 v2, 0x3f800000    # 1.0f

    .line 52
    if-eqz p1, :cond_5

    .line 54
    const-wide/16 v3, 0xf0

    .line 56
    const/4 p1, 0x0

    .line 58
    if-eqz p2, :cond_3

    .line 59
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 61
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    if-eqz p3, :cond_2

    .line 66
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 68
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 70
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 73
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 75
    move-result-object p1

    .line 78
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 79
    move-result-object p1

    .line 82
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 83
    move-result-object p1

    .line 86
    sget-object p2, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 89
    goto :goto_1

    .line 92
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 93
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 95
    goto :goto_1

    .line 98
    :cond_3
    if-eqz p3, :cond_4

    .line 99
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 101
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 106
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 108
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 111
    invoke-virtual {p2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 113
    move-result-object p2

    .line 116
    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 117
    move-result-object p1

    .line 120
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 121
    move-result-object p1

    .line 124
    sget-object p2, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 125
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 127
    move-result-object p1

    .line 130
    new-instance p2, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView$$ExternalSyntheticLambda0;

    .line 131
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;)V

    .line 133
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 136
    goto :goto_1

    .line 139
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 140
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 145
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 147
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 153
    goto :goto_3

    .line 156
    :cond_5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 160
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 163
    if-eqz p2, :cond_6

    .line 165
    goto :goto_2

    .line 167
    :cond_6
    move v1, v0

    .line 168
    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 172
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 174
    :goto_3
    return-void
    .line 177
.end method
