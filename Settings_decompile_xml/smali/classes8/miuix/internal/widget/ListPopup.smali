.class public Lmiuix/internal/widget/ListPopup;
.super Landroid/widget/PopupWindow;
.source "ListPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/widget/ListPopup$ContentSize;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected final mBackgroundPadding:Landroid/graphics/Rect;

.field private mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

.field protected mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field protected mElevation:I

.field private mElevationExtra:I

.field private mHasShadow:Z

.field private mListView:Landroid/widget/ListView;

.field protected mMaxAllowedHeight:I

.field private mMaxAllowedWidth:I

.field private mMinAllowedWidth:I

.field private mMinMarginScreen:I

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOffsetFromStatusBar:I

.field private mOffsetX:I

.field private mOffsetXSet:Z

.field private mOffsetY:I

.field private mOffsetYSet:Z

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field protected mRootView:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$fD363gYrMQVlqCb_U4vkWcd3_vU(Lmiuix/internal/widget/ListPopup;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qLrhNAJs7u2dGrJyJbIUHMT-Dos(Lmiuix/internal/widget/ListPopup;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lmiuix/internal/widget/ListPopup;->lambda$prepareShow$2(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$xGOcwZNYHUirn7ou2rIjYX698cs(Lmiuix/internal/widget/ListPopup;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lmiuix/internal/widget/ListPopup;->lambda$new$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 121
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const v0, 0x800035

    .line 67
    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mDropDownGravity:I

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetFromStatusBar:I

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mHasShadow:Z

    .line 89
    new-instance v1, Lmiuix/internal/widget/ListPopup$1;

    invoke-direct {v1, p0}, Lmiuix/internal/widget/ListPopup$1;-><init>(Lmiuix/internal/widget/ListPopup;)V

    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mObserver:Landroid/database/DataSetObserver;

    .line 122
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    const/4 v1, -0x2

    .line 123
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 126
    new-instance v2, Lmiuix/internal/util/DisplayHelper;

    iget-object v3, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lmiuix/internal/util/DisplayHelper;-><init>(Landroid/content/Context;)V

    .line 128
    invoke-virtual {v2}, Lmiuix/internal/util/DisplayHelper;->getWidthPixels()I

    move-result v3

    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_list_menu_dialog_maximum_width:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedWidth:I

    .line 129
    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_list_menu_dialog_minimum_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lmiuix/internal/widget/ListPopup;->mMinAllowedWidth:I

    .line 130
    invoke-virtual {v2}, Lmiuix/internal/util/DisplayHelper;->getHeightPixels()I

    move-result v3

    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_list_menu_dialog_maximum_height:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedHeight:I

    .line 132
    invoke-virtual {v2}, Lmiuix/internal/util/DisplayHelper;->getDensity()F

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 133
    iput v1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    .line 134
    iput v1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    .line 135
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 136
    new-instance v1, Lmiuix/internal/widget/ListPopup$ContentSize;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmiuix/internal/widget/ListPopup$ContentSize;-><init>(Lmiuix/internal/widget/ListPopup$1;)V

    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    .line 138
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 139
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 141
    new-instance v0, Lmiuix/smooth/SmoothFrameLayout2;

    invoke-direct {v0, p1}, Lmiuix/smooth/SmoothFrameLayout2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_immersion_menu_background_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 143
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    check-cast v1, Lmiuix/smooth/SmoothFrameLayout2;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lmiuix/smooth/SmoothFrameLayout2;->setCornerRadius(F)V

    .line 144
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    new-instance v1, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda0;-><init>(Lmiuix/internal/widget/ListPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->prepareContentView(Landroid/content/Context;)V

    .line 146
    sget v0, Lmiuix/appcompat/R$style;->Animation_PopupWindow_ImmersionMenu:I

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 148
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->popupWindowElevation:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    .line 149
    new-instance v0, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda1;-><init>(Lmiuix/internal/widget/ListPopup;)V

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_context_menu_window_margin_screen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_context_menu_window_margin_statusbar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetFromStatusBar:I

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_menu_popup_extra_elevation:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mElevationExtra:I

    return-void
.end method

.method static synthetic access$000(Lmiuix/internal/widget/ListPopup;)Lmiuix/internal/widget/ListPopup$ContentSize;
    .locals 0

    .line 47
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/internal/widget/ListPopup;)Landroid/view/View;
    .locals 0

    .line 47
    invoke-direct {p0}, Lmiuix/internal/widget/ListPopup;->getAnchor()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/internal/widget/ListPopup;Landroid/view/View;)I
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->calculateXoffset(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lmiuix/internal/widget/ListPopup;Landroid/view/View;)I
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->calculateYoffset(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lmiuix/internal/widget/ListPopup;)Landroid/widget/ListView;
    .locals 0

    .line 47
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method private calculateXoffset(Landroid/view/View;)I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 436
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 438
    invoke-static {p1}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    aget v1, v0, v3

    .line 439
    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    sub-int/2addr v1, v4

    .line 440
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    add-int/2addr v1, v4

    .line 441
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    if-le v1, v4, :cond_1

    .line 442
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    sub-int/2addr v1, v4

    aget v0, v0, v3

    goto :goto_0

    :cond_0
    aget v1, v0, v3

    .line 446
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    add-int/2addr v1, v4

    .line 447
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    sub-int/2addr v1, v4

    if-gez v1, :cond_1

    .line 449
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    add-int/2addr v1, v4

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    :goto_0
    sub-int/2addr v1, v0

    goto :goto_1

    :cond_1
    move v1, v3

    move v2, v1

    :goto_1
    if-nez v2, :cond_5

    .line 454
    iget-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetXSet:Z

    if-eqz v0, :cond_2

    iget v3, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    :cond_2
    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    .line 456
    invoke-static {p1}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 457
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    sub-int/2addr p1, p0

    sub-int v1, v3, p1

    goto :goto_2

    .line 459
    :cond_3
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget p0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    sub-int/2addr p1, p0

    add-int v1, v3, p1

    goto :goto_2

    :cond_4
    move v1, v3

    :cond_5
    :goto_2
    return v1
.end method

.method private calculateYoffset(Landroid/view/View;)I
    .locals 11

    .line 369
    iget-boolean v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetYSet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    add-int/2addr v0, v1

    :goto_0
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 371
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    .line 373
    iget-object v4, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    new-array v5, v1, [I

    .line 379
    iget-object v6, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    sget v7, Lmiuix/appcompat/R$attr;->isMiuixFloatingTheme:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 380
    iget-object v6, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    instance-of v7, v6, Lmiuix/appcompat/app/AppCompatActivity;

    const v9, 0x1020002    # @android:id/content

    if-eqz v7, :cond_2

    .line 381
    check-cast v6, Lmiuix/appcompat/app/AppCompatActivity;

    sget v7, Lmiuix/appcompat/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_1

    .line 383
    iget-object v6, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    check-cast v6, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v6, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 385
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 386
    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationInWindow([I)V

    goto :goto_1

    .line 387
    :cond_2
    instance-of v7, v6, Landroid/view/ContextThemeWrapper;

    if-eqz v7, :cond_4

    .line 388
    check-cast v6, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    .line 389
    instance-of v7, v6, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v7, :cond_4

    .line 390
    check-cast v6, Lmiuix/appcompat/app/AppCompatActivity;

    sget v7, Lmiuix/appcompat/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_3

    .line 392
    invoke-virtual {v6, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 394
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 395
    invoke-virtual {v7, v5}, Landroid/view/View;->getLocationInWindow([I)V

    move v7, v6

    goto :goto_1

    :cond_4
    move v7, v4

    :goto_1
    aget v6, v5, v3

    int-to-float v6, v6

    sub-float v6, v2, v6

    goto :goto_2

    :cond_5
    move v6, v2

    move v7, v4

    .line 400
    :goto_2
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->checkMaxHeight()I

    move-result v9

    if-lez v9, :cond_6

    .line 402
    iget-object v10, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget v10, v10, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_3

    :cond_6
    iget-object v9, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget v9, v9, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    :goto_3
    if-ge v9, v7, :cond_8

    int-to-float v10, v0

    add-float/2addr v6, v10

    int-to-float v10, v9

    add-float/2addr v6, v10

    .line 405
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v6, v10

    int-to-float v10, v7

    cmpl-float v6, v6, v10

    if-lez v6, :cond_8

    .line 406
    iget-boolean v6, p0, Lmiuix/internal/widget/ListPopup;->mOffsetYSet:Z

    if-eqz v6, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    :cond_7
    add-int/2addr v8, v9

    sub-int/2addr v0, v8

    :cond_8
    new-array v1, v1, [I

    .line 410
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    .line 411
    invoke-virtual {v6, v1}, Landroid/view/View;->getLocationInWindow([I)V

    int-to-float v6, v0

    add-float/2addr v6, v2

    .line 412
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v6, p1

    float-to-int p1, v6

    aget v2, v1, v3

    if-lt p1, v2, :cond_9

    aget v2, v5, v3

    if-ge p1, v2, :cond_9

    sub-int/2addr v2, p1

    sub-int v6, v9, v2

    .line 417
    invoke-virtual {p0, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    add-int/2addr v0, v2

    :cond_9
    add-int/2addr p1, v9

    aget v1, v1, v3

    add-int/2addr v1, v4

    if-gt p1, v1, :cond_a

    aget v1, v5, v3

    add-int v2, v1, v7

    if-ge v2, p1, :cond_a

    sub-int/2addr p1, v1

    sub-int/2addr p1, v7

    sub-int/2addr v9, p1

    .line 426
    invoke-virtual {p0, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    :cond_a
    return v0
.end method

.method public static changeWindowBackground(Landroid/view/View;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 561
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    return-void

    .line 565
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x3e99999a    # 0.3f

    .line 566
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 568
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 569
    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getAnchor()Landroid/view/View;
    .locals 0

    .line 365
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 144
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 0

    .line 150
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz p0, :cond_0

    .line 151
    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$prepareShow$2(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    .line 262
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v4, p3, v0

    .line 263
    iget-object p3, p0, Lmiuix/internal/widget/ListPopup;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz p3, :cond_0

    if-ltz v4, :cond_0

    iget-object p3, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p3}, Landroid/widget/ListAdapter;->getCount()I

    move-result p3

    if-ge v4, p3, :cond_0

    .line 264
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method private measureContentSize(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)V
    .locals 10

    const/4 v0, 0x0

    .line 497
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 499
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 500
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v0

    move v6, v5

    move v7, v6

    move-object v8, v4

    :goto_0
    if-ge v0, v3, :cond_5

    .line 502
    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v9

    if-eq v9, v5, :cond_0

    move-object v8, v4

    move v5, v9

    :cond_0
    if-nez p2, :cond_1

    .line 508
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 510
    :cond_1
    invoke-interface {p1, v0, v8, p2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 511
    invoke-virtual {v8, v1, v2}, Landroid/view/View;->measure(II)V

    .line 512
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v7, v9

    .line 513
    iget-object v9, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget-boolean v9, v9, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    if-eqz v9, :cond_2

    goto :goto_1

    .line 516
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-lt v9, p4, :cond_3

    .line 518
    iget-object v9, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    invoke-virtual {v9, p4}, Lmiuix/internal/widget/ListPopup$ContentSize;->updateWidth(I)V

    goto :goto_1

    :cond_3
    if-le v9, v6, :cond_4

    move v6, v9

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    :cond_5
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget-boolean p2, p1, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    if-nez p2, :cond_6

    .line 524
    invoke-virtual {p1, v6}, Lmiuix/internal/widget/ListPopup$ContentSize;->updateWidth(I)V

    .line 526
    :cond_6
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iput v7, p0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    return-void
.end method

.method private shouldSetElevation()Z
    .locals 0

    .line 285
    iget-boolean p0, p0, Lmiuix/internal/widget/ListPopup;->mHasShadow:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showWithAnchor(Landroid/view/View;)V
    .locals 3

    .line 338
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->calculateYoffset(Landroid/view/View;)I

    move-result v0

    .line 339
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->calculateXoffset(Landroid/view/View;)I

    move-result v1

    .line 340
    iget v2, p0, Lmiuix/internal/widget/ListPopup;->mDropDownGravity:I

    invoke-virtual {p0, p1, v1, v0, v2}, Lmiuix/internal/widget/ListPopup;->showAsDropDown(Landroid/view/View;III)V

    .line 341
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    invoke-static {p1, v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    .line 342
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/internal/widget/ListPopup;->changeWindowBackground(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected checkMaxHeight()I
    .locals 3

    .line 577
    new-instance v0, Lmiuix/internal/util/DisplayHelper;

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/internal/util/DisplayHelper;-><init>(Landroid/content/Context;)V

    .line 578
    invoke-virtual {v0}, Lmiuix/internal/util/DisplayHelper;->getHeightPixels()I

    move-result v0

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    .line 579
    invoke-static {v1, v2}, Lmiuix/core/util/EnvStateManager;->getStatusBarHeight(Landroid/content/Context;Z)I

    move-result v1

    sub-int/2addr v0, v1

    .line 580
    iget p0, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedHeight:I

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method protected computePopupContentWidth()I
    .locals 4

    .line 331
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget-boolean v0, v0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    iget v2, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedWidth:I

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lmiuix/internal/widget/ListPopup;->measureContentSize(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)V

    .line 334
    :cond_0
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget v0, v0, Lmiuix/internal/widget/ListPopup$ContentSize;->mWidth:I

    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mMinAllowedWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p0

    return v0
.end method

.method public dismiss()V
    .locals 1

    .line 360
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 361
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lmiuix/appcompat/internal/util/SinglePopControl;->hidePop(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public fastShow(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    .line 474
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->computePopupContentWidth()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 475
    iget-object p2, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget p2, p2, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    .line 476
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->checkMaxHeight()I

    move-result v0

    if-le p2, v0, :cond_0

    move p2, v0

    .line 480
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 481
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->showWithAnchor(Landroid/view/View;)V

    return-void
.end method

.method public getHorizontalOffset()I
    .locals 0

    .line 327
    iget p0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    return p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    .line 297
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method public getMinMarginScreen()I
    .locals 0

    .line 315
    iget p0, p0, Lmiuix/internal/widget/ListPopup;->mMinMarginScreen:I

    return p0
.end method

.method public getOffsetFromStatusBar()I
    .locals 0

    .line 319
    iget p0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetFromStatusBar:I

    return p0
.end method

.method public getVerticalOffset()I
    .locals 0

    .line 323
    iget p0, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    return p0
.end method

.method protected isNeedScroll()Z
    .locals 1

    .line 205
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->checkMaxHeight()I

    move-result v0

    .line 206
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget p0, p0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected prepareContentView(Landroid/content/Context;)V
    .locals 1

    .line 163
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    sget v0, Lmiuix/appcompat/R$attr;->immersionWindowBackground:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 165
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 166
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 168
    :cond_0
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->setPopupWindowContentView(Landroid/view/View;)V

    return-void
.end method

.method protected prepareShow(Landroid/view/View;Landroid/view/ViewGroup;)Z
    .locals 5

    const-string p2, "ListPopupWindow"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "show: anchor is null"

    .line 212
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 216
    :cond_0
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 217
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$layout;->miuix_appcompat_list_popup_list:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    .line 218
    new-instance v2, Lmiuix/internal/widget/ListPopup$2;

    invoke-direct {v2, p0}, Lmiuix/internal/widget/ListPopup$2;-><init>(Lmiuix/internal/widget/ListPopup;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 238
    :cond_1
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    if-eq v1, v4, :cond_3

    .line 239
    :cond_2
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 240
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 241
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    .line 242
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 243
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v4, 0x10

    .line 244
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 247
    :cond_3
    invoke-direct {p0}, Lmiuix/internal/widget/ListPopup;->shouldSetElevation()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 248
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 251
    iget v1, p0, Lmiuix/internal/widget/ListPopup;->mElevation:I

    iget v4, p0, Lmiuix/internal/widget/ListPopup;->mElevationExtra:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    .line 252
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 253
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lmiuix/internal/widget/ListPopup;->setPopupShadowAlpha(Landroid/view/View;)V

    .line 256
    :cond_4
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    const v4, 0x102000a    # @android:id/list

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    if-nez v1, :cond_5

    const-string p0, "list not found"

    .line 258
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 261
    :cond_5
    new-instance p2, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda2;-><init>(Lmiuix/internal/widget/ListPopup;)V

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 267
    iget-object p2, p0, Lmiuix/internal/widget/ListPopup;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 268
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->computePopupContentWidth()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 270
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->checkMaxHeight()I

    move-result p2

    if-lez p2, :cond_6

    .line 271
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    iget v1, v1, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    if-le v1, p2, :cond_6

    move v2, p2

    .line 274
    :cond_6
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 277
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p2, "input_method"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return v3
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 182
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 183
    iget-object v1, p0, Lmiuix/internal/widget/ListPopup;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 185
    :cond_0
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_1

    .line 187
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, p0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    return-void
.end method

.method public setContentWidth(I)V
    .locals 0

    .line 289
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContentSize:Lmiuix/internal/widget/ListPopup$ContentSize;

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup$ContentSize;->updateWidth(I)V

    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0

    .line 293
    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mDropDownGravity:I

    return-void
.end method

.method public setHasShadow(Z)V
    .locals 0

    .line 311
    iput-boolean p1, p0, Lmiuix/internal/widget/ListPopup;->mHasShadow:Z

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    .line 306
    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetX:I

    const/4 p1, 0x1

    .line 307
    iput-boolean p1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetXSet:Z

    return-void
.end method

.method public setMaxAllowedHeight(I)V
    .locals 0

    .line 573
    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mMaxAllowedHeight:I

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method protected setPopupShadowAlpha(Landroid/view/View;)V
    .locals 1

    .line 531
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isFreeformMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 532
    invoke-virtual {p1, p0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0

    .line 534
    :cond_0
    new-instance v0, Lmiuix/internal/widget/ListPopup$3;

    invoke-direct {v0, p0}, Lmiuix/internal/widget/ListPopup$3;-><init>(Lmiuix/internal/widget/ListPopup;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 551
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    sget v0, Lmiuix/appcompat/R$color;->miuix_appcompat_drop_down_menu_spot_shadow_color:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    :goto_0
    return-void
.end method

.method protected setPopupWindowContentView(Landroid/view/View;)V
    .locals 0

    .line 173
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    .line 301
    iput p1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetY:I

    const/4 p1, 0x1

    .line 302
    iput-boolean p1, p0, Lmiuix/internal/widget/ListPopup;->mOffsetYSet:Z

    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 196
    invoke-virtual {p0, p1, p2}, Lmiuix/internal/widget/ListPopup;->prepareShow(Landroid/view/View;Landroid/view/ViewGroup;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 197
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;->showWithAnchor(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 0

    .line 347
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 348
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lmiuix/internal/widget/ListPopup;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 349
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lmiuix/appcompat/internal/util/SinglePopControl;->showPop(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 0

    .line 354
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 355
    iget-object p1, p0, Lmiuix/internal/widget/ListPopup;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lmiuix/appcompat/internal/util/SinglePopControl;->showPop(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method
