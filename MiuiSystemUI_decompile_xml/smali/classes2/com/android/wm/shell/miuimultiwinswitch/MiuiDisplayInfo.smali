.class public Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiDisplayInfo"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

.field private mIsSysUiStateValid:Z

.field private final mOnDisplayChangingListener:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

.field mOnDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

.field private mRotation:I


# direct methods
.method public static synthetic $r8$lambda$6cUmAga2UzLB8vErBlNDeZJQuAc(Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->lambda$new$0(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$mupdateDisplayLayout(Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->updateDisplayLayout()V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/DisplayController;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/wm/shell/common/DisplayLayout;

    .line 5
    invoke-direct {v0}, Lcom/android/wm/shell/common/DisplayLayout;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 10
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo$1;

    .line 12
    invoke-direct {v1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo$1;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;)V

    .line 14
    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->mOnDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    .line 17
    new-instance v2, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo$$ExternalSyntheticLambda0;

    .line 19
    invoke-direct {v2, p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;)V

    .line 21
    iput-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->mOnDisplayChangingListener:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

    .line 24
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->mContext:Landroid/content/Context;

    .line 26
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 28
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 30
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/common/DisplayController;->addDisplayChangingController(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V

    .line 33
    new-instance p1, Lcom/android/wm/shell/common/DisplayLayout;

    .line 36
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 40
    move-result-object p2

    .line 43
    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 44
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/DisplayLayout;->set(Lcom/android/wm/shell/common/DisplayLayout;)V

    .line 47
    return-void
    .line 50
.end method

.method private synthetic lambda$new$0(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    if-eq p2, p3, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p1, p3, p0}, Lcom/android/wm/shell/common/DisplayLayout;->rotateTo(ILandroid/content/res/Resources;)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method private updateDisplayLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 5
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/DisplayLayout;->set(Lcom/android/wm/shell/common/DisplayLayout;)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method


# virtual methods
.method public getDisplayHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 2
    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 4
    return p0
    .line 6
.end method

.method public getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 2
    return-object p0
    .line 4
.end method

.method public getDisplayStableInsets(Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 4
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 6
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 8
    iget v3, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 10
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 12
    sub-int/2addr v3, v4

    .line 14
    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 15
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 17
    sub-int/2addr p0, v0

    .line 19
    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 20
    return-void
    .line 23
.end method

.method public getDisplayWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 2
    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 4
    return p0
    .line 6
.end method

.method public getMoveableBounds(I)Landroid/graphics/Rect;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->getMoveableBoundsByDx(I)Landroid/graphics/Rect;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public getMoveableBoundsByDx(I)Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->getDisplayStableInsets(Landroid/graphics/Rect;)V

    .line 7
    const/4 p0, 0x0

    .line 10
    invoke-virtual {v0, p1, p0}, Landroid/graphics/Rect;->inset(II)V

    .line 11
    return-object v0
    .line 14
.end method

.method public isInValidSysUiState()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->mIsSysUiStateValid:Z

    .line 2
    return p0
    .line 4
.end method

.method public onSystemUiStateChanged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->mIsSysUiStateValid:Z

    .line 2
    return-void
    .line 4
.end method
