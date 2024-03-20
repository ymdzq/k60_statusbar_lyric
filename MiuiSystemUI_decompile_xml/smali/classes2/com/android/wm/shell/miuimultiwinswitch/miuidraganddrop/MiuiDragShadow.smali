.class public Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field static final TYPE_FREEFORM_UNSUPPORTED:I = 0x5

.field static final TYPE_SPLIT_UNSUPPORTED:I = 0x4


# instance fields
.field private final mAnimExecutor:Ljava/util/concurrent/Executor;

.field private mAnimator:Lmiuix/animation/IStateStyle;

.field private final mAppBitmap:Landroid/graphics/Bitmap;

.field private final mAppDesRectF:Landroid/graphics/RectF;

.field private final mAppLargeRadius:F

.field private final mAppLayerFreeformRatio:F

.field private final mAppLayerRatio:F

.field private final mAppMediumRadius:F

.field private final mAppSmallRadius:F

.field private final mAppSourceRect:Landroid/graphics/Rect;

.field private final mBBQ:Landroid/graphics/BLASTBufferQueue;

.field private final mBackgroundBlurRadius:F

.field private final mBackgroundRadius:F

.field private final mBlurRenderNode:Landroid/graphics/RenderNode;

.field private final mBottomBoardRadius:F

.field private final mChangLayerColor:I

.field private final mChangeLargeRadius:F

.field private final mChangeLayerFreeformHeightRatio:F

.field private final mChangeLayerFreeformWidthRatio:F

.field private final mChangeLayerRatio:F

.field private final mChangeMediumRadius:F

.field private final mChangeSmallRadius:F

.field private mChoreographer:Landroid/view/Choreographer;

.field private final mContext:Landroid/content/Context;

.field private final mCopyAppBitmap:Landroid/graphics/Bitmap;

.field private mDestroyed:Z

.field private mDrawScheduled:Z

.field private mFinalAnimationStarted:Z

.field private final mFolmeControl:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;

.field private final mFreeformRect:Landroid/graphics/RectF;

.field private final mFreeformScale:F

.field private final mFreeformStaticLayout:Landroid/text/StaticLayout;

.field private final mFreeformUnsupportedStaticLayout:Landroid/text/StaticLayout;

.field private final mFullscreenStaticLayout:Landroid/text/StaticLayout;

.field private final mIconMarginBottom:F

.field private final mIconRect:Landroid/graphics/Rect;

.field private final mIconSize:F

.field private mLastDrawFrame:J

.field private final mLaunchPackageName:Ljava/lang/String;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private final mRenderNode:Landroid/graphics/RenderNode;

.field private final mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

.field private final mRootRenderNode:Landroid/graphics/RenderNode;

.field private final mScreenHeight:I

.field private final mScreenWidth:I

.field private final mSplitLeftStaticLayout:Landroid/text/StaticLayout;

.field private final mSplitRightStaticLayout:Landroid/text/StaticLayout;

.field private final mSplitUnsupportedStaticLayout:Landroid/text/StaticLayout;

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mTextWidth:F

.field private final mTouchOffset:Landroid/graphics/PointF;

.field private final mTouchPosition:Landroid/graphics/PointF;

.field private mType:I

.field private final mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

.field mTypeChange:Z


# direct methods
.method public static synthetic $r8$lambda$4ZSluBDEtqrdYQBHjREjOSwayzA(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->lambda$postSetTouchPosition$1(FF)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$6OgIqnDqKTeLgL4YUUPCuclRems(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;Landroid/graphics/RectF;Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$SyncCallback;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->lambda$postAnimateToRect$8(Landroid/graphics/RectF;Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$SyncCallback;Ljava/lang/Runnable;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$9UMeHdWt9miMMYHZtQJIORCDUDI(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->lambda$postDestroySurface$11(Landroid/view/SurfaceControl$Transaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$9VlQII8G_-usrVK37eKQfik3Yk4(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->lambda$postAnimateToStart$6(Ljava/lang/Runnable;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$AFapk7reS8raYH7yw8s0gml5w94(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$SyncCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->lambda$animateToRect$10(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$SyncCallback;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$V5o32LKFXQgqcsYHguf1KiMtjVM(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->lambda$new$0()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$VrHFaCI7IwPL1OA8vDOxsAwKd3s(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->lambda$animateToStart$7(Ljava/lang/Runnable;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$a-KQkucIf7nWrNFedpkDBa1dReM(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->lambda$animateToHide$5(Ljava/lang/Runnable;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$a5CEdm-EW-zKJNwP_Z7FryfiKFk(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->lambda$postAnimateToHide$4(Ljava/lang/Runnable;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$gSvzm0Uyv9RNj-7rZrPIM9k9si8(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->lambda$draw$2(J)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$r7U1k-HVteZAOCu7nU6zY3_cg1s(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->lambda$postAnimateToType$3(I)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$rgdhqPbwGVkxtgDUn6peEX2Rbjs(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->draw()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$uqIzeAunw49t45uMUlRrWCPdFLM([ILjava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->lambda$animateToRect$9([ILjava/lang/Runnable;)V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$fgetmDestroyed(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mDestroyed:Z

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmFolmeControl(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;)Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mFolmeControl:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmSurfaceControl(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;)Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmTypeAnimInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;)Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$mdrawContent(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->drawContent()V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$mmergeWithNextDraw(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mergeWithNextDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$mscheduleDraw(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->scheduleDraw()V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/SurfaceControl;Landroid/graphics/PointF;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/util/concurrent/Executor;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    move-object/from16 v3, p4

    .line 8
    move-object/from16 v4, p5

    .line 10
    move-object/from16 v5, p7

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const v6, 0x3f666666    # 0.9f

    .line 17
    iput v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mChangeLayerRatio:F

    .line 20
    const v6, 0x3ebbbbbc

    .line 22
    iput v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAppLayerRatio:F

    .line 25
    const v6, 0x3e6eeeef

    .line 27
    iput v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAppLayerFreeformRatio:F

    .line 30
    const v6, 0x3eddddde

    .line 32
    iput v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mChangeLayerFreeformWidthRatio:F

    .line 35
    const v6, 0x3f19999a    # 0.6f

    .line 37
    iput v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mChangeLayerFreeformHeightRatio:F

    .line 40
    const/4 v6, 0x0

    .line 42
    iput-boolean v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeChange:Z

    .line 43
    new-instance v7, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 45
    invoke-direct {v7, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;-><init>(I)V

    .line 47
    iput-object v7, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 50
    new-instance v7, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;

    .line 52
    invoke-direct {v7, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;-><init>(I)V

    .line 54
    iput-object v7, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mFolmeControl:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;

    .line 57
    new-instance v8, Landroid/graphics/Paint;

    .line 59
    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 61
    iput-object v8, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mPaint:Landroid/graphics/Paint;

    .line 64
    new-instance v8, Landroid/graphics/Path;

    .line 66
    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 68
    iput-object v8, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mPath:Landroid/graphics/Path;

    .line 71
    new-instance v8, Landroid/graphics/RectF;

    .line 73
    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 75
    iput-object v8, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAppDesRectF:Landroid/graphics/RectF;

    .line 78
    new-instance v8, Landroid/graphics/RectF;

    .line 80
    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 82
    iput-object v8, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mFreeformRect:Landroid/graphics/RectF;

    .line 85
    iput-boolean v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mDrawScheduled:Z

    .line 87
    iput-boolean v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mFinalAnimationStarted:Z

    .line 89
    iput-boolean v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mDestroyed:Z

    .line 91
    new-instance v9, Landroid/graphics/RenderNode;

    .line 93
    const-string v10, "MiuiDragShadow"

    .line 95
    invoke-direct {v9, v10}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    .line 97
    iput-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mRenderNode:Landroid/graphics/RenderNode;

    .line 100
    new-instance v9, Landroid/graphics/RenderNode;

    .line 102
    const-string v10, "MiuiDragShadowRoot"

    .line 104
    invoke-direct {v9, v10}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    .line 106
    iput-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mRootRenderNode:Landroid/graphics/RenderNode;

    .line 109
    new-instance v10, Landroid/graphics/RenderNode;

    .line 111
    const-string v11, "MiuiDragShadowBlur"

    .line 113
    invoke-direct {v10, v11}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    .line 115
    iput-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mBlurRenderNode:Landroid/graphics/RenderNode;

    .line 118
    const-wide/16 v10, -0x1

    .line 120
    iput-wide v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mLastDrawFrame:J

    .line 122
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mContext:Landroid/content/Context;

    .line 124
    iput-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mLaunchPackageName:Ljava/lang/String;

    .line 126
    new-instance v10, Landroid/graphics/Point;

    .line 128
    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 133
    move-result-object v11

    .line 136
    invoke-virtual {v11, v10}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 137
    iget v15, v10, Landroid/graphics/Point;->x:I

    .line 140
    iput v15, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mScreenWidth:I

    .line 142
    iget v10, v10, Landroid/graphics/Point;->y:I

    .line 144
    iput v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mScreenHeight:I

    .line 146
    move-object/from16 v11, p3

    .line 148
    iput-object v11, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 150
    new-instance v14, Landroid/graphics/BLASTBufferQueue;

    .line 152
    const-string v13, "MiuiDragShadowBBQ"

    .line 154
    const/16 v17, -0x3

    .line 156
    move-object v12, v14

    .line 158
    move-object v6, v14

    .line 159
    move-object/from16 v14, p3

    .line 160
    move/from16 v16, v10

    .line 162
    invoke-direct/range {v12 .. v17}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Landroid/view/SurfaceControl;III)V

    .line 164
    iput-object v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    .line 167
    invoke-virtual {v6}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    .line 169
    move-result-object v6

    .line 172
    iput-object v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mSurface:Landroid/view/Surface;

    .line 173
    new-instance v10, Landroid/view/ThreadedRenderer$SimpleRenderer;

    .line 175
    const-string v11, "MiuiDragShadowRender"

    .line 177
    invoke-direct {v10, v1, v11, v6}, Landroid/view/ThreadedRenderer$SimpleRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V

    .line 179
    iput-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    .line 182
    invoke-virtual {v10, v9}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setContentRoot(Landroid/graphics/RenderNode;)V

    .line 184
    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTouchPosition:Landroid/graphics/PointF;

    .line 187
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 189
    iput v6, v7, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->positionX:F

    .line 191
    iget v6, v3, Landroid/graphics/PointF;->y:F

    .line 193
    iput v6, v7, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->positionY:F

    .line 195
    new-instance v6, Landroid/graphics/PointF;

    .line 197
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->exactCenterX()F

    .line 199
    move-result v7

    .line 202
    iget v9, v3, Landroid/graphics/PointF;->x:F

    .line 203
    sub-float/2addr v7, v9

    .line 205
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->exactCenterY()F

    .line 206
    move-result v9

    .line 209
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 210
    sub-float/2addr v9, v3

    .line 212
    invoke-direct {v6, v7, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 213
    iput-object v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTouchOffset:Landroid/graphics/PointF;

    .line 216
    iput-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAppBitmap:Landroid/graphics/Bitmap;

    .line 218
    const-string v3, "primary20"

    .line 220
    invoke-static {v4, v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getBitmapDominantColor(Landroid/graphics/Bitmap;Ljava/lang/String;)I

    .line 222
    move-result v3

    .line 225
    const/16 v6, 0x33

    .line 226
    invoke-static {v3, v6}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 228
    move-result v3

    .line 231
    iput v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mChangLayerColor:I

    .line 232
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 234
    const/4 v6, 0x1

    .line 236
    invoke-virtual {v4, v3, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 237
    move-result-object v3

    .line 240
    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mCopyAppBitmap:Landroid/graphics/Bitmap;

    .line 241
    new-instance v7, Landroid/graphics/Canvas;

    .line 243
    invoke-direct {v7, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 245
    const v3, -0xf000001

    .line 248
    invoke-virtual {v7, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 251
    new-instance v3, Landroid/graphics/Rect;

    .line 254
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 256
    move-result v7

    .line 259
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 260
    move-result v4

    .line 263
    const/4 v9, 0x0

    .line 264
    invoke-direct {v3, v9, v9, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 265
    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAppSourceRect:Landroid/graphics/Rect;

    .line 268
    move-object/from16 v3, p6

    .line 270
    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mIconRect:Landroid/graphics/Rect;

    .line 272
    iput-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAnimExecutor:Ljava/util/concurrent/Executor;

    .line 274
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 276
    move-result-object v3

    .line 279
    const v4, 0x7f0702ed    # @dimen/drag_shadow_icon_size '48.0dp'

    .line 280
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 283
    move-result v4

    .line 286
    iput v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mIconSize:F

    .line 287
    const v4, 0x7f0702ec    # @dimen/drag_shadow_icon_margin_bottom '8.0dp'

    .line 289
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 292
    move-result v4

    .line 295
    iput v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mIconMarginBottom:F

    .line 296
    const v4, 0x7f0702f0    # @dimen/drag_shadow_text_width '120.0dp'

    .line 298
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 301
    move-result v4

    .line 304
    iput v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTextWidth:F

    .line 305
    const v4, 0x7f0702e8    # @dimen/drag_shadow_bottom_board_radius '15.0dp'

    .line 307
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 310
    move-result v4

    .line 313
    iput v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mBottomBoardRadius:F

    .line 314
    const v4, 0x7f0702e9    # @dimen/drag_shadow_change_large_radius '12.0dp'

    .line 316
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 319
    move-result v4

    .line 322
    iput v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mChangeLargeRadius:F

    .line 323
    const v4, 0x7f0702ea    # @dimen/drag_shadow_change_medium_radius '5.0dp'

    .line 325
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 328
    move-result v4

    .line 331
    iput v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mChangeMediumRadius:F

    .line 332
    const v4, 0x7f0702eb    # @dimen/drag_shadow_change_small_radius '3.0dp'

    .line 334
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 337
    move-result v4

    .line 340
    iput v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mChangeSmallRadius:F

    .line 341
    const v4, 0x7f0702e3    # @dimen/drag_shadow_app_large_radius '12.0dp'

    .line 343
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 346
    move-result v4

    .line 349
    iput v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAppLargeRadius:F

    .line 350
    const v4, 0x7f0702e4    # @dimen/drag_shadow_app_medium_radius '5.0dp'

    .line 352
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 355
    move-result v4

    .line 358
    iput v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAppMediumRadius:F

    .line 359
    const v4, 0x7f0702e5    # @dimen/drag_shadow_app_small_radius '3.0dp'

    .line 361
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 364
    move-result v4

    .line 367
    iput v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAppSmallRadius:F

    .line 368
    const v4, 0x7f0702e7    # @dimen/drag_shadow_background_radius '12.0dp'

    .line 370
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 373
    move-result v4

    .line 376
    iput v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mBackgroundRadius:F

    .line 377
    const v4, 0x7f0702e6    # @dimen/drag_shadow_background_blur_radius '126.39dp'

    .line 379
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 382
    move-result v4

    .line 385
    iput v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mBackgroundBlurRadius:F

    .line 386
    const v4, 0x7f1303ac    # @string/drag_shadow_fullscreen_open 'Full screen'

    .line 388
    invoke-direct {v0, v3, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->createStaticLayout(Landroid/content/res/Resources;I)Landroid/text/StaticLayout;

    .line 391
    move-result-object v4

    .line 394
    iput-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mFullscreenStaticLayout:Landroid/text/StaticLayout;

    .line 395
    const v4, 0x7f1303a9    # @string/drag_shadow_freeform_open 'Floating window'

    .line 397
    invoke-direct {v0, v3, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->createStaticLayout(Landroid/content/res/Resources;I)Landroid/text/StaticLayout;

    .line 400
    move-result-object v4

    .line 403
    iput-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mFreeformStaticLayout:Landroid/text/StaticLayout;

    .line 404
    const v4, 0x7f1303ae    # @string/drag_shadow_split_left_open 'Split screen (Left)'

    .line 406
    invoke-direct {v0, v3, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->createStaticLayout(Landroid/content/res/Resources;I)Landroid/text/StaticLayout;

    .line 409
    move-result-object v4

    .line 412
    iput-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mSplitLeftStaticLayout:Landroid/text/StaticLayout;

    .line 413
    const v4, 0x7f1303af    # @string/drag_shadow_split_right_open 'Split screen (Right)'

    .line 415
    invoke-direct {v0, v3, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->createStaticLayout(Landroid/content/res/Resources;I)Landroid/text/StaticLayout;

    .line 418
    move-result-object v4

    .line 421
    iput-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mSplitRightStaticLayout:Landroid/text/StaticLayout;

    .line 422
    const v4, 0x7f1303aa    # @string/drag_shadow_freeform_unsupported 'Floating windows aren't supported'

    .line 424
    invoke-direct {v0, v3, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->createStaticLayout(Landroid/content/res/Resources;I)Landroid/text/StaticLayout;

    .line 427
    move-result-object v4

    .line 430
    iput-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mFreeformUnsupportedStaticLayout:Landroid/text/StaticLayout;

    .line 431
    const v4, 0x7f1303b1    # @string/drag_shadow_split_unsupported 'Split screen isn't supported'

    .line 433
    invoke-direct {v0, v3, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->createStaticLayout(Landroid/content/res/Resources;I)Landroid/text/StaticLayout;

    .line 436
    move-result-object v3

    .line 439
    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mSplitUnsupportedStaticLayout:Landroid/text/StaticLayout;

    .line 440
    new-instance v3, Landroid/content/Intent;

    .line 442
    const-string v4, "android.intent.action.MAIN"

    .line 444
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    const-string v4, "android.intent.category.LAUNCHER"

    .line 449
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 457
    move-result-object v4

    .line 460
    const/4 v7, 0x0

    .line 461
    invoke-virtual {v4, v3, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 462
    move-result-object v3

    .line 465
    if-eqz v3, :cond_0

    .line 466
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 468
    iget v3, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 470
    goto :goto_0

    .line 472
    :cond_0
    const/4 v3, -0x1

    .line 473
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->isLandscape(Landroid/content/Context;)Z

    .line 474
    move-result v4

    .line 477
    invoke-static {v1, v2, v3, v4, v8}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getFreeformBoundsAndScale(Landroid/content/Context;Ljava/lang/String;IZLandroid/graphics/RectF;)F

    .line 478
    move-result v1

    .line 481
    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mFreeformScale:F

    .line 482
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda1;

    .line 484
    invoke-direct {v1, v0, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;I)V

    .line 486
    invoke-interface {v5, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 489
    return-void
    .line 492
.end method

.method private animateToHide(Ljava/lang/Runnable;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->getTopLeft()Landroid/graphics/PointF;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mFinalAnimationStarted:Z

    .line 7
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAnimator:Lmiuix/animation/IStateStyle;

    .line 9
    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 11
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 13
    iget-object v4, v4, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBackgroundRect:Landroid/graphics/RectF;

    .line 15
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 17
    move-result v4

    .line 20
    const/high16 v5, 0x40000000    # 2.0f

    .line 21
    div-float/2addr v4, v5

    .line 23
    add-float/2addr v4, v3

    .line 24
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    move-result-object v3

    .line 28
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 29
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 31
    iget-object v4, v4, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBackgroundRect:Landroid/graphics/RectF;

    .line 33
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 35
    move-result v4

    .line 38
    div-float/2addr v4, v5

    .line 39
    add-float/2addr v4, v0

    .line 40
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 41
    move-result-object v0

    .line 44
    const-string v4, "positionX"

    .line 45
    const-string v5, "positionY"

    .line 47
    filled-new-array {v4, v3, v5, v0}, [Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 52
    invoke-interface {v2, v0}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 53
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 56
    const/4 v2, 0x0

    .line 58
    invoke-direct {v0, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;-><init>(I)V

    .line 59
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mFolmeControl:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;

    .line 62
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->toTypeAnimInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;)V

    .line 64
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 67
    iget-object v3, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mTextLayout:Landroid/text/StaticLayout;

    .line 69
    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mTextLayout:Landroid/text/StaticLayout;

    .line 71
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBackgroundRect:Landroid/graphics/RectF;

    .line 73
    iget v4, v3, Landroid/graphics/RectF;->right:F

    .line 75
    const v5, 0x3f4ccccd    # 0.8f

    .line 77
    mul-float/2addr v4, v5

    .line 80
    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 81
    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 83
    mul-float/2addr v4, v5

    .line 85
    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 86
    const/4 v3, 0x0

    .line 88
    iput v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mAlpha:F

    .line 89
    new-instance v3, Lmiuix/animation/base/AnimConfig;

    .line 91
    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 93
    new-instance v4, Lmiuix/animation/base/AnimSpecialConfig;

    .line 96
    invoke-direct {v4}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 98
    new-array v1, v1, [F

    .line 101
    const/high16 v5, 0x43160000    # 150.0f

    .line 103
    aput v5, v1, v2

    .line 105
    const/16 v2, 0xf

    .line 107
    invoke-virtual {v4, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 109
    move-result-object v1

    .line 112
    check-cast v1, Lmiuix/animation/base/AnimSpecialConfig;

    .line 113
    const-string v2, "alpha"

    .line 115
    invoke-virtual {v3, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 117
    move-result-object v1

    .line 120
    new-instance v2, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda2;

    .line 121
    const/4 v3, 0x3

    .line 123
    invoke-direct {v2, p0, p1, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;Ljava/lang/Runnable;I)V

    .line 124
    const/4 p1, 0x0

    .line 127
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->animateToInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;Lmiuix/animation/base/AnimConfig;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 128
    return-void
    .line 131
.end method

.method private animateToInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;Lmiuix/animation/base/AnimConfig;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 62

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 6
    iget-object v3, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mTextLayout:Landroid/text/StaticLayout;

    .line 8
    iput-object v3, v2, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mTextLayout:Landroid/text/StaticLayout;

    .line 10
    iget-boolean v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeChange:Z

    .line 12
    if-eqz v2, :cond_0

    .line 14
    const-string v2, "UNDEFINED_TYPE"

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    const-string v2, "FF_UI/MWS_ACTION_DRAG_ICON_RESIZE"

    .line 19
    :goto_0
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    .line 21
    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 23
    if-nez p2, :cond_1

    .line 26
    new-instance v4, Lmiuix/animation/base/AnimConfig;

    .line 28
    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 30
    goto :goto_1

    .line 33
    :cond_1
    move-object/from16 v4, p2

    .line 34
    :goto_1
    new-instance v5, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$2;

    .line 36
    move-object/from16 v6, p3

    .line 38
    move-object/from16 v7, p4

    .line 40
    invoke-direct {v5, v0, v3, v6, v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$2;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 42
    sget-object v3, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mBoosterHashMap:Ljava/util/HashMap;

    .line 45
    new-instance v3, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;

    .line 47
    invoke-direct {v3, v5, v2}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;-><init>(Lmiuix/animation/listener/TransitionListener;Ljava/lang/String;)V

    .line 49
    filled-new-array {v3}, [Lmiuix/animation/listener/TransitionListener;

    .line 52
    move-result-object v3

    .line 55
    invoke-virtual {v4, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 56
    new-instance v3, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;

    .line 59
    const/4 v5, 0x0

    .line 61
    invoke-direct {v3, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;-><init>(I)V

    .line 62
    invoke-virtual {v3, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->fromTypeAnimInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;)V

    .line 65
    invoke-static {v2}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 68
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAnimator:Lmiuix/animation/IStateStyle;

    .line 71
    const-string v5, "alpha"

    .line 73
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetalpha(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)F

    .line 75
    move-result v1

    .line 78
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    move-result-object v6

    .line 82
    const-string/jumbo v7, "width"

    .line 83
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetwidth(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)F

    .line 86
    move-result v1

    .line 89
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 90
    move-result-object v8

    .line 93
    const-string v9, "height"

    .line 94
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetheight(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)F

    .line 96
    move-result v1

    .line 99
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 100
    move-result-object v10

    .line 103
    const-string v11, "backgroundLeft"

    .line 104
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetbackgroundLeft(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)F

    .line 106
    move-result v1

    .line 109
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 110
    move-result-object v12

    .line 113
    const-string v13, "backgroundTop"

    .line 114
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetbackgroundTop(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)F

    .line 116
    move-result v1

    .line 119
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 120
    move-result-object v14

    .line 123
    const-string v15, "backgroundRight"

    .line 124
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetbackgroundRight(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)F

    .line 126
    move-result v1

    .line 129
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 130
    move-result-object v16

    .line 133
    const-string v17, "backgroundBottom"

    .line 134
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetbackgroundBottom(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)F

    .line 136
    move-result v1

    .line 139
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 140
    move-result-object v18

    .line 143
    const-string v19, "bottomBoardLeft"

    .line 144
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetbottomBoardLeft(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)F

    .line 146
    move-result v1

    .line 149
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 150
    move-result-object v20

    .line 153
    const-string v21, "bottomBoardTop"

    .line 154
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetbottomBoardTop(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)F

    .line 156
    move-result v1

    .line 159
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 160
    move-result-object v22

    .line 163
    const-string v23, "bottomBoardRight"

    .line 164
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetbottomBoardRight(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)F

    .line 166
    move-result v1

    .line 169
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 170
    move-result-object v24

    .line 173
    const-string v25, "bottomBoardBottom"

    .line 174
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetbottomBoardBottom(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)F

    .line 176
    move-result v1

    .line 179
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 180
    move-result-object v26

    .line 183
    const-string v27, "changeLayerLeft"

    .line 184
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetchangeLayerLeft(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)F

    .line 186
    move-result v1

    .line 189
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 190
    move-result-object v28

    .line 193
    const-string v29, "changeLayerTop"

    .line 194
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetchangeLayerTop(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)F

    .line 196
    move-result v1

    .line 199
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 200
    move-result-object v30

    .line 203
    const-string v31, "changeLayerRight"

    .line 204
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetchangeLayerRight(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)F

    .line 206
    move-result v1

    .line 209
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 210
    move-result-object v32

    .line 213
    const-string v33, "changeLayerBottom"

    .line 214
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetchangeLayerBottom(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)F

    .line 216
    move-result v1

    .line 219
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 220
    move-result-object v34

    .line 223
    const-string v35, "changeLayerTopLeftXRadius"

    .line 224
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetchangeLayerTopLeftXRadius(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)F

    .line 226
    move-result v1

    .line 229
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 230
    move-result-object v36

    .line 233
    const-string v37, "changeLayerTopLeftYRadius"

    .line 234
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetchangeLayerTopLeftYRadius(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)F

    .line 236
    move-result v1

    .line 239
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 240
    move-result-object v38

    .line 243
    const-string v39, "changeLayerTopRightXRadius"

    .line 244
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetchangeLayerTopRightXRadius(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)F

    .line 246
    move-result v1

    .line 249
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 250
    move-result-object v40

    .line 253
    const-string v41, "changeLayerTopRightYRadius"

    .line 254
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetchangeLayerTopRightYRadius(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)F

    .line 256
    move-result v1

    .line 259
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 260
    move-result-object v42

    .line 263
    const-string v43, "changeLayerBottomRightXRadius"

    .line 264
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetchangeLayerBottomRightXRadius(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)F

    .line 266
    move-result v1

    .line 269
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 270
    move-result-object v44

    .line 273
    const-string v45, "changeLayerBottomRightYRadius"

    .line 274
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetchangeLayerBottomRightYRadius(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)F

    .line 276
    move-result v1

    .line 279
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 280
    move-result-object v46

    .line 283
    const-string v47, "changeLayerBottomLeftXRadius"

    .line 284
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetchangeLayerBottomLeftXRadius(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)F

    .line 286
    move-result v1

    .line 289
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 290
    move-result-object v48

    .line 293
    const-string v49, "changeLayerBottomLeftYRadius"

    .line 294
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetchangeLayerBottomLeftYRadius(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)F

    .line 296
    move-result v1

    .line 299
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 300
    move-result-object v50

    .line 303
    const-string v51, "appRadius"

    .line 304
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetappRadius(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)F

    .line 306
    move-result v1

    .line 309
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 310
    move-result-object v52

    .line 313
    const-string v53, "appDesRectLeft"

    .line 314
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetappDesRectLeft(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)I

    .line 316
    move-result v1

    .line 319
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    move-result-object v54

    .line 323
    const-string v55, "appDesRectTop"

    .line 324
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetappDesRectTop(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)I

    .line 326
    move-result v1

    .line 329
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 330
    move-result-object v56

    .line 333
    const-string v57, "appDesRectRight"

    .line 334
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetappDesRectRight(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)I

    .line 336
    move-result v1

    .line 339
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 340
    move-result-object v58

    .line 343
    const-string v59, "appDesRectBottom"

    .line 344
    invoke-static {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->-$$Nest$fgetappDesRectBottom(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;)I

    .line 346
    move-result v1

    .line 349
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 350
    move-result-object v60

    .line 353
    move-object/from16 v61, v4

    .line 354
    filled-new-array/range {v5 .. v61}, [Ljava/lang/Object;

    .line 356
    move-result-object v1

    .line 359
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 360
    return-void
    .line 363
.end method

.method private animateToPoint(FFLmiuix/animation/base/AnimConfig;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lmiuix/animation/base/AnimConfig;

    .line 4
    invoke-direct {p3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 6
    :cond_0
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$1;

    .line 9
    invoke-direct {v0, p0, p4}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$1;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;Ljava/lang/Runnable;)V

    .line 11
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 14
    move-result-object p4

    .line 17
    invoke-virtual {p3, p4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAnimator:Lmiuix/animation/IStateStyle;

    .line 21
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    move-result-object p1

    .line 26
    const-string p4, "positionY"

    .line 27
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    move-result-object p2

    .line 32
    const-string v0, "positionX"

    .line 33
    filled-new-array {v0, p1, p4, p2, p3}, [Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 38
    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 39
    return-void
    .line 42
.end method

.method private animateToRect(Landroid/graphics/RectF;Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$SyncCallback;Ljava/lang/Runnable;)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    filled-new-array {v0}, [I

    .line 3
    move-result-object v1

    .line 6
    new-instance v2, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda3;

    .line 7
    const/4 v3, 0x0

    .line 9
    invoke-direct {v2, v3, v1, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 10
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->getTopLeft()Landroid/graphics/PointF;

    .line 13
    move-result-object p3

    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mFinalAnimationStarted:Z

    .line 18
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAnimator:Lmiuix/animation/IStateStyle;

    .line 20
    iget v5, p3, Landroid/graphics/PointF;->x:F

    .line 22
    iget-object v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 24
    iget-object v6, v6, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBackgroundRect:Landroid/graphics/RectF;

    .line 26
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    .line 28
    move-result v6

    .line 31
    const/high16 v7, 0x40000000    # 2.0f

    .line 32
    div-float/2addr v6, v7

    .line 34
    add-float/2addr v6, v5

    .line 35
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    move-result-object v5

    .line 39
    iget p3, p3, Landroid/graphics/PointF;->y:F

    .line 40
    iget-object v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 42
    iget-object v6, v6, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBackgroundRect:Landroid/graphics/RectF;

    .line 44
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    .line 46
    move-result v6

    .line 49
    div-float/2addr v6, v7

    .line 50
    add-float/2addr v6, p3

    .line 51
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 52
    move-result-object p3

    .line 55
    const-string v6, "positionX"

    .line 56
    const-string v7, "positionY"

    .line 58
    filled-new-array {v6, v5, v7, p3}, [Ljava/lang/Object;

    .line 60
    move-result-object p3

    .line 63
    invoke-interface {v4, p3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 64
    new-instance p3, Lmiuix/animation/base/AnimSpecialConfig;

    .line 67
    invoke-direct {p3}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 69
    new-array v4, v0, [F

    .line 72
    fill-array-data v4, :array_0

    .line 74
    const/4 v5, -0x2

    .line 77
    invoke-virtual {p3, v5, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 78
    move-result-object p3

    .line 81
    check-cast p3, Lmiuix/animation/base/AnimSpecialConfig;

    .line 82
    new-instance v4, Lmiuix/animation/base/AnimConfig;

    .line 84
    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 86
    invoke-virtual {v4, v6, p3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 89
    move-result-object v4

    .line 92
    invoke-virtual {v4, v7, p3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 93
    move-result-object p3

    .line 96
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    .line 97
    move-result v4

    .line 100
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    .line 101
    move-result v6

    .line 104
    invoke-direct {p0, v4, v6, p3, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->animateToPoint(FFLmiuix/animation/base/AnimConfig;Ljava/lang/Runnable;)V

    .line 105
    new-instance p3, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 108
    invoke-direct {p3, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;-><init>(I)V

    .line 110
    iget v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mType:I

    .line 113
    invoke-direct {p0, v3, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->getTypeInfo(ILcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;)V

    .line 115
    iget-object v3, p3, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mSize:Landroid/graphics/PointF;

    .line 118
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 120
    move-result v4

    .line 123
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 124
    move-result v6

    .line 127
    invoke-virtual {v3, v4, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 128
    iget-object v3, p3, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBackgroundRect:Landroid/graphics/RectF;

    .line 131
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 133
    move-result v4

    .line 136
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 137
    move-result p1

    .line 140
    const/4 v6, 0x0

    .line 141
    invoke-virtual {v3, v6, v6, v4, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 142
    iput v6, p3, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mAlpha:F

    .line 145
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    .line 147
    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 149
    iget v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mType:I

    .line 152
    const/4 v4, 0x3

    .line 154
    if-eq v3, v4, :cond_1

    .line 155
    if-eqz v3, :cond_1

    .line 157
    if-ne v3, v1, :cond_0

    .line 159
    goto :goto_0

    .line 161
    :cond_0
    if-ne v3, v0, :cond_2

    .line 162
    new-array v0, v0, [F

    .line 164
    fill-array-data v0, :array_1

    .line 166
    invoke-virtual {p1, v5, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 169
    goto :goto_1

    .line 172
    :cond_1
    :goto_0
    new-array v0, v0, [F

    .line 173
    fill-array-data v0, :array_2

    .line 175
    invoke-virtual {p1, v5, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 178
    :cond_2
    :goto_1
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 181
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 183
    const-wide/16 v3, 0x32

    .line 186
    invoke-virtual {v0, v3, v4}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 188
    move-result-object v0

    .line 191
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 192
    const-string/jumbo v3, "width"

    .line 194
    invoke-virtual {p1, v3, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 197
    move-result-object v3

    .line 200
    const-string v4, "height"

    .line 201
    invoke-virtual {v3, v4, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 203
    move-result-object v3

    .line 206
    const-string v4, "backgroundLeft"

    .line 207
    invoke-virtual {v3, v4, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 209
    move-result-object v3

    .line 212
    const-string v4, "backgroundTop"

    .line 213
    invoke-virtual {v3, v4, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 215
    move-result-object v3

    .line 218
    const-string v4, "backgroundRight"

    .line 219
    invoke-virtual {v3, v4, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 221
    move-result-object v3

    .line 224
    const-string v4, "backgroundBottom"

    .line 225
    invoke-virtual {v3, v4, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 227
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda3;

    .line 230
    invoke-direct {v0, v1, p0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 232
    invoke-direct {p0, p3, p1, v0, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->animateToInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;Lmiuix/animation/base/AnimConfig;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 235
    return-void

    .line 238
    nop

    .line 239
    :array_0
    .array-data 4
        0x3f75c28f    # 0.96f
        0x3e99999a    # 0.3f
    .end array-data

    .line 240
    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x3e800000    # 0.25f
    .end array-data

    .line 248
    :array_2
    .array-data 4
        0x3f75c28f    # 0.96f
        0x3ed1eb85    # 0.41f
    .end array-data
    .line 256
.end method

.method private animateToStart(Ljava/lang/Runnable;)V
    .locals 5

    .line 1
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 2
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 4
    const/4 v1, 0x2

    .line 7
    new-array v1, v1, [F

    .line 8
    fill-array-data v1, :array_0

    .line 10
    const/4 v2, -0x2

    .line 13
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 14
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mIconRect:Landroid/graphics/Rect;

    .line 18
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    .line 20
    move-result v1

    .line 23
    int-to-float v1, v1

    .line 24
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTouchOffset:Landroid/graphics/PointF;

    .line 25
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 27
    sub-float/2addr v1, v2

    .line 29
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mIconRect:Landroid/graphics/Rect;

    .line 30
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    .line 32
    move-result v2

    .line 35
    int-to-float v2, v2

    .line 36
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTouchOffset:Landroid/graphics/PointF;

    .line 37
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 39
    sub-float/2addr v2, v3

    .line 41
    new-instance v3, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda2;

    .line 42
    const/4 v4, 0x1

    .line 44
    invoke-direct {v3, p0, p1, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;Ljava/lang/Runnable;I)V

    .line 45
    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->animateToPoint(FFLmiuix/animation/base/AnimConfig;Ljava/lang/Runnable;)V

    .line 48
    new-instance p1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 51
    const/4 v0, 0x0

    .line 53
    invoke-direct {p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;-><init>(I)V

    .line 54
    const/4 v0, -0x1

    .line 57
    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->getTypeInfo(ILcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;)V

    .line 58
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->animateToInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;Lmiuix/animation/base/AnimConfig;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 62
    return-void

    .line 65
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e99999a    # 0.3f
    .end array-data
    .line 66
.end method

.method private animateToType(I)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mType:I

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeChange:Z

    .line 8
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 10
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;-><init>(I)V

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->getTypeInfo(ILcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;)V

    .line 16
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    .line 19
    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 21
    const/4 v3, 0x2

    .line 24
    new-array v3, v3, [F

    .line 25
    fill-array-data v3, :array_0

    .line 27
    const/4 v4, -0x2

    .line 30
    invoke-virtual {v2, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 31
    const/4 v3, 0x0

    .line 34
    invoke-direct {p0, v0, v2, v3, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->animateToInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;Lmiuix/animation/base/AnimConfig;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 35
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mType:I

    .line 38
    iput-boolean v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeChange:Z

    .line 40
    return-void

    .line 42
    nop

    .line 43
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e99999a    # 0.3f
    .end array-data
    .line 44
.end method

.method private createStaticLayout(Landroid/content/res/Resources;I)Landroid/text/StaticLayout;
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 2
    move-result-object p2

    .line 5
    new-instance v0, Landroid/text/TextPaint;

    .line 6
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 8
    const v1, 0x7f06011c    # @color/drag_shadow_text_color '#cc191919'

    .line 11
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 14
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 18
    const v1, 0x7f0702ef    # @dimen/drag_shadow_text_size '14.0sp'

    .line 21
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 24
    move-result p1

    .line 27
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 28
    const-string p1, "MiSans"

    .line 31
    const/4 v1, 0x0

    .line 33
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 34
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 38
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 41
    move-result p1

    .line 44
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTextWidth:F

    .line 45
    float-to-int p0, p0

    .line 47
    invoke-static {p2, v1, p1, v0, p0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    .line 48
    move-result-object p0

    .line 51
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 52
    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    .line 54
    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    .line 57
    move-result-object p0

    .line 60
    return-object p0
    .line 61
.end method

.method private draw()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mDrawScheduled:Z

    .line 3
    iget-boolean v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mDestroyed:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mRootRenderNode:Landroid/graphics/RenderNode;

    .line 10
    invoke-virtual {v1}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    .line 12
    move-result-object v1

    .line 15
    :try_start_0
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 16
    invoke-virtual {v1, v0, v2}, Landroid/graphics/RecordingCanvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 18
    invoke-virtual {v1}, Landroid/graphics/RecordingCanvas;->save()I

    .line 21
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->getTopLeft()Landroid/graphics/PointF;

    .line 24
    move-result-object v0

    .line 27
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 28
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 30
    invoke-virtual {v1, v2, v0}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    .line 32
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mRenderNode:Landroid/graphics/RenderNode;

    .line 35
    invoke-virtual {v1, v0}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 37
    invoke-virtual {v1}, Landroid/graphics/RecordingCanvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mRootRenderNode:Landroid/graphics/RenderNode;

    .line 43
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 45
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mRenderer:Landroid/view/ThreadedRenderer$SimpleRenderer;

    .line 48
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda5;

    .line 50
    invoke-direct {v1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;)V

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer$SimpleRenderer;->draw(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    .line 55
    return-void

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mRootRenderNode:Landroid/graphics/RenderNode;

    .line 60
    invoke-virtual {p0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 62
    throw v0
    .line 65
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mPath:Landroid/graphics/Path;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mPath:Landroid/graphics/Path;

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 9
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBackgroundRect:Landroid/graphics/RectF;

    .line 11
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mBackgroundRadius:F

    .line 13
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 15
    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 17
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mBlurRenderNode:Landroid/graphics/RenderNode;

    .line 20
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    .line 22
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mCopyAppBitmap:Landroid/graphics/Bitmap;

    .line 26
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAppSourceRect:Landroid/graphics/Rect;

    .line 28
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 30
    iget-object v3, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBackgroundRect:Landroid/graphics/RectF;

    .line 32
    const/4 v4, 0x0

    .line 34
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RecordingCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 35
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mBlurRenderNode:Landroid/graphics/RenderNode;

    .line 38
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 43
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mPath:Landroid/graphics/Path;

    .line 46
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 48
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mPaint:Landroid/graphics/Paint;

    .line 51
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 53
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mPaint:Landroid/graphics/Paint;

    .line 58
    const v1, -0xf000001

    .line 60
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 66
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBackgroundRect:Landroid/graphics/RectF;

    .line 68
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mPaint:Landroid/graphics/Paint;

    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 72
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mBlurRenderNode:Landroid/graphics/RenderNode;

    .line 75
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 80
    return-void
    .line 83
.end method

.method private drawContent()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mRenderNode:Landroid/graphics/RenderNode;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    .line 4
    move-result-object v0

    .line 7
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->drawBackground(Landroid/graphics/Canvas;)V

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 11
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mTextLayout:Landroid/text/StaticLayout;

    .line 13
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    move v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    .line 20
    move-result v1

    .line 23
    int-to-float v1, v1

    .line 24
    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 25
    iget-object v3, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mTextLayout:Landroid/text/StaticLayout;

    .line 27
    if-nez v3, :cond_1

    .line 29
    goto :goto_1

    .line 31
    :cond_1
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mIconMarginBottom:F

    .line 32
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/RecordingCanvas;->save()I

    .line 34
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 37
    iget-object v3, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBackgroundRect:Landroid/graphics/RectF;

    .line 39
    iget v4, v3, Landroid/graphics/RectF;->left:F

    .line 41
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 43
    move-result v3

    .line 46
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 47
    iget-object v5, v5, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 49
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 51
    move-result v5

    .line 54
    sub-float/2addr v3, v5

    .line 55
    const/high16 v5, 0x40000000    # 2.0f

    .line 56
    div-float/2addr v3, v5

    .line 58
    add-float/2addr v3, v4

    .line 59
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 60
    iget-object v4, v4, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBackgroundRect:Landroid/graphics/RectF;

    .line 62
    iget v6, v4, Landroid/graphics/RectF;->top:F

    .line 64
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 66
    move-result v4

    .line 69
    iget-object v7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 70
    iget-object v7, v7, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 72
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    .line 74
    move-result v7

    .line 77
    add-float/2addr v7, v2

    .line 78
    add-float/2addr v7, v1

    .line 79
    sub-float/2addr v4, v7

    .line 80
    div-float/2addr v4, v5

    .line 81
    add-float/2addr v4, v6

    .line 82
    invoke-virtual {v0, v3, v4}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    .line 83
    invoke-direct {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->drawIcon(Landroid/graphics/Canvas;)V

    .line 86
    invoke-virtual {v0}, Landroid/graphics/RecordingCanvas;->restore()V

    .line 89
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 92
    iget-object v3, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mTextLayout:Landroid/text/StaticLayout;

    .line 94
    if-eqz v3, :cond_2

    .line 96
    invoke-virtual {v0}, Landroid/graphics/RecordingCanvas;->save()I

    .line 98
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 101
    iget-object v3, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBackgroundRect:Landroid/graphics/RectF;

    .line 103
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 105
    move-result v3

    .line 108
    iget v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTextWidth:F

    .line 109
    sub-float/2addr v3, v4

    .line 111
    div-float/2addr v3, v5

    .line 112
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 113
    iget-object v4, v4, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBackgroundRect:Landroid/graphics/RectF;

    .line 115
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 117
    move-result v4

    .line 120
    iget-object v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 121
    iget-object v6, v6, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 123
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    .line 125
    move-result v6

    .line 128
    add-float/2addr v4, v6

    .line 129
    add-float/2addr v4, v2

    .line 130
    sub-float/2addr v4, v1

    .line 131
    div-float/2addr v4, v5

    .line 132
    invoke-virtual {v0, v3, v4}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    .line 133
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 136
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mTextLayout:Landroid/text/StaticLayout;

    .line 138
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 140
    invoke-virtual {v0}, Landroid/graphics/RecordingCanvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mRenderNode:Landroid/graphics/RenderNode;

    .line 146
    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 148
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->scheduleDraw()V

    .line 151
    return-void

    .line 154
    :catchall_0
    move-exception v0

    .line 155
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mRenderNode:Landroid/graphics/RenderNode;

    .line 156
    invoke-virtual {p0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 158
    throw v0
    .line 161
.end method

.method private drawIcon(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mPaint:Landroid/graphics/Paint;

    .line 2
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mPaint:Landroid/graphics/Paint;

    .line 9
    const v1, 0x1ab2b2b3

    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 17
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 19
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mBottomBoardRadius:F

    .line 21
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mPaint:Landroid/graphics/Paint;

    .line 23
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 25
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mPaint:Landroid/graphics/Paint;

    .line 28
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 30
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mPaint:Landroid/graphics/Paint;

    .line 35
    const/high16 v1, 0xd000000

    .line 37
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 42
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 44
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mBottomBoardRadius:F

    .line 46
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mPaint:Landroid/graphics/Paint;

    .line 48
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 50
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mPaint:Landroid/graphics/Paint;

    .line 53
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mChangLayerColor:I

    .line 55
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mPaint:Landroid/graphics/Paint;

    .line 60
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 62
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mPath:Landroid/graphics/Path;

    .line 67
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 69
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mPath:Landroid/graphics/Path;

    .line 72
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 74
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 76
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mChangeLayerRadius:[F

    .line 78
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 80
    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 82
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mPath:Landroid/graphics/Path;

    .line 85
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mPaint:Landroid/graphics/Paint;

    .line 87
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 89
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mPaint:Landroid/graphics/Paint;

    .line 92
    const/high16 v1, -0x1000000

    .line 94
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAppDesRectF:Landroid/graphics/RectF;

    .line 99
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 101
    iget-object v1, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mAppDesRect:Landroid/graphics/Rect;

    .line 103
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 105
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mPath:Landroid/graphics/Path;

    .line 108
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 110
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mPath:Landroid/graphics/Path;

    .line 113
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAppDesRectF:Landroid/graphics/RectF;

    .line 115
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 122
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mPath:Landroid/graphics/Path;

    .line 125
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 127
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAppBitmap:Landroid/graphics/Bitmap;

    .line 130
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAppSourceRect:Landroid/graphics/Rect;

    .line 132
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 134
    iget-object v2, v2, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mAppDesRect:Landroid/graphics/Rect;

    .line 136
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mPaint:Landroid/graphics/Paint;

    .line 138
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 143
    return-void
    .line 146
.end method

.method private getTopLeft()Landroid/graphics/PointF;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mSize:Landroid/graphics/PointF;

    .line 4
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 6
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 8
    new-instance v2, Landroid/graphics/PointF;

    .line 10
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mFolmeControl:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;

    .line 12
    iget v4, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->positionX:F

    .line 14
    const/high16 v5, 0x40000000    # 2.0f

    .line 16
    div-float/2addr v1, v5

    .line 18
    sub-float/2addr v4, v1

    .line 19
    iget v1, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->positionY:F

    .line 20
    iget-boolean v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mFinalAnimationStarted:Z

    .line 22
    if-eqz v3, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mIconRect:Landroid/graphics/Rect;

    .line 27
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 29
    move-result v0

    .line 32
    int-to-float v0, v0

    .line 33
    :goto_0
    div-float/2addr v0, v5

    .line 34
    sub-float/2addr v1, v0

    .line 35
    invoke-direct {v2, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 36
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mFinalAnimationStarted:Z

    .line 39
    if-nez v0, :cond_1

    .line 41
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTouchOffset:Landroid/graphics/PointF;

    .line 43
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 45
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 47
    invoke-virtual {v2, v0, p0}, Landroid/graphics/PointF;->offset(FF)V

    .line 49
    :cond_1
    return-object v2
    .line 52
.end method

.method private getTypeInfo(ILcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;)V
    .locals 13

    .line 1
    const v3, 0x3f666666    # 0.9f

    .line 2
    const/high16 v4, 0x40800000    # 4.0f

    .line 5
    const/high16 v5, 0x40000000    # 2.0f

    .line 7
    packed-switch p1, :pswitch_data_0

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    const-string v1, "Unknown type: "

    .line 14
    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    throw v0

    .line 23
    :pswitch_0
    const/high16 v6, 0x3f400000    # 0.75f

    .line 24
    iget v7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mScreenWidth:I

    .line 26
    int-to-float v7, v7

    .line 28
    div-float v4, v7, v4

    .line 29
    iget v7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mScreenHeight:I

    .line 31
    int-to-float v7, v7

    .line 33
    div-float v5, v7, v5

    .line 34
    iget v7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mIconSize:F

    .line 36
    mul-float/2addr v7, v3

    .line 38
    const/high16 v8, 0x3f800000    # 1.0f

    .line 39
    const/high16 v9, 0x3f800000    # 1.0f

    .line 41
    iget v10, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAppLargeRadius:F

    .line 43
    const/high16 v11, 0x3f800000    # 1.0f

    .line 45
    iget-object v12, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mFreeformUnsupportedStaticLayout:Landroid/text/StaticLayout;

    .line 47
    move-object v0, p0

    .line 49
    move-object v1, p2

    .line 50
    move v2, p1

    .line 51
    move v3, v6

    .line 52
    move v6, v7

    .line 53
    move v7, v8

    .line 54
    move v8, v9

    .line 55
    move v9, v10

    .line 56
    move v10, v11

    .line 57
    move-object v11, v12

    .line 58
    invoke-direct/range {v0 .. v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->setTypeAnimInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;IFFFFFFFFLandroid/text/StaticLayout;)V

    .line 59
    goto/16 :goto_0

    .line 62
    :pswitch_1
    const/high16 v6, 0x3f400000    # 0.75f

    .line 64
    iget v7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mScreenWidth:I

    .line 66
    int-to-float v7, v7

    .line 68
    div-float v4, v7, v4

    .line 69
    iget v7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mScreenHeight:I

    .line 71
    int-to-float v7, v7

    .line 73
    div-float v5, v7, v5

    .line 74
    iget v7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mIconSize:F

    .line 76
    mul-float/2addr v7, v3

    .line 78
    const/high16 v8, 0x3f800000    # 1.0f

    .line 79
    const/high16 v9, 0x3f800000    # 1.0f

    .line 81
    iget v10, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAppLargeRadius:F

    .line 83
    const/high16 v11, 0x3f800000    # 1.0f

    .line 85
    iget-object v12, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mSplitUnsupportedStaticLayout:Landroid/text/StaticLayout;

    .line 87
    move-object v0, p0

    .line 89
    move-object v1, p2

    .line 90
    move v2, p1

    .line 91
    move v3, v6

    .line 92
    move v6, v7

    .line 93
    move v7, v8

    .line 94
    move v8, v9

    .line 95
    move v9, v10

    .line 96
    move v10, v11

    .line 97
    move-object v11, v12

    .line 98
    invoke-direct/range {v0 .. v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->setTypeAnimInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;IFFFFFFFFLandroid/text/StaticLayout;)V

    .line 99
    goto/16 :goto_0

    .line 102
    :pswitch_2
    const/high16 v3, 0x3f800000    # 1.0f

    .line 104
    iget v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mScreenWidth:I

    .line 106
    int-to-float v4, v4

    .line 108
    div-float/2addr v4, v5

    .line 109
    iget v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mScreenHeight:I

    .line 110
    int-to-float v6, v6

    .line 112
    div-float v5, v6, v5

    .line 113
    iget v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mIconSize:F

    .line 115
    const v7, 0x3f666666    # 0.9f

    .line 117
    const v8, 0x3f666666    # 0.9f

    .line 120
    iget v9, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAppMediumRadius:F

    .line 123
    const v10, 0x3ebbbbbc

    .line 125
    iget-object v11, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mFullscreenStaticLayout:Landroid/text/StaticLayout;

    .line 128
    move-object v0, p0

    .line 130
    move-object v1, p2

    .line 131
    move v2, p1

    .line 132
    invoke-direct/range {v0 .. v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->setTypeAnimInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;IFFFFFFFFLandroid/text/StaticLayout;)V

    .line 133
    goto/16 :goto_0

    .line 136
    :pswitch_3
    const/high16 v3, 0x3f800000    # 1.0f

    .line 138
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mFreeformRect:Landroid/graphics/RectF;

    .line 140
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 142
    move-result v4

    .line 145
    iget v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mFreeformScale:F

    .line 146
    mul-float/2addr v4, v6

    .line 148
    div-float/2addr v4, v5

    .line 149
    iget-object v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mFreeformRect:Landroid/graphics/RectF;

    .line 150
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    .line 152
    move-result v6

    .line 155
    iget v7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mFreeformScale:F

    .line 156
    mul-float/2addr v6, v7

    .line 158
    div-float v5, v6, v5

    .line 159
    iget v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mIconSize:F

    .line 161
    const v7, 0x3eddddde

    .line 163
    const v8, 0x3f19999a    # 0.6f

    .line 166
    iget v9, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAppSmallRadius:F

    .line 169
    const v10, 0x3e6eeeef

    .line 171
    iget-object v11, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mFreeformStaticLayout:Landroid/text/StaticLayout;

    .line 174
    move-object v0, p0

    .line 176
    move-object v1, p2

    .line 177
    move v2, p1

    .line 178
    invoke-direct/range {v0 .. v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->setTypeAnimInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;IFFFFFFFFLandroid/text/StaticLayout;)V

    .line 179
    goto/16 :goto_0

    .line 182
    :pswitch_4
    const/high16 v3, 0x3f800000    # 1.0f

    .line 184
    iget v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mScreenWidth:I

    .line 186
    int-to-float v6, v6

    .line 188
    div-float v4, v6, v4

    .line 189
    iget v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mScreenHeight:I

    .line 191
    int-to-float v6, v6

    .line 193
    div-float v5, v6, v5

    .line 194
    iget v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mIconSize:F

    .line 196
    const v7, 0x3f666666    # 0.9f

    .line 198
    const v8, 0x3f666666    # 0.9f

    .line 201
    iget v9, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAppMediumRadius:F

    .line 204
    const v10, 0x3ebbbbbc

    .line 206
    iget-object v11, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mSplitRightStaticLayout:Landroid/text/StaticLayout;

    .line 209
    move-object v0, p0

    .line 211
    move-object v1, p2

    .line 212
    move v2, p1

    .line 213
    invoke-direct/range {v0 .. v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->setTypeAnimInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;IFFFFFFFFLandroid/text/StaticLayout;)V

    .line 214
    goto/16 :goto_0

    .line 217
    :pswitch_5
    const/high16 v3, 0x3f800000    # 1.0f

    .line 219
    iget v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mScreenWidth:I

    .line 221
    int-to-float v6, v6

    .line 223
    div-float v4, v6, v4

    .line 224
    iget v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mScreenHeight:I

    .line 226
    int-to-float v6, v6

    .line 228
    div-float v5, v6, v5

    .line 229
    iget v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mIconSize:F

    .line 231
    const v7, 0x3f666666    # 0.9f

    .line 233
    const v8, 0x3f666666    # 0.9f

    .line 236
    iget v9, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAppMediumRadius:F

    .line 239
    const v10, 0x3ebbbbbc

    .line 241
    iget-object v11, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mSplitLeftStaticLayout:Landroid/text/StaticLayout;

    .line 244
    move-object v0, p0

    .line 246
    move-object v1, p2

    .line 247
    move v2, p1

    .line 248
    invoke-direct/range {v0 .. v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->setTypeAnimInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;IFFFFFFFFLandroid/text/StaticLayout;)V

    .line 249
    goto :goto_0

    .line 252
    :pswitch_6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 253
    iput v2, p2, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mAlpha:F

    .line 255
    iget-object v2, p2, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mSize:Landroid/graphics/PointF;

    .line 257
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mIconRect:Landroid/graphics/Rect;

    .line 259
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 261
    move-result v3

    .line 264
    int-to-float v3, v3

    .line 265
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mIconRect:Landroid/graphics/Rect;

    .line 266
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 268
    move-result v4

    .line 271
    int-to-float v4, v4

    .line 272
    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 273
    iget-object v2, p2, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mSize:Landroid/graphics/PointF;

    .line 276
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 278
    div-float v3, v2, v5

    .line 280
    div-float/2addr v2, v5

    .line 282
    iget-object v4, p2, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBackgroundRect:Landroid/graphics/RectF;

    .line 283
    const/high16 v5, 0x3f000000    # 0.5f

    .line 285
    sub-float v6, v3, v5

    .line 287
    sub-float v7, v2, v5

    .line 289
    add-float v8, v3, v5

    .line 291
    add-float v9, v2, v5

    .line 293
    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 295
    iget-object v4, p2, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 298
    iget-object v6, p2, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBackgroundRect:Landroid/graphics/RectF;

    .line 300
    invoke-virtual {v4, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 302
    iget-object v4, p2, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 305
    iget-object v6, p2, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBackgroundRect:Landroid/graphics/RectF;

    .line 307
    invoke-virtual {v4, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 309
    iget-object v4, p2, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mChangeLayerRadius:[F

    .line 312
    iget v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mChangeLargeRadius:F

    .line 314
    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([FF)V

    .line 316
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAppLargeRadius:F

    .line 319
    iput v0, p2, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mAppRadius:F

    .line 321
    iget-object v0, p2, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mAppDesRect:Landroid/graphics/Rect;

    .line 323
    sub-float v3, v5, v3

    .line 325
    float-to-int v3, v3

    .line 327
    sub-float/2addr v5, v2

    .line 328
    float-to-int v2, v5

    .line 329
    float-to-int v4, v8

    .line 330
    float-to-int v5, v9

    .line 331
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 332
    const/4 v0, 0x0

    .line 335
    iput-object v0, p2, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mTextLayout:Landroid/text/StaticLayout;

    .line 336
    :goto_0
    return-void

    .line 338
    nop

    .line 339
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 340
.end method

.method private synthetic lambda$animateToHide$5(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 2
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->destroySurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 7
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 10
    if-eqz p1, :cond_0

    .line 13
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 15
    :cond_0
    return-void
    .line 18
.end method

.method private synthetic lambda$animateToRect$10(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$SyncCallback;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->getCurrentRect()Landroid/graphics/RectF;

    .line 2
    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$SyncCallback;->sync(Landroid/graphics/RectF;)Landroid/view/SurfaceControl$Transaction;

    .line 6
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mergeWithNextDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 10
    return-void
    .line 13
.end method

.method private static synthetic lambda$animateToRect$9([ILjava/lang/Runnable;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p0, v0

    .line 3
    add-int/lit8 v1, v1, -0x1

    .line 5
    aput v1, p0, v0

    .line 7
    if-nez v1, :cond_0

    .line 9
    if-eqz p1, :cond_0

    .line 11
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method private synthetic lambda$animateToStart$7(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 2
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->destroySurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 7
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 10
    if-eqz p1, :cond_0

    .line 13
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 15
    :cond_0
    return-void
    .line 18
.end method

.method private synthetic lambda$draw$2(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mLastDrawFrame:J

    .line 2
    return-void
    .line 4
.end method

.method private synthetic lambda$new$0()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 2
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mChoreographer:Landroid/view/Choreographer;

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mRenderNode:Landroid/graphics/RenderNode;

    .line 8
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mScreenWidth:I

    .line 10
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mScreenHeight:I

    .line 12
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mRootRenderNode:Landroid/graphics/RenderNode;

    .line 18
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mScreenWidth:I

    .line 20
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mScreenHeight:I

    .line 22
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 24
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mBlurRenderNode:Landroid/graphics/RenderNode;

    .line 27
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mScreenWidth:I

    .line 29
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mScreenHeight:I

    .line 31
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 33
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mBlurRenderNode:Landroid/graphics/RenderNode;

    .line 36
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mBackgroundBlurRadius:F

    .line 38
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 40
    invoke-static {v1, v1, v2}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    .line 42
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setRenderEffect(Landroid/graphics/RenderEffect;)Z

    .line 46
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mFolmeControl:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;

    .line 49
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 54
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 55
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAnimator:Lmiuix/animation/IStateStyle;

    .line 59
    const/4 v0, -0x1

    .line 61
    invoke-direct {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->setType(I)V

    .line 62
    return-void
    .line 65
.end method

.method private synthetic lambda$postAnimateToHide$4(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->animateToHide(Ljava/lang/Runnable;)V

    .line 2
    return-void
    .line 5
.end method

.method private synthetic lambda$postAnimateToRect$8(Landroid/graphics/RectF;Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$SyncCallback;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->animateToRect(Landroid/graphics/RectF;Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$SyncCallback;Ljava/lang/Runnable;)V

    .line 2
    return-void
    .line 5
.end method

.method private synthetic lambda$postAnimateToStart$6(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->animateToStart(Ljava/lang/Runnable;)V

    .line 2
    return-void
    .line 5
.end method

.method private synthetic lambda$postAnimateToType$3(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->animateToType(I)V

    .line 2
    return-void
    .line 5
.end method

.method private synthetic lambda$postDestroySurface$11(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->destroySurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 2
    return-void
    .line 5
.end method

.method private synthetic lambda$postSetTouchPosition$1(FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->setTouchPosition(FF)V

    .line 2
    return-void
    .line 5
.end method

.method private mergeWithNextDraw(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    .line 2
    iget-wide v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mLastDrawFrame:J

    .line 4
    const-wide/16 v3, 0x1

    .line 6
    add-long/2addr v1, v3

    .line 8
    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/BLASTBufferQueue;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    .line 9
    return-void
    .line 12
.end method

.method private scheduleDraw()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mDrawScheduled:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mDestroyed:Z

    .line 6
    if-nez v0, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mDrawScheduled:Z

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mChoreographer:Landroid/view/Choreographer;

    .line 13
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda1;

    .line 15
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;I)V

    .line 18
    const/4 p0, 0x0

    .line 21
    const/4 v2, 0x3

    .line 22
    invoke-virtual {v0, v2, v1, p0}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 23
    :cond_0
    return-void
    .line 26
.end method

.method private setTouchPosition(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTouchPosition:Landroid/graphics/PointF;

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->equals(FF)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTouchPosition:Landroid/graphics/PointF;

    .line 10
    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 12
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTouchPosition:Landroid/graphics/PointF;

    .line 15
    iget p2, p1, Landroid/graphics/PointF;->x:F

    .line 17
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 19
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p2, p1, v0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->animateToPoint(FFLmiuix/animation/base/AnimConfig;Ljava/lang/Runnable;)V

    .line 22
    :cond_0
    return-void
    .line 25
.end method

.method private setType(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAnimator:Lmiuix/animation/IStateStyle;

    .line 2
    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 4
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mType:I

    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->getTypeInfo(ILcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;)V

    .line 11
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mFolmeControl:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 16
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$FolmeControl;->fromTypeAnimInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;)V

    .line 18
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->drawContent()V

    .line 21
    return-void
    .line 24
.end method

.method private setTypeAnimInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;IFFFFFFFFLandroid/text/StaticLayout;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    move/from16 v3, p4

    .line 8
    move/from16 v4, p5

    .line 10
    move/from16 v5, p6

    .line 12
    move/from16 v6, p3

    .line 14
    iput v6, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mAlpha:F

    .line 16
    iget-object v6, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mSize:Landroid/graphics/PointF;

    .line 18
    invoke-virtual {v6, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 20
    iget-object v6, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBackgroundRect:Landroid/graphics/RectF;

    .line 23
    const/4 v7, 0x0

    .line 25
    invoke-virtual {v6, v7, v7, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 26
    iget-object v3, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 29
    invoke-virtual {v3, v7, v7, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 31
    const/high16 v3, 0x40000000    # 2.0f

    .line 34
    div-float v4, v5, v3

    .line 36
    iget-object v6, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 38
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    .line 40
    move-result v6

    .line 43
    mul-float v6, v6, p7

    .line 44
    iget-object v7, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 46
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    .line 48
    move-result v7

    .line 51
    mul-float v7, v7, p8

    .line 52
    const/4 v8, 0x2

    .line 54
    const/4 v9, 0x3

    .line 55
    if-eq v2, v9, :cond_3

    .line 56
    if-eq v2, v8, :cond_3

    .line 58
    const/4 v10, 0x5

    .line 60
    if-eq v2, v10, :cond_3

    .line 61
    const/4 v11, 0x4

    .line 63
    if-ne v2, v11, :cond_0

    .line 64
    goto :goto_0

    .line 66
    :cond_0
    const/4 v12, 0x7

    .line 67
    const/4 v13, 0x6

    .line 68
    const/4 v14, 0x0

    .line 69
    const/4 v15, 0x1

    .line 70
    if-nez v2, :cond_1

    .line 71
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 73
    div-float/2addr v6, v3

    .line 75
    sub-float v6, v4, v6

    .line 76
    div-float/2addr v7, v3

    .line 78
    sub-float v3, v4, v7

    .line 79
    add-float/2addr v7, v4

    .line 81
    invoke-virtual {v2, v6, v3, v4, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 82
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mChangeLayerRadius:[F

    .line 85
    iget v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mChangeLargeRadius:F

    .line 87
    aput v3, v2, v12

    .line 89
    aput v3, v2, v13

    .line 91
    aput v3, v2, v15

    .line 93
    aput v3, v2, v14

    .line 95
    iget v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mChangeSmallRadius:F

    .line 97
    aput v0, v2, v10

    .line 99
    aput v0, v2, v11

    .line 101
    aput v0, v2, v9

    .line 103
    aput v0, v2, v8

    .line 105
    goto :goto_2

    .line 107
    :cond_1
    if-ne v2, v15, :cond_2

    .line 108
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 110
    const/high16 v3, 0x40000000    # 2.0f

    .line 112
    div-float/2addr v7, v3

    .line 114
    sub-float v8, v4, v7

    .line 115
    div-float/2addr v6, v3

    .line 117
    add-float/2addr v6, v4

    .line 118
    add-float/2addr v7, v4

    .line 119
    invoke-virtual {v2, v4, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 120
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mChangeLayerRadius:[F

    .line 123
    iget v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mChangeSmallRadius:F

    .line 125
    aput v3, v2, v12

    .line 127
    aput v3, v2, v13

    .line 129
    aput v3, v2, v15

    .line 131
    aput v3, v2, v14

    .line 133
    iget v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mChangeLargeRadius:F

    .line 135
    aput v0, v2, v10

    .line 137
    aput v0, v2, v11

    .line 139
    aput v0, v2, v9

    .line 141
    const/4 v3, 0x2

    .line 143
    aput v0, v2, v3

    .line 144
    goto :goto_2

    .line 146
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 147
    const-string v1, "Unknown type: "

    .line 149
    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 151
    move-result-object v1

    .line 154
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 155
    throw v0

    .line 158
    :cond_3
    :goto_0
    iget-object v3, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 159
    const/high16 v8, 0x40000000    # 2.0f

    .line 161
    div-float/2addr v6, v8

    .line 163
    sub-float v9, v4, v6

    .line 164
    div-float/2addr v7, v8

    .line 166
    sub-float v8, v4, v7

    .line 167
    add-float/2addr v6, v4

    .line 169
    add-float/2addr v4, v7

    .line 170
    invoke-virtual {v3, v9, v8, v6, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 171
    iget-object v3, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mChangeLayerRadius:[F

    .line 174
    const/4 v4, 0x2

    .line 176
    if-ne v2, v4, :cond_4

    .line 177
    iget v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mChangeMediumRadius:F

    .line 179
    goto :goto_1

    .line 181
    :cond_4
    iget v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mChangeLargeRadius:F

    .line 182
    :goto_1
    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 184
    :goto_2
    move/from16 v0, p9

    .line 187
    iput v0, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mAppRadius:F

    .line 189
    mul-float v0, v5, p10

    .line 191
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 193
    iget v3, v2, Landroid/graphics/RectF;->left:F

    .line 195
    iget v4, v2, Landroid/graphics/RectF;->right:F

    .line 197
    add-float/2addr v3, v4

    .line 199
    const/high16 v4, 0x40000000    # 2.0f

    .line 200
    div-float/2addr v3, v4

    .line 202
    iget v5, v2, Landroid/graphics/RectF;->top:F

    .line 203
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 205
    add-float/2addr v5, v2

    .line 207
    div-float/2addr v5, v4

    .line 208
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mAppDesRect:Landroid/graphics/Rect;

    .line 209
    div-float/2addr v0, v4

    .line 211
    sub-float v4, v3, v0

    .line 212
    float-to-int v4, v4

    .line 214
    sub-float v6, v5, v0

    .line 215
    float-to-int v6, v6

    .line 217
    add-float/2addr v3, v0

    .line 218
    float-to-int v3, v3

    .line 219
    add-float/2addr v5, v0

    .line 220
    float-to-int v0, v5

    .line 221
    invoke-virtual {v2, v4, v6, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 222
    move-object/from16 v0, p11

    .line 225
    iput-object v0, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mTextLayout:Landroid/text/StaticLayout;

    .line 227
    return-void
    .line 229
.end method

.method private unscheduleDraw()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mDrawScheduled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mDrawScheduled:Z

    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mChoreographer:Landroid/view/Choreographer;

    .line 9
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda1;

    .line 11
    const/4 v2, 0x2

    .line 13
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;I)V

    .line 14
    const/4 p0, 0x0

    .line 17
    const/4 v2, 0x3

    .line 18
    invoke-virtual {v0, v2, v1, p0}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 19
    :cond_0
    return-void
    .line 22
.end method


# virtual methods
.method public destroySurface(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mDestroyed:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAnimator:Lmiuix/animation/IStateStyle;

    .line 7
    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 9
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mDestroyed:Z

    .line 13
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->unscheduleDraw()V

    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mSurface:Landroid/view/Surface;

    .line 18
    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 20
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mBBQ:Landroid/graphics/BLASTBufferQueue;

    .line 23
    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 25
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 28
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 30
    return-void
    .line 33
.end method

.method public getCurrentRect()Landroid/graphics/RectF;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->getTopLeft()Landroid/graphics/PointF;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Landroid/graphics/RectF;

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mTypeAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$TypeAnimInfo;->mSize:Landroid/graphics/PointF;

    .line 10
    iget v2, p0, Landroid/graphics/PointF;->x:F

    .line 12
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 14
    const/4 v3, 0x0

    .line 16
    invoke-direct {v1, v3, v3, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 17
    iget p0, v0, Landroid/graphics/PointF;->x:F

    .line 20
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 22
    invoke-virtual {v1, p0, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 24
    return-object v1
    .line 27
.end method

.method public getFreeformRect()Landroid/graphics/RectF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mFreeformRect:Landroid/graphics/RectF;

    .line 2
    return-object p0
    .line 4
.end method

.method public getFreeformScale()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mFreeformScale:F

    .line 2
    return p0
    .line 4
.end method

.method public postAnimateToHide(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAnimExecutor:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda2;

    .line 4
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;Ljava/lang/Runnable;I)V

    .line 7
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    return-void
    .line 13
.end method

.method public postAnimateToRect(Landroid/graphics/RectF;Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$SyncCallback;Ljava/lang/Runnable;)Lmiuix/animation/IStateStyle;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAnimExecutor:Ljava/util/concurrent/Executor;

    .line 2
    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 4
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda6;

    .line 6
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;Landroid/graphics/RectF;Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$SyncCallback;Ljava/lang/Runnable;)V

    .line 8
    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 16
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAnimator:Lmiuix/animation/IStateStyle;

    .line 19
    return-object p0
    .line 21
.end method

.method public postAnimateToStart(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAnimExecutor:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda2;

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;Ljava/lang/Runnable;I)V

    .line 7
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    return-void
    .line 13
.end method

.method public postAnimateToType(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAnimExecutor:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda0;

    .line 4
    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;I)V

    .line 6
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    return-void
    .line 12
.end method

.method public postDestroySurface(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAnimExecutor:Ljava/util/concurrent/Executor;

    .line 2
    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 4
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda3;

    .line 6
    const/4 v2, 0x2

    .line 8
    invoke-direct {v1, v2, p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 17
    :goto_0
    return-void
    .line 20
.end method

.method public postSetTouchPosition(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;->mAnimExecutor:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda4;

    .line 4
    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDragShadow;FF)V

    .line 6
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    return-void
    .line 12
.end method
