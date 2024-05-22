.class Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final alpha:F

.field private final flags:I

.field public final lbSurfaceCornerTip:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;

.field private final mTmpValues:[F

.field public final matrix:Landroid/graphics/Matrix;

.field public final radiusX:F

.field public final radiusY:F

.field public final rbSurfaceCornerTip:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;

.field surfaceControl:Landroid/view/SurfaceControl;

.field public final surfaceStroke:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceStroke;

.field public final syncInTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final visible:Z

.field public final windowCrop:Landroid/graphics/Rect;

.field x:I

.field y:I


# direct methods
.method private constructor <init>(Landroid/view/SurfaceControl;IFIILandroid/graphics/Matrix;Landroid/graphics/Rect;FFZLandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceStroke;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 20
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->mTmpValues:[F

    .line 21
    iput p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->flags:I

    .line 22
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->surfaceControl:Landroid/view/SurfaceControl;

    .line 23
    iput p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->alpha:F

    .line 24
    iput p4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->x:I

    .line 25
    iput p5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->y:I

    .line 26
    iput-object p6, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->matrix:Landroid/graphics/Matrix;

    .line 27
    iput-object p7, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->windowCrop:Landroid/graphics/Rect;

    .line 28
    iput p8, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->radiusX:F

    .line 29
    iput p9, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->radiusY:F

    .line 30
    iput-boolean p10, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->visible:Z

    .line 31
    iput-object p11, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->syncInTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 32
    iput-object p12, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->surfaceStroke:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceStroke;

    .line 33
    iput-object p13, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->lbSurfaceCornerTip:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;

    .line 34
    iput-object p14, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->rbSurfaceCornerTip:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/SurfaceControl;IFIILandroid/graphics/Matrix;Landroid/graphics/Rect;FFZLandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceStroke;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p14}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;-><init>(Landroid/view/SurfaceControl;IFIILandroid/graphics/Matrix;Landroid/graphics/Rect;FFZLandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceStroke;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IFIILandroid/graphics/Matrix;Landroid/graphics/Rect;FFZLandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceStroke;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 4
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->mTmpValues:[F

    .line 5
    iput p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->flags:I

    .line 6
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    move-result-object p1

    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->surfaceControl:Landroid/view/SurfaceControl;

    .line 7
    iput p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->alpha:F

    .line 8
    iput p4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->x:I

    .line 9
    iput p5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->y:I

    .line 10
    iput-object p6, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->matrix:Landroid/graphics/Matrix;

    .line 11
    iput-object p7, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->windowCrop:Landroid/graphics/Rect;

    .line 12
    iput p8, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->radiusX:F

    .line 13
    iput p9, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->radiusY:F

    .line 14
    iput-boolean p10, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->visible:Z

    .line 15
    iput-object p11, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->syncInTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 16
    iput-object p12, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->surfaceStroke:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceStroke;

    .line 17
    iput-object p13, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->lbSurfaceCornerTip:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;

    .line 18
    iput-object p14, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->rbSurfaceCornerTip:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IFIILandroid/graphics/Matrix;Landroid/graphics/Rect;FFZLandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceStroke;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;I)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p14}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IFIILandroid/graphics/Matrix;Landroid/graphics/Rect;FFZLandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceStroke;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;)V

    return-void
.end method


# virtual methods
.method public sync(Landroid/view/SurfaceControl$Transaction;)V
    .locals 9

    .line 1
    iget-object v8, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->surfaceControl:Landroid/view/SurfaceControl;

    .line 2
    if-eqz v8, :cond_b

    .line 4
    invoke-virtual {v8}, Landroid/view/SurfaceControl;->isValid()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    goto/16 :goto_0

    .line 12
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->flags:I

    .line 14
    and-int/lit16 v0, v0, 0x80

    .line 16
    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->syncInTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 22
    :cond_1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->flags:I

    .line 25
    and-int/lit8 v0, v0, 0x2

    .line 27
    if-eqz v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->matrix:Landroid/graphics/Matrix;

    .line 31
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->mTmpValues:[F

    .line 33
    invoke-virtual {p1, v8, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 35
    :cond_2
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->flags:I

    .line 38
    and-int/lit8 v0, v0, 0x8

    .line 40
    if-eqz v0, :cond_3

    .line 42
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->x:I

    .line 44
    int-to-float v0, v0

    .line 46
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->y:I

    .line 47
    int-to-float v1, v1

    .line 49
    invoke-virtual {p1, v8, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 50
    :cond_3
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->flags:I

    .line 53
    and-int/lit8 v0, v0, 0x4

    .line 55
    if-eqz v0, :cond_4

    .line 57
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->windowCrop:Landroid/graphics/Rect;

    .line 59
    invoke-virtual {p1, v8, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 61
    :cond_4
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->flags:I

    .line 64
    and-int/lit8 v0, v0, 0x1

    .line 66
    if-eqz v0, :cond_5

    .line 68
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->alpha:F

    .line 70
    invoke-virtual {p1, v8, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 72
    :cond_5
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->flags:I

    .line 75
    and-int/lit8 v0, v0, 0x10

    .line 77
    if-eqz v0, :cond_6

    .line 79
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->radiusX:F

    .line 81
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->radiusY:F

    .line 83
    invoke-virtual {p1, v8, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 85
    :cond_6
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->flags:I

    .line 88
    and-int/lit16 v0, v0, 0x100

    .line 90
    if-eqz v0, :cond_7

    .line 92
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->surfaceStroke:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceStroke;

    .line 94
    if-eqz v0, :cond_7

    .line 96
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceStroke;->strokeColors:[F

    .line 98
    iget v2, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceStroke;->strokeAlpha:F

    .line 100
    iget v0, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceStroke;->strokeThickness:F

    .line 102
    invoke-virtual {p1, v8, v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setSurfaceStroke(Landroid/view/SurfaceControl;[FFF)Landroid/view/SurfaceControl$Transaction;

    .line 104
    :cond_7
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->flags:I

    .line 107
    and-int/lit16 v0, v0, 0x200

    .line 109
    if-eqz v0, :cond_8

    .line 111
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->lbSurfaceCornerTip:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;

    .line 113
    if-eqz v0, :cond_8

    .line 115
    iget v2, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;->tipsDistance:F

    .line 117
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;->tipsColors:[F

    .line 119
    iget v4, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;->tipsAlpha:F

    .line 121
    iget v5, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;->tipsThickness:F

    .line 123
    iget v6, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;->tipsRadius:F

    .line 125
    iget v7, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;->tipsDegreeRange:F

    .line 127
    move-object v0, p1

    .line 129
    move-object v1, v8

    .line 130
    invoke-virtual/range {v0 .. v7}, Landroid/view/SurfaceControl$Transaction;->setLeftBottomCornerTip(Landroid/view/SurfaceControl;F[FFFFF)Landroid/view/SurfaceControl$Transaction;

    .line 131
    :cond_8
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->flags:I

    .line 134
    and-int/lit16 v0, v0, 0x400

    .line 136
    if-eqz v0, :cond_9

    .line 138
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->rbSurfaceCornerTip:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;

    .line 140
    if-eqz v0, :cond_9

    .line 142
    iget v2, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;->tipsDistance:F

    .line 144
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;->tipsColors:[F

    .line 146
    iget v4, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;->tipsAlpha:F

    .line 148
    iget v5, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;->tipsThickness:F

    .line 150
    iget v6, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;->tipsRadius:F

    .line 152
    iget v7, v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceCornerTip;->tipsDegreeRange:F

    .line 154
    move-object v0, p1

    .line 156
    move-object v1, v8

    .line 157
    invoke-virtual/range {v0 .. v7}, Landroid/view/SurfaceControl$Transaction;->setRightBottomCornerTip(Landroid/view/SurfaceControl;F[FFFFF)Landroid/view/SurfaceControl$Transaction;

    .line 158
    :cond_9
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->flags:I

    .line 161
    and-int/lit8 v0, v0, 0x40

    .line 163
    if-eqz v0, :cond_b

    .line 165
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->visible:Z

    .line 167
    if-eqz p0, :cond_a

    .line 169
    invoke-virtual {p1, v8}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 171
    goto :goto_0

    .line 174
    :cond_a
    invoke-virtual {p1, v8}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 175
    :cond_b
    :goto_0
    return-void
    .line 178
.end method
