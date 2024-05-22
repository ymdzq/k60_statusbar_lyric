.class public Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mBackgroundRadius:F

.field private final mBlurRadius:F

.field private mFontScale:F

.field private final mFreeformTipsView:Landroid/view/View;

.field private final mFullscreenTipsView:Landroid/view/View;

.field private mHidden:Z

.field private mIconViewFreeform:Landroid/view/View;

.field private mIconViewFullscreen:Landroid/view/View;

.field private mIconViewSplitLeft:Landroid/view/View;

.field private mIconViewSplitRight:Landroid/view/View;

.field private mLastUIModeMask:I

.field private mLocaleList:Ljava/lang/String;

.field private mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private final mSplitLeftTipsView:Landroid/view/View;

.field private final mSplitRightTipsView:Landroid/view/View;

.field private tv_freeform:Landroid/widget/TextView;

.field private tv_fullscreen:Landroid/widget/TextView;

.field private tv_splitLeft:Landroid/widget/TextView;

.field private tv_splitRight:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$Q6xfyt7ldJHoShOF--2tCoB-e5I(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->lambda$show$0(Landroid/view/SurfaceControl;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$QligyTecDf9VtrmdHyvuaCrABKM(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->lambda$hideAll$2()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$VGosRpsbUop9oqe3S8GGqW7BnUo(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->lambda$showFullscreen$4()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$Xfkv1uMHiUBJXO5VhO55uec-XA4(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->lambda$hideAllNoAnim$3(Ljava/lang/String;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$eDvucwIO-Th-rwJzQW_1wRqwa9A(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->lambda$showFreeform$7()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$eK-yjndWC6hrQNAA0rXfe8eVdNw(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->lambda$showSplitLeft$5()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$lATL5uA35dwKr9lVcwq3oOp04nE(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;ILandroid/view/SurfaceControl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->lambda$show$1(ILandroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$mwOHB2-t9se6HrS3OoLBkVjv_nI(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->removeOnDrawListener()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$xc-9A2OHj8i7yd93BuUk_K0TBPI(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->lambda$showSplitRight$6()V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$fgetTAG(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->TAG:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmFreeformTipsView(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mFreeformTipsView:Landroid/view/View;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmFullscreenTipsView(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mFullscreenTipsView:Landroid/view/View;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmSplitLeftTipsView(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mSplitLeftTipsView:Landroid/view/View;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmSplitRightTipsView(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mSplitRightTipsView:Landroid/view/View;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fputmHidden(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mHidden:Z

    .line 3
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$mcreateBackgroundBlur(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->createBackgroundBlur(Landroid/view/View;)V

    .line 2
    return-void
    .line 5
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$3;

    .line 2
    const-string v1, "autoAlpha"

    .line 4
    invoke-direct {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$3;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const-class v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;

    .line 5
    const-string v0, "MiuiTipsLayout"

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->TAG:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 14
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mFontScale:F

    .line 16
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mHidden:Z

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v2

    .line 24
    const v3, 0x7f0702f1    # @dimen/drag_tips_background_radius '18.0dp'

    .line 25
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 28
    move-result v2

    .line 31
    iput v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mBackgroundRadius:F

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v2

    .line 37
    const v3, 0x7f0702f2    # @dimen/drag_tips_blur_radius '100.0px'

    .line 38
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 41
    move-result v2

    .line 44
    iput v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mBlurRadius:F

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 47
    move-result-object v2

    .line 50
    const v3, 0x7f0d00d2    # @layout/global_tips_layout 'res/layout/global_tips_layout.xml'

    .line 51
    invoke-virtual {v2, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 54
    const v1, 0x7f0a099f    # @id/tips_fullscreen

    .line 57
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object v1

    .line 63
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mFullscreenTipsView:Landroid/view/View;

    .line 64
    const v1, 0x7f0a09a0    # @id/tips_splitLeft

    .line 66
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object v1

    .line 72
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mSplitLeftTipsView:Landroid/view/View;

    .line 73
    const v1, 0x7f0a09a1    # @id/tips_splitRight

    .line 75
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object v1

    .line 81
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mSplitRightTipsView:Landroid/view/View;

    .line 82
    const v1, 0x7f0a099e    # @id/tips_freeform

    .line 84
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object v1

    .line 90
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mFreeformTipsView:Landroid/view/View;

    .line 91
    const v1, 0x7f0a0414    # @id/iconView_fullscreen

    .line 93
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object v1

    .line 99
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mIconViewFullscreen:Landroid/view/View;

    .line 100
    const v1, 0x7f0a0415    # @id/iconView_splitLeft

    .line 102
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object v1

    .line 108
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mIconViewSplitLeft:Landroid/view/View;

    .line 109
    const v1, 0x7f0a0416    # @id/iconView_splitRight

    .line 111
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 114
    move-result-object v1

    .line 117
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mIconViewSplitRight:Landroid/view/View;

    .line 118
    const v1, 0x7f0a0413    # @id/iconView_freeform

    .line 120
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 123
    move-result-object v1

    .line 126
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mIconViewFreeform:Landroid/view/View;

    .line 127
    const v1, 0x7f0a09fd    # @id/tv_fullscreen

    .line 129
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 132
    move-result-object v1

    .line 135
    check-cast v1, Landroid/widget/TextView;

    .line 136
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->tv_fullscreen:Landroid/widget/TextView;

    .line 138
    const v1, 0x7f0a0a0e    # @id/tv_splitLeft

    .line 140
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 143
    move-result-object v1

    .line 146
    check-cast v1, Landroid/widget/TextView;

    .line 147
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->tv_splitLeft:Landroid/widget/TextView;

    .line 149
    const v1, 0x7f0a0a0f    # @id/tv_splitRight

    .line 151
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 154
    move-result-object v1

    .line 157
    check-cast v1, Landroid/widget/TextView;

    .line 158
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->tv_splitRight:Landroid/widget/TextView;

    .line 160
    const v1, 0x7f0a09fc    # @id/tv_freeform

    .line 162
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 165
    move-result-object v1

    .line 168
    check-cast v1, Landroid/widget/TextView;

    .line 169
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->tv_freeform:Landroid/widget/TextView;

    .line 171
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mIconViewFullscreen:Landroid/view/View;

    .line 173
    const v2, 0x7f080c41    # @drawable/drag_tips_fullscreen 'res/drawable/drag_tips_fullscreen.xml'

    .line 175
    invoke-direct {p0, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->setVectorDrawable(Landroid/view/View;I)V

    .line 178
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mIconViewSplitLeft:Landroid/view/View;

    .line 181
    const v2, 0x7f080c42    # @drawable/drag_tips_splitleft 'res/drawable/drag_tips_splitleft.xml'

    .line 183
    invoke-direct {p0, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->setVectorDrawable(Landroid/view/View;I)V

    .line 186
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mIconViewSplitRight:Landroid/view/View;

    .line 189
    const v2, 0x7f080c43    # @drawable/drag_tips_splitright 'res/drawable/drag_tips_splitright.xml'

    .line 191
    invoke-direct {p0, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->setVectorDrawable(Landroid/view/View;I)V

    .line 194
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mIconViewFreeform:Landroid/view/View;

    .line 197
    const v2, 0x7f080c40    # @drawable/drag_tips_freeform 'res/drawable/drag_tips_freeform.xml'

    .line 199
    invoke-direct {p0, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->setVectorDrawable(Landroid/view/View;I)V

    .line 202
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 205
    move-result-object v1

    .line 208
    const v2, 0x7f06011e    # @color/drag_tips_text_color '#ff4d4d4d'

    .line 209
    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 212
    move-result v0

    .line 215
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->tv_fullscreen:Landroid/widget/TextView;

    .line 216
    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->setTextViewColor(Landroid/widget/TextView;I)V

    .line 218
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->tv_splitLeft:Landroid/widget/TextView;

    .line 221
    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->setTextViewColor(Landroid/widget/TextView;I)V

    .line 223
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->tv_splitRight:Landroid/widget/TextView;

    .line 226
    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->setTextViewColor(Landroid/widget/TextView;I)V

    .line 228
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->tv_freeform:Landroid/widget/TextView;

    .line 231
    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->setTextViewColor(Landroid/widget/TextView;I)V

    .line 233
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$1;

    .line 236
    invoke-direct {v0, p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$1;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;)V

    .line 238
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 244
    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 248
    move-result-object v0

    .line 251
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 252
    and-int/lit8 v0, v0, 0x30

    .line 254
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mLastUIModeMask:I

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 258
    move-result-object v0

    .line 261
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 262
    move-result-object v0

    .line 265
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 266
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mFontScale:F

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 270
    move-result-object p1

    .line 273
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 274
    move-result-object p1

    .line 277
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 278
    move-result-object p1

    .line 281
    invoke-virtual {p1}, Landroid/os/LocaleList;->toString()Ljava/lang/String;

    .line 282
    move-result-object p1

    .line 285
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mLocaleList:Ljava/lang/String;

    .line 286
    return-void
    .line 288
.end method

.method private createBackgroundBlur(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->createBackgroundBlurDrawable()Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 6
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mBackgroundRadius:F

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setCornerRadius(F)V

    .line 12
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mBlurRadius:F

    .line 15
    float-to-int p0, p0

    .line 17
    invoke-virtual {v0, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setBlurRadius(I)V

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 21
    move-result-object p0

    .line 24
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    .line 25
    filled-new-array {v0, p0}, [Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object p0

    .line 30
    invoke-direct {v1, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 31
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 34
    return-void
    .line 37
.end method

.method private synthetic lambda$hideAll$2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mFullscreenTipsView:Landroid/view/View;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->startAlphaAnimation(Landroid/view/View;F)V

    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mSplitLeftTipsView:Landroid/view/View;

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->startAlphaAnimation(Landroid/view/View;F)V

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mSplitRightTipsView:Landroid/view/View;

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->startAlphaAnimation(Landroid/view/View;F)V

    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mFreeformTipsView:Landroid/view/View;

    .line 18
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->startAlphaAnimation(Landroid/view/View;F)V

    .line 20
    return-void
    .line 23
.end method

.method private synthetic lambda$hideAllNoAnim$3(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mHidden:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 6
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 8
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$2;

    .line 11
    invoke-direct {v1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$2;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;)V

    .line 13
    filled-new-array {v1}, [Lmiuix/animation/listener/TransitionListener;

    .line 16
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 20
    move-result-object v0

    .line 23
    const/4 v1, 0x1

    .line 24
    new-array v1, v1, [F

    .line 25
    const/high16 v2, 0x43160000    # 150.0f

    .line 27
    const/4 v3, 0x0

    .line 29
    aput v2, v1, v3

    .line 30
    const/16 v2, 0xf

    .line 32
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 34
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mFullscreenTipsView:Landroid/view/View;

    .line 37
    filled-new-array {v1}, [Landroid/view/View;

    .line 39
    move-result-object v1

    .line 42
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 43
    move-result-object v1

    .line 46
    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 47
    move-result-object v1

    .line 50
    sget-object v2, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v4

    .line 56
    filled-new-array {v2, v4, v0}, [Ljava/lang/Object;

    .line 57
    move-result-object v4

    .line 60
    invoke-interface {v1, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 61
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mSplitLeftTipsView:Landroid/view/View;

    .line 64
    filled-new-array {v1}, [Landroid/view/View;

    .line 66
    move-result-object v1

    .line 69
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 70
    move-result-object v1

    .line 73
    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 74
    move-result-object v1

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object v4

    .line 81
    filled-new-array {v2, v4, v0}, [Ljava/lang/Object;

    .line 82
    move-result-object v4

    .line 85
    invoke-interface {v1, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 86
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mSplitRightTipsView:Landroid/view/View;

    .line 89
    filled-new-array {v1}, [Landroid/view/View;

    .line 91
    move-result-object v1

    .line 94
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 95
    move-result-object v1

    .line 98
    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 99
    move-result-object v1

    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v4

    .line 106
    filled-new-array {v2, v4, v0}, [Ljava/lang/Object;

    .line 107
    move-result-object v4

    .line 110
    invoke-interface {v1, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 111
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mFreeformTipsView:Landroid/view/View;

    .line 114
    filled-new-array {v1}, [Landroid/view/View;

    .line 116
    move-result-object v1

    .line 119
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 120
    move-result-object v1

    .line 123
    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 124
    move-result-object v1

    .line 127
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    move-result-object v3

    .line 131
    filled-new-array {v2, v3, v0}, [Ljava/lang/Object;

    .line 132
    move-result-object v0

    .line 135
    invoke-interface {v1, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 136
    const-string v0, "FF_UI/MWS_ACTION_MOVE"

    .line 139
    invoke-static {v0}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->endSchedThread(Ljava/lang/String;)V

    .line 141
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->TAG:Ljava/lang/String;

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    .line 146
    const-string v1, "hide callers="

    .line 148
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object p1

    .line 159
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    return-void
    .line 163
.end method

.method private synthetic lambda$show$0(Landroid/view/SurfaceControl;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 2
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 4
    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 9
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 13
    move-result-object p1

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 22
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 26
    move-result-object v1

    .line 29
    const/4 v2, -0x1

    .line 30
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 31
    :goto_0
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 34
    new-instance p1, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$$ExternalSyntheticLambda0;

    .line 37
    const/4 v0, 0x4

    .line 39
    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;I)V

    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 43
    return-void
    .line 46
.end method

.method private synthetic lambda$show$1(ILandroid/view/SurfaceControl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->setFreeformTipsLayoutParams(I)V

    .line 2
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->removeOnDrawListener()V

    .line 5
    new-instance p1, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$$ExternalSyntheticLambda2;

    .line 8
    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;Landroid/view/SurfaceControl;)V

    .line 10
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 15
    move-result-object p1

    .line 18
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 19
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 21
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 25
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mHidden:Z

    .line 28
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->TAG:Ljava/lang/String;

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    const-string/jumbo p2, "show callers="

    .line 34
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 46
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
    .line 50
.end method

.method private synthetic lambda$showFreeform$7()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mFreeformTipsView:Landroid/view/View;

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->startAlphaAnimation(Landroid/view/View;F)V

    .line 6
    return-void
    .line 9
.end method

.method private synthetic lambda$showFullscreen$4()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mFullscreenTipsView:Landroid/view/View;

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->startAlphaAnimation(Landroid/view/View;F)V

    .line 6
    return-void
    .line 9
.end method

.method private synthetic lambda$showSplitLeft$5()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mSplitLeftTipsView:Landroid/view/View;

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->startAlphaAnimation(Landroid/view/View;F)V

    .line 6
    return-void
    .line 9
.end method

.method private synthetic lambda$showSplitRight$6()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mSplitRightTipsView:Landroid/view/View;

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->startAlphaAnimation(Landroid/view/View;F)V

    .line 6
    return-void
    .line 9
.end method

.method private refreshFontScale()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->tv_fullscreen:Landroid/widget/TextView;

    .line 2
    invoke-direct {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->setScaleTextSize(Landroid/widget/TextView;)V

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->tv_freeform:Landroid/widget/TextView;

    .line 7
    invoke-direct {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->setScaleTextSize(Landroid/widget/TextView;)V

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->tv_splitLeft:Landroid/widget/TextView;

    .line 12
    invoke-direct {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->setScaleTextSize(Landroid/widget/TextView;)V

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->tv_splitRight:Landroid/widget/TextView;

    .line 17
    invoke-direct {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->setScaleTextSize(Landroid/widget/TextView;)V

    .line 19
    return-void
    .line 22
.end method

.method private refreshText()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->tv_fullscreen:Landroid/widget/TextView;

    .line 2
    const v1, 0x7f1303ac    # @string/drag_shadow_fullscreen_open 'Full screen'

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->setText(Landroid/widget/TextView;I)V

    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->tv_freeform:Landroid/widget/TextView;

    .line 10
    const v1, 0x7f1303a9    # @string/drag_shadow_freeform_open 'Floating window'

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->setText(Landroid/widget/TextView;I)V

    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->tv_splitLeft:Landroid/widget/TextView;

    .line 18
    const v1, 0x7f1303ae    # @string/drag_shadow_split_left_open 'Split screen (Left)'

    .line 20
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->setText(Landroid/widget/TextView;I)V

    .line 23
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->tv_splitRight:Landroid/widget/TextView;

    .line 26
    const v1, 0x7f1303af    # @string/drag_shadow_split_right_open 'Split screen (Right)'

    .line 28
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->setText(Landroid/widget/TextView;I)V

    .line 31
    return-void
    .line 34
.end method

.method private removeOnDrawListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 12
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 16
    :cond_0
    return-void
    .line 18
.end method

.method private setFreeformTipsLayoutParams(I)V
    .locals 8

    .line 1
    const v0, 0x7f0a099e    # @id/tips_freeform

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object v0

    .line 8
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 9
    const/16 v2, 0x1f4

    .line 11
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 13
    const/4 v2, 0x1

    .line 16
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 17
    new-instance v2, Landroid/graphics/Point;

    .line 19
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 21
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 26
    move-result-object v3

    .line 29
    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v3

    .line 36
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getScreenType(Landroid/content/Context;)I

    .line 37
    move-result v3

    .line 40
    const v4, 0x43e68000    # 461.0f

    .line 41
    const/high16 v5, 0x43900000    # 288.0f

    .line 44
    const/4 v6, 0x2

    .line 46
    if-ne v3, v6, :cond_0

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1, v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->dip2px(Landroid/content/Context;F)I

    .line 53
    move-result p1

    .line 56
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    move-result-object p1

    .line 62
    invoke-virtual {p0, p1, v4}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->dip2px(Landroid/content/Context;F)I

    .line 63
    move-result p0

    .line 66
    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 67
    iget p0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 69
    or-int/lit8 p0, p0, 0x10

    .line 71
    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 73
    goto/16 :goto_2

    .line 75
    :cond_0
    const/4 v7, 0x3

    .line 77
    if-ne v3, v7, :cond_2

    .line 78
    if-ne p1, v6, :cond_1

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 82
    move-result-object p1

    .line 85
    const v3, 0x44014000    # 517.0f

    .line 86
    invoke-virtual {p0, p1, v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->dip2px(Landroid/content/Context;F)I

    .line 89
    move-result p1

    .line 92
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 95
    move-result-object p1

    .line 98
    const v3, 0x44134000    # 589.0f

    .line 99
    invoke-virtual {p0, p1, v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->dip2px(Landroid/content/Context;F)I

    .line 102
    move-result p0

    .line 105
    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 106
    const p0, 0x3f4ccccd    # 0.8f

    .line 108
    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 112
    move-result-object p1

    .line 115
    const v3, 0x43c68000    # 397.0f

    .line 116
    invoke-virtual {p0, p1, v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->dip2px(Landroid/content/Context;F)I

    .line 119
    move-result p1

    .line 122
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 123
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 125
    move-result-object p1

    .line 128
    const v3, 0x441a8000    # 618.0f

    .line 129
    invoke-virtual {p0, p1, v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->dip2px(Landroid/content/Context;F)I

    .line 132
    move-result p0

    .line 135
    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 136
    const p0, 0x3eae147b    # 0.34f

    .line 138
    :goto_0
    iget p1, v2, Landroid/graphics/Point;->y:I

    .line 141
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 143
    sub-int/2addr p1, v2

    .line 145
    int-to-float p1, p1

    .line 146
    mul-float/2addr p1, p0

    .line 147
    float-to-int p0, p1

    .line 148
    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 149
    goto :goto_2

    .line 151
    :cond_2
    if-ne p1, v6, :cond_3

    .line 152
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 154
    move-result-object p1

    .line 157
    const/high16 v3, 0x43590000    # 217.0f

    .line 158
    invoke-virtual {p0, p1, v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->dip2px(Landroid/content/Context;F)I

    .line 160
    move-result p1

    .line 163
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 164
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 166
    move-result-object p1

    .line 169
    const/high16 v3, 0x43750000    # 245.0f

    .line 170
    invoke-virtual {p0, p1, v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->dip2px(Landroid/content/Context;F)I

    .line 172
    move-result p0

    .line 175
    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 176
    const p0, 0x3f0f5c29    # 0.56f

    .line 178
    goto :goto_1

    .line 181
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 182
    move-result-object p1

    .line 185
    invoke-virtual {p0, p1, v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->dip2px(Landroid/content/Context;F)I

    .line 186
    move-result p1

    .line 189
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 192
    move-result-object p1

    .line 195
    invoke-virtual {p0, p1, v4}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->dip2px(Landroid/content/Context;F)I

    .line 196
    move-result p0

    .line 199
    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 200
    const p0, 0x3ec7ae14    # 0.39f

    .line 202
    :goto_1
    iget p1, v2, Landroid/graphics/Point;->y:I

    .line 205
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 207
    sub-int/2addr p1, v2

    .line 209
    int-to-float p1, p1

    .line 210
    mul-float/2addr p1, p0

    .line 211
    float-to-int p0, p1

    .line 212
    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 213
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    return-void
    .line 218
.end method

.method private setScaleTextSize(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 7
    const v0, 0x7f0711f9    # @dimen/tips_text_size '14.0sp'

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 11
    move-result p0

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method private setText(Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method private setTextViewColor(Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    :cond_0
    return-void
    .line 7
.end method

.method private setVectorDrawable(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0, p2}, Landroid/graphics/drawable/VectorDrawable;->create(Landroid/content/res/Resources;I)Landroid/graphics/drawable/VectorDrawable;

    .line 6
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method private startAlphaAnimation(Landroid/view/View;F)V
    .locals 3

    .line 1
    new-instance p0, Lmiuix/animation/base/AnimConfig;

    .line 2
    invoke-direct {p0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 7
    new-array v0, v0, [F

    .line 8
    const/4 v1, 0x0

    .line 10
    cmpl-float v1, p2, v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    const/high16 v1, 0x42c80000    # 100.0f

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    const/high16 v1, 0x43160000    # 150.0f

    .line 18
    :goto_0
    const/4 v2, 0x0

    .line 20
    aput v1, v0, v2

    .line 21
    const/16 v1, 0xf

    .line 23
    invoke-virtual {p0, v1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 25
    move-result-object p0

    .line 28
    filled-new-array {p1}, [Landroid/view/View;

    .line 29
    move-result-object p1

    .line 32
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 33
    move-result-object p1

    .line 36
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 37
    move-result-object p1

    .line 40
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 41
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 43
    move-result-object p2

    .line 46
    filled-new-array {v0, p2, p0}, [Ljava/lang/Object;

    .line 47
    move-result-object p0

    .line 50
    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 51
    return-void
    .line 54
.end method


# virtual methods
.method public dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    mul-float/2addr p2, p0

    .line 12
    const/high16 p0, 0x3f000000    # 0.5f

    .line 13
    add-float/2addr p2, p0

    .line 15
    float-to-int p0, p2

    .line 16
    return p0
    .line 17
.end method

.method public hideAll()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$$ExternalSyntheticLambda0;

    .line 2
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;I)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 8
    return-void
    .line 11
.end method

.method public hideAllNoAnim()V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 3
    move-result-object v0

    .line 6
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$$ExternalSyntheticLambda1;

    .line 7
    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 12
    return-void
    .line 15
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 5
    and-int/lit8 v0, v0, 0x30

    .line 7
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mLastUIModeMask:I

    .line 9
    if-eq v0, v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mIconViewFullscreen:Landroid/view/View;

    .line 13
    const v2, 0x7f080c41    # @drawable/drag_tips_fullscreen 'res/drawable/drag_tips_fullscreen.xml'

    .line 15
    invoke-direct {p0, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->setVectorDrawable(Landroid/view/View;I)V

    .line 18
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mIconViewSplitLeft:Landroid/view/View;

    .line 21
    const v2, 0x7f080c42    # @drawable/drag_tips_splitleft 'res/drawable/drag_tips_splitleft.xml'

    .line 23
    invoke-direct {p0, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->setVectorDrawable(Landroid/view/View;I)V

    .line 26
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mIconViewSplitRight:Landroid/view/View;

    .line 29
    const v2, 0x7f080c43    # @drawable/drag_tips_splitright 'res/drawable/drag_tips_splitright.xml'

    .line 31
    invoke-direct {p0, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->setVectorDrawable(Landroid/view/View;I)V

    .line 34
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mIconViewFreeform:Landroid/view/View;

    .line 37
    const v2, 0x7f080c40    # @drawable/drag_tips_freeform 'res/drawable/drag_tips_freeform.xml'

    .line 39
    invoke-direct {p0, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->setVectorDrawable(Landroid/view/View;I)V

    .line 42
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object v1

    .line 48
    const v2, 0x7f06011e    # @color/drag_tips_text_color '#ff4d4d4d'

    .line 49
    const/4 v3, 0x0

    .line 52
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 53
    move-result v1

    .line 56
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->tv_fullscreen:Landroid/widget/TextView;

    .line 57
    invoke-direct {p0, v2, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->setTextViewColor(Landroid/widget/TextView;I)V

    .line 59
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->tv_splitLeft:Landroid/widget/TextView;

    .line 62
    invoke-direct {p0, v2, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->setTextViewColor(Landroid/widget/TextView;I)V

    .line 64
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->tv_splitRight:Landroid/widget/TextView;

    .line 67
    invoke-direct {p0, v2, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->setTextViewColor(Landroid/widget/TextView;I)V

    .line 69
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->tv_freeform:Landroid/widget/TextView;

    .line 72
    invoke-direct {p0, v2, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->setTextViewColor(Landroid/widget/TextView;I)V

    .line 74
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mLastUIModeMask:I

    .line 77
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mFontScale:F

    .line 79
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 81
    cmpl-float v0, v0, v1

    .line 83
    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->onFontScaleChanged(F)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mLocaleList:Ljava/lang/String;

    .line 90
    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 94
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Landroid/os/LocaleList;->toString()Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result v0

    .line 105
    if-nez v0, :cond_2

    .line 106
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 108
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/os/LocaleList;->toString()Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 115
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mLocaleList:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->onLocaleChanged()V

    .line 118
    :cond_2
    return-void
    .line 121
.end method

.method public onFontScaleChanged(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mFontScale:F

    .line 2
    cmpl-float v0, v0, p1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->mFontScale:F

    .line 8
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->refreshFontScale()V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public onLocaleChanged()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->refreshText()V

    .line 2
    return-void
    .line 5
.end method

.method public show(Landroid/view/SurfaceControl;I)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 3
    move-result-object v0

    .line 6
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$$ExternalSyntheticLambda3;

    .line 7
    invoke-direct {v1, p0, p2, p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;ILandroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 12
    return-void
    .line 15
.end method

.method public showFreeform()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$$ExternalSyntheticLambda0;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;I)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 8
    return-void
    .line 11
.end method

.method public showFullscreen()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$$ExternalSyntheticLambda0;

    .line 2
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;I)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 8
    return-void
    .line 11
.end method

.method public showSplitLeft()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$$ExternalSyntheticLambda0;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;I)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 8
    return-void
    .line 11
.end method

.method public showSplitRight()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$$ExternalSyntheticLambda0;

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;I)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 8
    return-void
    .line 11
.end method
