.class public Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;
.super Landroid/view/View;
.source "MiuiHeadsetTransparentAdjustView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$RecommendListener;,
        Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$TransparentLevelChangeListener;,
        Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;
    }
.end annotation


# static fields
.field private static final DBG:Ljava/lang/Boolean;


# instance fields
.field final isPrimaryUser:Z

.field private mBigPointCenterColor:I

.field private mBigPointColor:I

.field private mBigPointsRadius:F

.field private mCurrentPointIndex:I

.field private mHapticUtil:Lcom/android/settingslib/util/HapticUtil;

.field private mLabels:[Ljava/lang/String;

.field private mLastCurrentPointIndex:I

.field private mListener:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$TransparentLevelChangeListener;

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

.field private mRecommendListener:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$RecommendListener;

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
.method static bridge synthetic -$$Nest$fgetmCurrentPointIndex(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mCurrentPointIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHapticUtil(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)Lcom/android/settingslib/util/HapticUtil;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mHapticUtil:Lcom/android/settingslib/util/HapticUtil;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLabels(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mLabels:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$TransparentLevelChangeListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mListener:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$TransparentLevelChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPointCount(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVirtualPointsXList(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mVirtualPointsXList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentPointIndex(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mCurrentPointIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$misRtl(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->isRtl()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 35
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 70
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 36
    iput p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointCount:I

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mCurrentPointIndex:I

    .line 38
    iput p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mLastCurrentPointIndex:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointsXList:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mVirtualPointsXList:Ljava/util/List;

    .line 54
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->myUserId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    .line 55
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->isPrimaryUser:Z

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, v0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 36
    iput p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointCount:I

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mCurrentPointIndex:I

    .line 38
    iput p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mLastCurrentPointIndex:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointsXList:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mVirtualPointsXList:Ljava/util/List;

    .line 54
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->myUserId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    .line 55
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->isPrimaryUser:Z

    .line 76
    invoke-direct {p0, p2, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    .line 36
    iput p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointCount:I

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mCurrentPointIndex:I

    .line 38
    iput p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mLastCurrentPointIndex:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointsXList:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mVirtualPointsXList:Ljava/util/List;

    .line 54
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->myUserId:I

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 55
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->isPrimaryUser:Z

    .line 81
    invoke-direct {p0, p2, p3}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private ensurePerformHapticFeedback(I)V
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mHapticUtil:Lcom/android/settingslib/util/HapticUtil;

    invoke-virtual {p0}, Lcom/android/settingslib/util/HapticUtil;->performHapticFeedback()V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 1

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$color;->font_size_seekbar_big_pointer_blue:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mBigPointColor:I

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$color;->font_size_view_small_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mSmallPointColor:I

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$color;->font_size_view_big_center_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mBigPointCenterColor:I

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->font_size_view_small_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointsRadius:F

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->font_size_view_big_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mBigPointsRadius:F

    .line 98
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 99
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 100
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/util/HapticUtil;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/util/HapticUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mHapticUtil:Lcom/android/settingslib/util/HapticUtil;

    .line 107
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->isPrimaryUser:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 108
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    const p1, 0x3e99999a    # 0.3f

    .line 109
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private isRtl()Z
    .locals 1

    .line 206
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
    .locals 0

    .line 225
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 130
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 131
    sget-object v0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MiuiHeadsetTransparentAdjustView"

    const-string/jumbo v1, "onDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 132
    :goto_0
    iget v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointCount:I

    if-ge v0, v1, :cond_2

    .line 133
    iget v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mCurrentPointIndex:I

    if-ne v0, v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mBigPointColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointsXList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointsY:F

    iget v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mBigPointsRadius:F

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 136
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mBigPointCenterColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointsXList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointsY:F

    iget v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointsRadius:F

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mSmallPointColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointsXList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointsY:F

    iget v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointsRadius:F

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 115
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointsY:F

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointCount:I

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 121
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointsXList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 p2, 0x0

    .line 122
    :goto_0
    iget p3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointCount:I

    if-ge p2, p3, :cond_0

    .line 123
    iget-object p3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointsXList:Ljava/util/List;

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

    .line 124
    iget-object p3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mVirtualPointsXList:Ljava/util/List;

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 151
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x0

    const/high16 v2, 0x4f000000

    move v3, v2

    move v2, v0

    .line 157
    :goto_0
    iget v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointCount:I

    if-ge v0, v4, :cond_3

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointsXList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v5, v4, v3

    if-gez v5, :cond_2

    move v2, v0

    move v3, v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_3
    sget-object v0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "MiuiHeadsetTransparentAdjustView"

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentPointIndex: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mCurrentPointIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " nearestIndex: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_4
    iget v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mCurrentPointIndex:I

    if-eq v2, v3, :cond_8

    .line 173
    iput v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mCurrentPointIndex:I

    .line 174
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mListener:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$TransparentLevelChangeListener;

    if-eqz v2, :cond_7

    .line 175
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Anc level change!"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mListener:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$TransparentLevelChangeListener;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 177
    iget v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointCount:I

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mCurrentPointIndex:I

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mCurrentPointIndex:I

    .line 176
    :goto_1
    invoke-interface {v0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$TransparentLevelChangeListener;->onTransparentLevelChange(I)V

    .line 179
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->ensurePerformHapticFeedback(I)V

    :cond_8
    :goto_2
    return v1
.end method

.method public setCurrentPointIndex(I)V
    .locals 1

    .line 190
    iput p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mCurrentPointIndex:I

    .line 191
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointCount:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mCurrentPointIndex:I

    .line 194
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLastCurrentPointIndex(I)V
    .locals 1

    .line 198
    iput p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mLastCurrentPointIndex:I

    .line 199
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointCount:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mLastCurrentPointIndex:I

    .line 202
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPointCount(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 86
    iput p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mPointCount:I

    :cond_0
    return-void
.end method

.method public setRecommendListener(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$RecommendListener;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mRecommendListener:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$RecommendListener;

    return-void
.end method

.method public setTransparentLevelChangeListener(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$TransparentLevelChangeListener;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->mListener:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$TransparentLevelChangeListener;

    return-void
.end method
