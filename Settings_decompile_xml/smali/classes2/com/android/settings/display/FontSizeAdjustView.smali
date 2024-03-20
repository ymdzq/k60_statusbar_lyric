.class public Lcom/android/settings/display/FontSizeAdjustView;
.super Landroid/view/View;
.source "FontSizeAdjustView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/FontSizeAdjustView$RecommendListener;,
        Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;,
        Lcom/android/settings/display/FontSizeAdjustView$FontSizeChangeListener;
    }
.end annotation


# instance fields
.field final isPrimaryUser:Z

.field private mAccessHelper:Landroidx/customview/widget/ExploreByTouchHelper;

.field private mBigPointCenterColor:I

.field private mBigPointColor:I

.field private mBigPointsRadius:F

.field private mCurrentPointIndex:I

.field private mHapticUtil:Lcom/android/settingslib/util/HapticUtil;

.field private mLabels:[Ljava/lang/String;

.field private mLastCurrentPointIndex:I

.field private mListener:Lcom/android/settings/display/FontSizeAdjustView$FontSizeChangeListener;

.field private mPointCount:I

.field private mPointPaint:Landroid/graphics/Paint;

.field private mPointsRadius:F

.field private mPointsXList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPointsY:F

.field private mRecommendListener:Lcom/android/settings/display/FontSizeAdjustView$RecommendListener;

.field private mSmallPointColor:I

.field private mVirtualPointsXList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final myUserId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentPointIndex(Lcom/android/settings/display/FontSizeAdjustView;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/display/FontSizeAdjustView;->mCurrentPointIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHapticUtil(Lcom/android/settings/display/FontSizeAdjustView;)Lcom/android/settingslib/util/HapticUtil;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/FontSizeAdjustView;->mHapticUtil:Lcom/android/settingslib/util/HapticUtil;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLabels(Lcom/android/settings/display/FontSizeAdjustView;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/FontSizeAdjustView;->mLabels:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastCurrentPointIndex(Lcom/android/settings/display/FontSizeAdjustView;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/display/FontSizeAdjustView;->mLastCurrentPointIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/android/settings/display/FontSizeAdjustView;)Lcom/android/settings/display/FontSizeAdjustView$FontSizeChangeListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/FontSizeAdjustView;->mListener:Lcom/android/settings/display/FontSizeAdjustView$FontSizeChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPointCount(Lcom/android/settings/display/FontSizeAdjustView;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecommendListener(Lcom/android/settings/display/FontSizeAdjustView;)Lcom/android/settings/display/FontSizeAdjustView$RecommendListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/FontSizeAdjustView;->mRecommendListener:Lcom/android/settings/display/FontSizeAdjustView$RecommendListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVirtualPointsXList(Lcom/android/settings/display/FontSizeAdjustView;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/FontSizeAdjustView;->mVirtualPointsXList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentPointIndex(Lcom/android/settings/display/FontSizeAdjustView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mCurrentPointIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastCurrentPointIndex(Lcom/android/settings/display/FontSizeAdjustView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mLastCurrentPointIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$misRtl(Lcom/android/settings/display/FontSizeAdjustView;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/FontSizeAdjustView;->isRtl()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 68
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x6

    .line 33
    iput p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointCount:I

    const/4 p1, 0x1

    .line 34
    iput p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mCurrentPointIndex:I

    .line 35
    iput p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mLastCurrentPointIndex:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointsXList:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/FontSizeAdjustView;->mVirtualPointsXList:Ljava/util/List;

    .line 51
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/FontSizeAdjustView;->myUserId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 52
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->isPrimaryUser:Z

    const/4 p1, 0x0

    .line 69
    invoke-direct {p0, p1, v1}, Lcom/android/settings/display/FontSizeAdjustView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x6

    .line 33
    iput p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointCount:I

    const/4 p1, 0x1

    .line 34
    iput p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mCurrentPointIndex:I

    .line 35
    iput p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mLastCurrentPointIndex:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointsXList:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/FontSizeAdjustView;->mVirtualPointsXList:Ljava/util/List;

    .line 51
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/FontSizeAdjustView;->myUserId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 52
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->isPrimaryUser:Z

    .line 74
    invoke-direct {p0, p2, v1}, Lcom/android/settings/display/FontSizeAdjustView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x6

    .line 33
    iput p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointCount:I

    const/4 p1, 0x1

    .line 34
    iput p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mCurrentPointIndex:I

    .line 35
    iput p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mLastCurrentPointIndex:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointsXList:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/FontSizeAdjustView;->mVirtualPointsXList:Ljava/util/List;

    .line 51
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/FontSizeAdjustView;->myUserId:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 52
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->isPrimaryUser:Z

    .line 79
    invoke-direct {p0, p2, p3}, Lcom/android/settings/display/FontSizeAdjustView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private ensurePerformHapticFeedback(I)V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/settings/display/FontSizeAdjustView;->mHapticUtil:Lcom/android/settingslib/util/HapticUtil;

    invoke-virtual {p0}, Lcom/android/settingslib/util/HapticUtil;->performHapticFeedback()V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 1

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$color;->font_size_seekbar_big_pointer_blue:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mBigPointColor:I

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$color;->font_size_view_small_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mSmallPointColor:I

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$color;->font_size_view_big_center_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mBigPointCenterColor:I

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->font_size_view_small_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointsRadius:F

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->font_size_view_big_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mBigPointsRadius:F

    .line 96
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 97
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    iget-object p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    iget-object p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/util/HapticUtil;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/util/HapticUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mHapticUtil:Lcom/android/settingslib/util/HapticUtil;

    .line 102
    new-instance p1, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;

    invoke-direct {p1, p0, p0}, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;-><init>(Lcom/android/settings/display/FontSizeAdjustView;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mAccessHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    .line 103
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/display/ScreenZoomUtils;->getEntriesFontSize(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mLabels:[Ljava/lang/String;

    .line 105
    iget-boolean p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->isPrimaryUser:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 106
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    const p1, 0x3e99999a    # 0.3f

    .line 107
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private isRtl()Z
    .locals 1

    .line 210
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/android/settings/display/FontSizeAdjustView;->mAccessHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 128
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    .line 130
    :goto_0
    iget v1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointCount:I

    if-ge v0, v1, :cond_1

    .line 131
    iget v1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mCurrentPointIndex:I

    if-ne v0, v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings/display/FontSizeAdjustView;->mBigPointColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget-object v1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointsXList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointsY:F

    iget v3, p0, Lcom/android/settings/display/FontSizeAdjustView;->mBigPointsRadius:F

    iget-object v4, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 134
    iget-object v1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings/display/FontSizeAdjustView;->mBigPointCenterColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object v1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointsXList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointsY:F

    iget v3, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointsRadius:F

    iget-object v4, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings/display/FontSizeAdjustView;->mSmallPointColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    iget-object v1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointsXList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointsY:F

    iget v3, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointsRadius:F

    iget-object v4, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 113
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointsY:F

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointCount:I

    add-int/lit8 p2, p2, -0x1

    div-int/2addr p1, p2

    int-to-float p1, p1

    .line 119
    iget-object p2, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointsXList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 p2, 0x0

    .line 120
    :goto_0
    iget p3, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointCount:I

    if-ge p2, p3, :cond_0

    .line 121
    iget-object p3, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointsXList:Ljava/util/List;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    int-to-float p5, p2

    mul-float/2addr p5, p1

    add-float/2addr p4, p5

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object p3, p0, Lcom/android/settings/display/FontSizeAdjustView;->mVirtualPointsXList:Ljava/util/List;

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 149
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v2, 0x0

    const/high16 v3, 0x4f000000

    move v4, v3

    move v3, v2

    .line 157
    :goto_0
    iget v5, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointCount:I

    if-ge v2, v5, :cond_3

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointsXList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v6, v5, v4

    if-gez v6, :cond_2

    move v3, v2

    move v4, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    :cond_3
    iget v2, p0, Lcom/android/settings/display/FontSizeAdjustView;->mCurrentPointIndex:I

    if-eq v3, v2, :cond_6

    .line 165
    iput v3, p0, Lcom/android/settings/display/FontSizeAdjustView;->mCurrentPointIndex:I

    .line 166
    iget-object v2, p0, Lcom/android/settings/display/FontSizeAdjustView;->mListener:Lcom/android/settings/display/FontSizeAdjustView$FontSizeChangeListener;

    if-eqz v2, :cond_5

    .line 167
    invoke-direct {p0}, Lcom/android/settings/display/FontSizeAdjustView;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 168
    iget v3, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointCount:I

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/android/settings/display/FontSizeAdjustView;->mCurrentPointIndex:I

    sub-int/2addr v3, v4

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/android/settings/display/FontSizeAdjustView;->mCurrentPointIndex:I

    .line 167
    :goto_1
    invoke-interface {v2, v3}, Lcom/android/settings/display/FontSizeAdjustView$FontSizeChangeListener;->onSizeChange(I)V

    .line 170
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/display/FontSizeAdjustView;->ensurePerformHapticFeedback(I)V

    :cond_6
    if-ne v1, v0, :cond_9

    .line 173
    iget-object p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mRecommendListener:Lcom/android/settings/display/FontSizeAdjustView$RecommendListener;

    if-eqz p1, :cond_9

    .line 175
    invoke-direct {p0}, Lcom/android/settings/display/FontSizeAdjustView;->isRtl()Z

    move-result p1

    const/4 v0, 0x5

    if-eqz p1, :cond_7

    .line 176
    iget p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointCount:I

    sub-int/2addr p1, v1

    add-int/lit8 v0, p1, -0x5

    .line 177
    :cond_7
    iget p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mCurrentPointIndex:I

    if-ne p1, v0, :cond_8

    .line 178
    iput p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mLastCurrentPointIndex:I

    .line 179
    iget-object p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mRecommendListener:Lcom/android/settings/display/FontSizeAdjustView$RecommendListener;

    invoke-interface {p1}, Lcom/android/settings/display/FontSizeAdjustView$RecommendListener;->showRecommendLayout()V

    .line 181
    :cond_8
    iget p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mLastCurrentPointIndex:I

    if-ne p1, v0, :cond_9

    iget p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mCurrentPointIndex:I

    if-eq p1, v0, :cond_9

    .line 182
    iput p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mLastCurrentPointIndex:I

    .line 183
    iget-object p0, p0, Lcom/android/settings/display/FontSizeAdjustView;->mRecommendListener:Lcom/android/settings/display/FontSizeAdjustView$RecommendListener;

    invoke-interface {p0}, Lcom/android/settings/display/FontSizeAdjustView$RecommendListener;->scrollViewToHideRecommend()V

    :cond_9
    :goto_2
    return v1
.end method

.method public setCurrentPointIndex(I)V
    .locals 1

    .line 194
    iput p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mCurrentPointIndex:I

    .line 195
    invoke-direct {p0}, Lcom/android/settings/display/FontSizeAdjustView;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget v0, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointCount:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/display/FontSizeAdjustView;->mCurrentPointIndex:I

    .line 198
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFontSizeChangeListener(Lcom/android/settings/display/FontSizeAdjustView$FontSizeChangeListener;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mListener:Lcom/android/settings/display/FontSizeAdjustView$FontSizeChangeListener;

    return-void
.end method

.method public setLastCurrentPointIndex(I)V
    .locals 1

    .line 202
    iput p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mLastCurrentPointIndex:I

    .line 203
    invoke-direct {p0}, Lcom/android/settings/display/FontSizeAdjustView;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget v0, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointCount:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/display/FontSizeAdjustView;->mLastCurrentPointIndex:I

    .line 206
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPointCount(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 84
    iput p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mPointCount:I

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/display/ScreenZoomUtils;->getEntries(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mLabels:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setRecommendListener(Lcom/android/settings/display/FontSizeAdjustView$RecommendListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/settings/display/FontSizeAdjustView;->mRecommendListener:Lcom/android/settings/display/FontSizeAdjustView$RecommendListener;

    return-void
.end method
