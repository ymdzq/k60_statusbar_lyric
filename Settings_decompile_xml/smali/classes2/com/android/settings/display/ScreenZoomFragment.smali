.class public Lcom/android/settings/display/ScreenZoomFragment;
.super Lcom/android/settings/display/PageLayoutBaseFragment;
.source "ScreenZoomFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;
    }
.end annotation


# static fields
.field private static final CALL_TITLE_SIZE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final ICONS:[I

.field private static final ICON_NAMES:[I

.field private static final PAGE_LAYOUT_SIZE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCREEN_ZOOM_HINT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUB_TITLE_SIZE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICON_SIZES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIconGrandParentView:Landroid/widget/LinearLayout;


# direct methods
.method static bridge synthetic -$$Nest$mconfirmType(Lcom/android/settings/display/ScreenZoomFragment;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/ScreenZoomFragment;->confirmType()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$meffectZoomLevel(Lcom/android/settings/display/ScreenZoomFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/ScreenZoomFragment;->effectZoomLevel()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 51
    sget v0, Lcom/android/settings/R$drawable;->font_setting_icon_weather2:I

    sget v1, Lcom/android/settings/R$drawable;->font_setting_icon_gallery2:I

    sget v2, Lcom/android/settings/R$drawable;->font_setting_icon_phone:I

    sget v3, Lcom/android/settings/R$drawable;->font_setting_icon_note:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/ScreenZoomFragment;->ICONS:[I

    .line 58
    sget v0, Lcom/android/settings/R$string;->page_layout_11:I

    sget v1, Lcom/android/settings/R$string;->page_layout_3:I

    sget v2, Lcom/android/settings/R$string;->page_layout_34:I

    sget v3, Lcom/android/settings/R$string;->page_layout_35:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/ScreenZoomFragment;->ICON_NAMES:[I

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/display/ScreenZoomFragment;->SCREEN_ZOOM_HINT:Ljava/util/HashMap;

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/settings/display/ScreenZoomFragment;->CALL_TITLE_SIZE:Ljava/util/HashMap;

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/settings/display/ScreenZoomFragment;->SUB_TITLE_SIZE:Ljava/util/HashMap;

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/settings/display/ScreenZoomFragment;->PAGE_LAYOUT_SIZE:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->screen_zoom_small:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->screen_zoom_normal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->screen_zoom_big:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/android/settings/display/PageLayoutBaseFragment;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/ScreenZoomFragment;->ICON_SIZES:Ljava/util/HashMap;

    return-void
.end method

.method private confirmType()I
    .locals 3

    .line 201
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/display/ScreenZoomUtils;->getLastZoomLevel(Landroid/content/Context;)I

    move-result v0

    .line 202
    iget v1, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mCurrentLevel:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 206
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mCurrentLevel:I

    invoke-static {v0, v1}, Lcom/android/settings/display/ScreenZoomUtils;->isBiggerMode(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 209
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mCurrentLevel:I

    invoke-static {v0, p0}, Lcom/android/settings/display/ScreenZoomUtils;->isSmallerMode(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    return v2
.end method

.method private effectZoomLevel()V
    .locals 1

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mCurrentLevel:I

    invoke-static {v0, p0}, Lcom/android/settings/display/ScreenZoomUtils;->setZoomLevel(Landroid/content/Context;I)V

    return-void
.end method

.method private initTextSize()V
    .locals 9

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutBaseFragment;->getPageLayoutTextSize()F

    move-result v0

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutBaseFragment;->getPageLayoutTitleTextSize()F

    move-result v1

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/display/PageLayoutBaseFragment;->getPageLayoutSummaryTextSize()F

    move-result p0

    .line 117
    sget-object v2, Lcom/android/settings/display/ScreenZoomFragment;->PAGE_LAYOUT_SIZE:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/android/settings/display/ScreenZoomUtils;->SCREEN_ZOOM_SMALL_RATIO:F

    mul-float v5, v0, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    .line 118
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v7, v0, v6

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x2

    .line 119
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x3f866666    # 1.05f

    mul-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/settings/display/ScreenZoomFragment;->CALL_TITLE_SIZE:Ljava/util/HashMap;

    mul-float v2, v1, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    mul-float v2, v1, v6

    .line 122
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    mul-float/2addr v1, v8

    .line 123
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/settings/display/ScreenZoomFragment;->SUB_TITLE_SIZE:Ljava/util/HashMap;

    mul-float/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    mul-float/2addr v6, p0

    .line 126
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    mul-float/2addr p0, v8

    .line 127
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, v7, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isWifiOnlyAndDeskClockInstalled(Landroid/content/Context;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 342
    :cond_0
    invoke-static {p1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.android.deskclock"

    .line 343
    invoke-static {p1, v0}, Lcom/android/settings/MiuiUtils;->isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private relayoutItems()V
    .locals 7

    .line 254
    iget-object v0, p0, Lcom/android/settings/display/ScreenZoomFragment;->ICON_SIZES:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mCurrentLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/android/settings/display/ScreenZoomFragment;->SUB_TITLE_SIZE:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mCurrentLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/settings/display/ScreenZoomFragment;->updateIconAndTexts(IF)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->actionbar_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 257
    sget-object v2, Lcom/android/settings/display/ScreenZoomFragment;->PAGE_LAYOUT_SIZE:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mCurrentLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/settings/display/ScreenZoomFragment;->setAllTextSize(Landroid/view/View;F)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->font_hint_view:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 260
    sget-object v3, Lcom/android/settings/display/ScreenZoomFragment;->SCREEN_ZOOM_HINT:Ljava/util/HashMap;

    iget v4, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mCurrentLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 261
    iget v3, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mCurrentLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/settings/display/ScreenZoomFragment;->setAllTextSize(Landroid/view/View;F)V

    .line 263
    iget v0, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mCurrentLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 264
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->transparent_40_balck:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 266
    iget-object v2, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->icon_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 267
    invoke-direct {p0, v2, v0}, Lcom/android/settings/display/ScreenZoomFragment;->setAllTextSize(Landroid/view/View;F)V

    .line 268
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 270
    iget-object v2, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->words_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 271
    invoke-direct {p0, v2, v0}, Lcom/android/settings/display/ScreenZoomFragment;->setAllTextSize(Landroid/view/View;F)V

    .line 272
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 274
    sget-object v0, Lcom/android/settings/display/PageLayoutBaseFragment;->PAGE_LAYOUT_CONTACT_PAGE_IDS:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    .line 275
    iget-object v4, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 276
    sget v4, Lcom/android/settings/R$id;->call_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 278
    sget-object v5, Lcom/android/settings/display/ScreenZoomFragment;->CALL_TITLE_SIZE:Ljava/util/HashMap;

    iget v6, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mCurrentLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/display/ScreenZoomFragment;->setAllTextSize(Landroid/view/View;F)V

    .line 281
    :cond_0
    sget v4, Lcom/android/settings/R$id;->call_detail:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 283
    sget-object v4, Lcom/android/settings/display/ScreenZoomFragment;->SUB_TITLE_SIZE:Ljava/util/HashMap;

    iget v5, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mCurrentLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/display/ScreenZoomFragment;->setAllTextSize(Landroid/view/View;F)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setAllTextSize(Landroid/view/View;F)V
    .locals 2

    .line 243
    instance-of v0, p1, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 244
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 245
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 246
    check-cast p1, Landroid/view/ViewGroup;

    .line 247
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 248
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/settings/display/ScreenZoomFragment;->setAllTextSize(Landroid/view/View;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private updateIconAndTexts(IF)V
    .locals 12

    .line 292
    iget-object v0, p0, Lcom/android/settings/display/ScreenZoomFragment;->mIconGrandParentView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_6

    .line 295
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 296
    sget v4, Lcom/android/settings/R$id;->icon:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 297
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 298
    iput p1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 299
    iput p1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 300
    sget-object v5, Lcom/android/settings/display/ScreenZoomFragment;->ICONS:[I

    add-int v6, v1, v2

    aget v5, v5, v6

    .line 302
    sget v7, Lcom/android/settings/R$drawable;->font_setting_icon_phone:I

    const-string v8, "com.android.deskclock"

    const/4 v9, 0x0

    if-ne v5, v7, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/display/ScreenZoomFragment;->isWifiOnlyAndDeskClockInstalled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 305
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v7

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 308
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    .line 304
    invoke-static {v7, v10, v8, v11}, Lcom/android/settings/Utils;->getBadgedIcon(Landroid/util/IconDrawableFactory;Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_1

    :cond_0
    move-object v7, v9

    :goto_1
    if-nez v7, :cond_1

    .line 311
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 313
    :cond_1
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    sget v4, Lcom/android/settings/R$id;->text:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 316
    sget-object v4, Lcom/android/settings/display/ScreenZoomFragment;->ICON_NAMES:[I

    aget v4, v4, v6

    .line 318
    sget v5, Lcom/android/settings/R$string;->page_layout_35:I

    if-ne v4, v5, :cond_2

    .line 320
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.miui.notes"

    invoke-static {v5, v6}, Lcom/android/settings/MiuiUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 322
    :cond_2
    sget v5, Lcom/android/settings/R$string;->page_layout_3:I

    if-ne v4, v5, :cond_3

    .line 324
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.miui.gallery"

    invoke-static {v5, v6}, Lcom/android/settings/MiuiUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 326
    :cond_3
    sget v5, Lcom/android/settings/R$string;->page_layout_34:I

    if-ne v4, v5, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/display/ScreenZoomFragment;->isWifiOnlyAndDeskClockInstalled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 328
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/android/settings/MiuiUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 331
    :cond_4
    :goto_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 332
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 334
    :cond_5
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    invoke-virtual {v3, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method protected initActionBarMenu()V
    .locals 4

    .line 144
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x10

    .line 148
    invoke-virtual {v0, v1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    const/4 v1, 0x0

    .line 149
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 150
    sget v1, Lcom/android/settings/R$layout;->miuix_appcompat_edit_mode_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    .line 151
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020016    # @android:id/title

    .line 153
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->screen_zoom_title:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x1020019    # @android:id/button1

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 156
    sget v2, Lcom/android/settings/R$drawable;->action_mode_title_button_cancel:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v2, 0x0

    .line 157
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x1040000    # @android:string/cancel

    .line 158
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 159
    new-instance v3, Lcom/android/settings/display/ScreenZoomFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings/display/ScreenZoomFragment$1;-><init>(Lcom/android/settings/display/ScreenZoomFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x102001a    # @android:id/button2

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 167
    sget v1, Lcom/android/settings/R$drawable;->action_mode_title_button_confirm:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 168
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x104000a    # @android:string/ok

    .line 169
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    new-instance v1, Lcom/android/settings/display/ScreenZoomFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/display/ScreenZoomFragment$2;-><init>(Lcom/android/settings/display/ScreenZoomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initUI(Landroid/view/View;)V
    .locals 4

    .line 218
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 220
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 221
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->icon_grand_parent:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/settings/display/ScreenZoomFragment;->mIconGrandParentView:Landroid/widget/LinearLayout;

    .line 222
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->font_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/FontSizeAdjustView;

    iput-object p1, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mAdjustView:Lcom/android/settings/display/FontSizeAdjustView;

    const/4 v1, 0x3

    .line 224
    invoke-virtual {p1, v1}, Lcom/android/settings/display/FontSizeAdjustView;->setPointCount(I)V

    .line 225
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mAdjustView:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-virtual {p1, p0}, Lcom/android/settings/display/FontSizeAdjustView;->setFontSizeChangeListener(Lcom/android/settings/display/FontSizeAdjustView$FontSizeChangeListener;)V

    .line 227
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mAdjustView:Lcom/android/settings/display/FontSizeAdjustView;

    iget v1, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mCurrentLevel:I

    invoke-virtual {p1, v1}, Lcom/android/settings/display/FontSizeAdjustView;->setCurrentPointIndex(I)V

    .line 229
    :goto_0
    sget-object p1, Lcom/android/settings/display/PageLayoutBaseFragment;->PAGE_LAYOUT_CONTACT_PAGE_IDS:[I

    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mRootView:Landroid/view/View;

    aget p1, p1, v0

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 231
    sget v1, Lcom/android/settings/R$id;->call_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 232
    sget-object v2, Lcom/android/settings/display/PageLayoutBaseFragment;->CALL_RECORDS_NAME_IDS:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 233
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->transparent_80_balck:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 234
    sget v1, Lcom/android/settings/R$id;->call_detail:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 235
    sget-object v1, Lcom/android/settings/display/PageLayoutBaseFragment;->CALL_RECORDS_SUMMARY_IDS:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 236
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->transparent_60_balck:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/display/ScreenZoomFragment;->relayoutItems()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/display/PageLayoutBaseFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "key_current_zoom_level"

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mCurrentLevel:I

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/display/ScreenZoomUtils;->getLastZoomLevel(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mCurrentLevel:I

    .line 89
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/display/ScreenZoomFragment;->initTextSize()V

    .line 91
    iget-object p1, p0, Lcom/android/settings/display/ScreenZoomFragment;->ICON_SIZES:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    if-eqz p1, :cond_2

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/settings/R$dimen;->font_settings_zoom_icon_size_port:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_2

    .line 97
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/settings/R$dimen;->font_settings_zoom_icon_size_land:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 98
    :goto_2
    iget-object v2, p0, Lcom/android/settings/display/ScreenZoomFragment;->ICON_SIZES:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    int-to-float p1, p1

    sget v3, Lcom/android/settings/display/ScreenZoomUtils;->SCREEN_ZOOM_SMALL_RATIO:F

    mul-float/2addr v3, p1

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/android/settings/display/ScreenZoomFragment;->ICON_SIZES:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object p0, p0, Lcom/android/settings/display/ScreenZoomFragment;->ICON_SIZES:Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x3f866666    # 1.05f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 193
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroyView()V

    .line 194
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 132
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/BaseFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 133
    sget p2, Lcom/android/settings/R$layout;->screen_zoom_fragment:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 134
    new-instance p2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/preference/PreferenceFrameLayout$LayoutParams;-><init>(II)V

    const/4 p3, 0x1

    .line 136
    iput-boolean p3, p2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 137
    iput-object p1, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mRootView:Landroid/view/View;

    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "key_current_zoom_level"

    .line 108
    iget p0, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mCurrentLevel:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onSizeChange(I)V
    .locals 0

    .line 348
    iput p1, p0, Lcom/android/settings/display/PageLayoutBaseFragment;->mCurrentLevel:I

    .line 349
    invoke-direct {p0}, Lcom/android/settings/display/ScreenZoomFragment;->relayoutItems()V

    return-void
.end method
