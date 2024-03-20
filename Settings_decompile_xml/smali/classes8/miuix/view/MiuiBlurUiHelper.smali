.class public Lmiuix/view/MiuiBlurUiHelper;
.super Ljava/lang/Object;
.source "MiuiBlurUiHelper.java"

# interfaces
.implements Lmiuix/view/BlurableWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;
    }
.end annotation


# instance fields
.field private mApplyBlur:Z

.field private mBlurBlendColorModes:[I

.field private mBlurBlendColors:[I

.field private mBlurEffect:I

.field private final mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

.field private final mContext:Landroid/content/Context;

.field private mIsEnableBlur:Z

.field private final mIsSpecialShape:Z

.field private mIsSupportBlur:Z

.field private final mViewApplyBlur:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ZLmiuix/view/MiuiBlurUiHelper$BlurStateCallback;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSupportBlur:Z

    .line 20
    iput-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsEnableBlur:Z

    .line 21
    iput-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mApplyBlur:Z

    const/4 v1, 0x0

    .line 22
    iput-object v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    .line 23
    iput-object v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColorModes:[I

    .line 24
    iput v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurEffect:I

    .line 27
    iput-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    .line 29
    iput-boolean p3, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSpecialShape:Z

    .line 30
    iput-object p4, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    return-void
.end method

.method public static getFinalBlendColorForViewByBackgroundColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;[I)[I
    .locals 4

    const/4 v0, 0x0

    .line 149
    aget v1, p2, v0

    const/4 v2, 0x1

    aget v3, p2, v2

    filled-new-array {v1, v3}, [I

    move-result-object v1

    if-eqz p1, :cond_2

    .line 151
    instance-of v3, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_2

    .line 152
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    .line 154
    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v3

    if-nez v3, :cond_0

    const p1, 0x1010054    # @android:attr/windowBackground

    .line 155
    invoke-static {p0, p1}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 156
    instance-of p1, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p1, :cond_1

    .line 157
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    :cond_1
    :goto_0
    const p0, 0xffffff

    and-int/2addr p0, v0

    const/high16 p1, -0x1000000

    .line 163
    aget p2, p2, v2

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    aput p0, v1, v2

    :cond_2
    return-object v1
.end method


# virtual methods
.method public applyBlur(Z)V
    .locals 3

    .line 64
    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSupportBlur:Z

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsEnableBlur:Z

    if-nez v0, :cond_1

    return-void

    .line 70
    :cond_1
    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mApplyBlur:Z

    if-eq v0, p1, :cond_4

    .line 71
    iput-boolean p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mApplyBlur:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 73
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    if-nez p1, :cond_2

    .line 74
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    invoke-interface {p1, p0}, Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;->onCreateBlurParams(Lmiuix/view/MiuiBlurUiHelper;)V

    .line 76
    :cond_2
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;->onBlurApplyStateChanged(Z)V

    .line 79
    :try_start_0
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/high16 p1, 0x40300000    # 2.75f

    .line 83
    :goto_0
    iget-object v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    iget v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurEffect:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    iget-boolean v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSpecialShape:Z

    invoke-static {v1, p1, v2}, Lmiuix/core/util/MiuiBlurUtils;->setBackgroundBlur(Landroid/view/View;IZ)Z

    .line 84
    :goto_1
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 85
    iget-object v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    aget p1, p1, v0

    iget-object v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColorModes:[I

    aget v2, v2, v0

    invoke-static {v1, p1, v2}, Lmiuix/core/util/MiuiBlurUtils;->addBackgroundBlenderColor(Landroid/view/View;II)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :cond_3
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    invoke-static {p1}, Lmiuix/core/util/MiuiBlurUtils;->clearBackgroundBlur(Landroid/view/View;)Z

    .line 89
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    invoke-static {p1}, Lmiuix/core/util/MiuiBlurUtils;->clearBackgroundBlenderColor(Landroid/view/View;)Z

    .line 90
    iget-object p0, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    invoke-interface {p0, v0}, Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;->onBlurApplyStateChanged(Z)V

    :cond_4
    return-void
.end method

.method public isApplyBlur()Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lmiuix/view/MiuiBlurUiHelper;->mApplyBlur:Z

    return p0
.end method

.method public isEnableBlur()Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsEnableBlur:Z

    return p0
.end method

.method public isSupportBlur()Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSupportBlur:Z

    return p0
.end method

.method public onConfigChanged()V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lmiuix/view/MiuiBlurUiHelper;->resetBlurParams()V

    return-void
.end method

.method public refreshBlur()V
    .locals 4

    .line 128
    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mApplyBlur:Z

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    invoke-static {v0}, Lmiuix/core/util/MiuiBlurUtils;->clearBackgroundBlur(Landroid/view/View;)Z

    .line 131
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    invoke-static {v0}, Lmiuix/core/util/MiuiBlurUtils;->clearBackgroundBlenderColor(Landroid/view/View;)Z

    .line 132
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    invoke-interface {v0, p0}, Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;->onCreateBlurParams(Lmiuix/view/MiuiBlurUiHelper;)V

    .line 136
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/high16 v0, 0x40300000    # 2.75f

    .line 140
    :goto_0
    iget-object v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;->onBlurApplyStateChanged(Z)V

    .line 141
    iget-object v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    iget v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurEffect:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iget-boolean v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSpecialShape:Z

    invoke-static {v1, v0, v2}, Lmiuix/core/util/MiuiBlurUtils;->setBackgroundBlur(Landroid/view/View;IZ)Z

    const/4 v0, 0x0

    .line 142
    :goto_1
    iget-object v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 143
    iget-object v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    aget v1, v1, v0

    iget-object v3, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColorModes:[I

    aget v3, v3, v0

    invoke-static {v2, v1, v3}, Lmiuix/core/util/MiuiBlurUtils;->addBackgroundBlenderColor(Landroid/view/View;II)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public resetBlurParams()V
    .locals 1

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    .line 123
    iput-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColorModes:[I

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurEffect:I

    return-void
.end method

.method public setBlurParams([I[II)V
    .locals 0

    .line 101
    iput-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    .line 102
    iput-object p2, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColorModes:[I

    .line 103
    iput p3, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurEffect:I

    return-void
.end method

.method public setEnableBlur(Z)V
    .locals 1

    .line 45
    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSupportBlur:Z

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsEnableBlur:Z

    if-eq v0, p1, :cond_1

    .line 49
    iput-boolean p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsEnableBlur:Z

    .line 50
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    invoke-interface {v0, p1}, Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;->onBlurEnableStateChanged(Z)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lmiuix/view/MiuiBlurUiHelper;->applyBlur(Z)V

    :cond_1
    return-void
.end method

.method public setSupportBlur(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSupportBlur:Z

    return-void
.end method
