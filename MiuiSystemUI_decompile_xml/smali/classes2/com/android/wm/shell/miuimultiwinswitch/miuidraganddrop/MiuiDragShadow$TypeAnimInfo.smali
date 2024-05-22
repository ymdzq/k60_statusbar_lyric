.class Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAlpha:F

.field public mAppDesRect:Landroid/graphics/Rect;

.field public mAppRadius:F

.field public mBackgroundRect:Landroid/graphics/RectF;

.field public mBottomBoardRect:Landroid/graphics/RectF;

.field public mChangeLayerRadius:[F

.field public mChangeLayerRect:Landroid/graphics/RectF;

.field public mSize:Landroid/graphics/PointF;

.field public mTextLayout:Landroid/text/StaticLayout;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mAlpha:F

    .line 4
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mSize:Landroid/graphics/PointF;

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBackgroundRect:Landroid/graphics/RectF;

    .line 6
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 7
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 8
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mChangeLayerRadius:[F

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mAppDesRect:Landroid/graphics/Rect;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;-><init>()V

    return-void
.end method
