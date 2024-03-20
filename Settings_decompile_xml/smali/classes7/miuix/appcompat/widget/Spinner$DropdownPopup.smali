.class Lmiuix/appcompat/widget/Spinner$DropdownPopup;
.super Lmiuix/internal/widget/ListPopup;
.source "Spinner.java"

# interfaces
.implements Lmiuix/appcompat/widget/Spinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private mFenceView:Landroid/view/View;

.field private mFenceX:I

.field private mHintText:Ljava/lang/CharSequence;

.field private mMarginScreen:I

.field private mMarginScreenVertical:I

.field private mMaxListHeight:I

.field private mMaxListWidth:I

.field private mOriginalHorizontalOffset:I

.field private final mVisibleRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lmiuix/appcompat/widget/Spinner;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1125
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 1126
    invoke-direct {p0, p2}, Lmiuix/internal/widget/ListPopup;-><init>(Landroid/content/Context;)V

    .line 1116
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;

    const/4 p3, -0x1

    .line 1120
    iput p3, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mFenceX:I

    .line 1127
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_spinner_margin_screen_horizontal:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMarginScreen:I

    .line 1128
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_spinner_max_width:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMaxListWidth:I

    .line 1129
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_spinner_margin_screen_vertical:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMarginScreenVertical:I

    const p2, 0x800033

    .line 1131
    invoke-virtual {p0, p2}, Lmiuix/internal/widget/ListPopup;->setDropDownGravity(I)V

    .line 1133
    new-instance p2, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;

    invoke-direct {p2, p0, p1}, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;-><init>(Lmiuix/appcompat/widget/Spinner$DropdownPopup;Lmiuix/appcompat/widget/Spinner;)V

    invoke-virtual {p0, p2}, Lmiuix/internal/widget/ListPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private checkInFloatingWindowMode()V
    .locals 2

    .line 1238
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mFenceView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    .line 1242
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 1243
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lmiuix/appcompat/app/IActivity;

    if-eqz v1, :cond_1

    .line 1244
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/IActivity;

    invoke-interface {v1}, Lmiuix/appcompat/app/IActivity;->isInFloatingWindowMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1245
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setFenceView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private getTotalListHeight()I
    .locals 12

    .line 1432
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1434
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 1435
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1436
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 1437
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    const/16 v6, 0x8

    if-ge v5, v6, :cond_0

    move v6, v5

    :cond_0
    move v7, v3

    move v8, v7

    :goto_0
    if-ge v7, v5, :cond_3

    const/4 v9, 0x0

    .line 1440
    invoke-interface {v4, v7, v9, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 1441
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1442
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1441
    invoke-virtual {v9, v10, v11}, Landroid/view/View;->measure(II)V

    .line 1443
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v9, v6, -0x1

    if-ne v7, v9, :cond_1

    .line 1445
    iput v8, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMaxListHeight:I

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1449
    :cond_2
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1450
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1449
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1451
    iget-object v0, p0, Lmiuix/internal/widget/ListPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v8, v3, v0

    .line 1452
    iput v8, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMaxListHeight:I

    :cond_3
    return v8
.end method

.method private getxInWindow(IIIIII)I
    .locals 7

    .line 1397
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    .line 1398
    iget v1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMaxListWidth:I

    if-le v0, v1, :cond_0

    .line 1399
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1400
    iget v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMaxListWidth:I

    :cond_0
    add-int v1, p1, p2

    add-int/2addr p4, p3

    add-int v2, p6, p2

    add-int v3, p6, v0

    .line 1405
    iget p0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMarginScreen:I

    add-int/2addr v3, p0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gt v3, p5, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    sub-int v6, v2, v0

    sub-int/2addr v6, p0

    if-ltz v6, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    if-eqz v3, :cond_3

    if-ge p6, p0, :cond_7

    :goto_2
    add-int p1, p3, p0

    goto :goto_4

    :cond_3
    if-eqz v4, :cond_5

    sub-int/2addr p5, p0

    if-le v2, p5, :cond_4

    goto :goto_3

    :cond_4
    sub-int p1, v1, v0

    goto :goto_4

    :cond_5
    sub-int p1, p5, v2

    sub-int/2addr p5, p2

    .line 1421
    div-int/lit8 p5, p5, 0x2

    if-lt p1, p5, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    sub-int/2addr p4, p0

    sub-int p1, p4, v0

    :cond_7
    :goto_4
    return p1
.end method

.method private getyInWindow(IIIIII)F
    .locals 5

    .line 1352
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->getTotalListHeight()I

    move-result v0

    .line 1353
    iget v1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMaxListHeight:I

    if-le v0, v1, :cond_0

    move v0, v1

    .line 1356
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    add-int/2addr p4, p3

    add-int v1, p1, p2

    add-int/2addr p2, p6

    add-int v2, p2, v0

    .line 1362
    iget v3, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMarginScreenVertical:I

    sub-int v4, p5, v3

    if-ge v2, v4, :cond_1

    int-to-float p0, v1

    if-ge p2, v3, :cond_6

    add-int/2addr p3, v3

    int-to-float p0, p3

    goto :goto_1

    :cond_1
    sub-int v2, p6, v0

    if-le v2, v3, :cond_2

    sub-int/2addr p1, v0

    int-to-float p0, p1

    sub-int/2addr p5, v3

    if-le p6, p5, :cond_6

    sub-int/2addr p4, v3

    sub-int/2addr p4, v0

    int-to-float p0, p4

    goto :goto_1

    :cond_2
    if-ge p2, v3, :cond_3

    add-int/2addr p3, v3

    int-to-float p1, p3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr p5, v3

    int-to-float p2, p5

    float-to-int p2, p2

    .line 1376
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    :goto_0
    move p0, p1

    goto :goto_1

    :cond_3
    sub-int p3, p5, v3

    if-le p6, p3, :cond_4

    sub-int/2addr p4, v3

    sub-int/2addr p4, v0

    int-to-float p1, p4

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr p5, v3

    int-to-float p2, p5

    float-to-int p2, p2

    .line 1380
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_0

    .line 1381
    :cond_4
    div-int/lit8 p3, p5, 0x2

    if-ge p6, p3, :cond_5

    int-to-float p1, v1

    sub-int/2addr p5, v3

    sub-int/2addr p5, p2

    int-to-float p2, p5

    float-to-int p2, p2

    .line 1384
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_0

    :cond_5
    sub-int/2addr p6, v3

    int-to-float p2, p6

    float-to-int p3, p2

    .line 1387
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    int-to-float p0, p1

    sub-float/2addr p0, p2

    :cond_6
    :goto_1
    return p0
.end method

.method private initListView(II)V
    .locals 2

    .line 1483
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    .line 1484
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1485
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 1486
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 1487
    iget-object p0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p0

    .line 1488
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setSelection(I)V

    .line 1489
    invoke-virtual {v0, p0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void
.end method

.method private isInSplitScreenDown(IIII)Z
    .locals 0

    const/4 p0, 0x0

    if-ne p2, p1, :cond_0

    return p0

    :cond_0
    sub-int/2addr p1, p2

    add-int/2addr p1, p4

    mul-int/lit8 p3, p3, 0x3

    .line 1273
    div-int/lit8 p3, p3, 0x4

    if-le p1, p3, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private isInSplitScreenRight(IIII)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    if-ne p1, p2, :cond_0

    return p0

    :cond_0
    sub-int/2addr p1, p2

    sub-int/2addr p3, p4

    const/4 p2, 0x1

    if-ne p1, p3, :cond_1

    return p2

    :cond_1
    if-le p1, p3, :cond_2

    return p2

    :cond_2
    return p0
.end method

.method private showWithAnchor(Landroid/view/View;)V
    .locals 14

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1289
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    .line 1294
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v6, v0, v1

    aget v12, v0, v3

    .line 1304
    iget-object v5, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mFenceView:Landroid/view/View;

    if-nez v5, :cond_0

    .line 1305
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    :cond_0
    move-object v13, v5

    .line 1309
    invoke-virtual {v13, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v8, v0, v1

    aget v0, v0, v3

    .line 1313
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 1315
    iget-object v5, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 1316
    iget v5, v3, Landroid/graphics/Point;->x:I

    .line 1317
    iget v7, v3, Landroid/graphics/Point;->y:I

    .line 1319
    iget-object v9, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v3}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 1320
    iget v10, v3, Landroid/graphics/Point;->x:I

    .line 1321
    iget v3, v3, Landroid/graphics/Point;->y:I

    if-ne v5, v10, :cond_2

    if-eq v7, v3, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v11, v2

    goto :goto_2

    .line 1330
    :cond_2
    :goto_1
    invoke-direct {p0, v2, v6, v5, v10}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->isInSplitScreenRight(IIII)Z

    move-result v9

    if-eqz v9, :cond_3

    sub-int/2addr v5, v10

    sub-int/2addr v2, v5

    .line 1334
    :cond_3
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {p0, v4, v12, v7, v5}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->isInSplitScreenDown(IIII)Z

    move-result v5

    if-eqz v5, :cond_1

    sub-int/2addr v7, v3

    sub-int/2addr v4, v7

    goto :goto_0

    .line 1339
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v9

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->getxInWindow(IIIIII)I

    move-result v2

    .line 1340
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v11

    move-object v7, p0

    move v8, v12

    move v10, v0

    move v12, v3

    move v13, v4

    invoke-direct/range {v7 .. v13}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->getyInWindow(IIIIII)F

    move-result v0

    .line 1342
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_4

    float-to-int v0, v0

    .line 1343
    invoke-virtual {p0, p1, v1, v2, v0}, Lmiuix/internal/widget/ListPopup;->showAtLocation(Landroid/view/View;III)V

    .line 1344
    iget-object p0, p0, Lmiuix/internal/widget/ListPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/internal/widget/ListPopup;->changeWindowBackground(Landroid/view/View;)V

    goto :goto_3

    :cond_4
    float-to-int p1, v0

    .line 1346
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_3
    return-void
.end method


# virtual methods
.method computeContentWidth()V
    .locals 8

    .line 1200
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1203
    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget-object v1, v1, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1204
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-static {v0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget-object v0, v0, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1205
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget-object v0, v0, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    goto :goto_0

    .line 1207
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget-object v0, v0, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    move v0, v1

    .line 1210
    :goto_0
    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPaddingLeft()I

    move-result v1

    .line 1211
    iget-object v2, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v2

    .line 1212
    iget-object v3, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getWidth()I

    move-result v3

    .line 1213
    iget-object v4, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget v5, v4, Lmiuix/appcompat/widget/Spinner;->mDropDownWidth:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3

    .line 1214
    iget-object v5, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v5, Landroid/widget/SpinnerAdapter;

    .line 1215
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1214
    invoke-virtual {v4, v5, v6}, Lmiuix/appcompat/widget/Spinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v4

    .line 1216
    iget-object v5, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1217
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget-object v6, v6, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget v6, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMarginScreen:I

    mul-int/lit8 v7, v6, 0x2

    sub-int/2addr v5, v7

    if-le v4, v5, :cond_2

    move v4, v5

    :cond_2
    sub-int v5, v3, v1

    sub-int/2addr v5, v2

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    .line 1221
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_1

    :cond_3
    const/4 v4, -0x1

    if-ne v5, v4, :cond_4

    sub-int v4, v3, v1

    sub-int/2addr v4, v2

    .line 1224
    iget v5, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mMarginScreen:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_1

    .line 1226
    :cond_4
    invoke-virtual {p0, v5}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    .line 1228
    :goto_1
    iget-object v4, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-static {v4}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    sub-int/2addr v3, v2

    .line 1229
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    sub-int/2addr v3, v1

    .line 1230
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->getHorizontalOriginalOffset()I

    move-result v1

    sub-int/2addr v3, v1

    add-int/2addr v0, v3

    goto :goto_2

    .line 1232
    :cond_5
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->getHorizontalOriginalOffset()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1234
    :goto_2
    invoke-virtual {p0, v0}, Lmiuix/internal/widget/ListPopup;->setHorizontalOffset(I)V

    return-void
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 0

    .line 1154
    iget-object p0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getHorizontalOriginalOffset()I
    .locals 0

    .line 1519
    iget p0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mOriginalHorizontalOffset:I

    return p0
.end method

.method protected isNeedScroll()Z
    .locals 5

    .line 1179
    invoke-virtual {p0}, Lmiuix/internal/widget/ListPopup;->getListView()Landroid/widget/ListView;

    move-result-object p0

    .line 1180
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1183
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    .line 1189
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    if-gt v2, v4, :cond_2

    .line 1190
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1193
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result p0

    if-ge p0, v3, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1148
    invoke-super {p0, p1}, Lmiuix/internal/widget/ListPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1149
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method public setContentWidth(I)V
    .locals 1

    .line 1165
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget v0, v0, Lmiuix/appcompat/widget/Spinner;->mDropDownMaxWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget v0, v0, Lmiuix/appcompat/widget/Spinner;->mDropDownMinWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1166
    invoke-super {p0, p1}, Lmiuix/internal/widget/ListPopup;->setContentWidth(I)V

    return-void
.end method

.method public setFenceView(Landroid/view/View;)V
    .locals 0

    .line 1502
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mFenceView:Landroid/view/View;

    return-void
.end method

.method public setFenceX(I)V
    .locals 0

    .line 1498
    iput p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mFenceX:I

    return-void
.end method

.method public setHorizontalOriginalOffset(I)V
    .locals 0

    .line 1514
    iput p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mOriginalHorizontalOffset:I

    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1160
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-void
.end method

.method public show(IIFF)V
    .locals 1

    .line 1459
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->checkInFloatingWindowMode()V

    .line 1460
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p3

    .line 1461
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->computeContentWidth()V

    const/4 p4, 0x2

    .line 1462
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1464
    iget-object p4, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0}, Lmiuix/internal/widget/ListPopup;->prepareShow(Landroid/view/View;Landroid/view/ViewGroup;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 1465
    iget-object p4, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-direct {p0, p4}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->showWithAnchor(Landroid/view/View;)V

    .line 1468
    :cond_0
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->initListView(II)V

    if-eqz p3, :cond_1

    return-void

    .line 1474
    :cond_1
    new-instance p1, Lmiuix/appcompat/widget/Spinner$DropdownPopup$2;

    invoke-direct {p1, p0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup$2;-><init>(Lmiuix/appcompat/widget/Spinner$DropdownPopup;)V

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method
