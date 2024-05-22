.class public final synthetic Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/phone/PipController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda8;->f$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onTabletopModeChanged(Z)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda8;->f$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 4
    const-string/jumbo v1, "tabletop-mode"

    .line 6
    if-nez p1, :cond_0

    .line 9
    iget-object p0, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mNamedUnrestrictedKeepClearAreas:Ljava/util/Map;

    .line 11
    check-cast p0, Ljava/util/HashMap;

    .line 13
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    goto :goto_2

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 19
    move-result-object p1

    .line 22
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTabletopModeController:Lcom/android/wm/shell/common/TabletopModeController;

    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    sget-boolean v2, Lcom/android/wm/shell/common/TabletopModeController;->PREFER_TOP_HALF_IN_TABLETOP:Z

    .line 28
    const/4 v3, 0x1

    .line 30
    xor-int/2addr v2, v3

    .line 31
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mNamedUnrestrictedKeepClearAreas:Ljava/util/Map;

    .line 32
    if-nez v2, :cond_1

    .line 34
    new-instance v2, Landroid/graphics/Rect;

    .line 36
    iget v5, p1, Landroid/graphics/Rect;->left:I

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    .line 40
    move-result v6

    .line 43
    iget v7, p1, Landroid/graphics/Rect;->right:I

    .line 44
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    .line 46
    invoke-direct {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 48
    check-cast v4, Ljava/util/HashMap;

    .line 51
    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    goto :goto_0

    .line 56
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    .line 57
    iget v5, p1, Landroid/graphics/Rect;->left:I

    .line 59
    iget v6, p1, Landroid/graphics/Rect;->top:I

    .line 61
    iget v7, p1, Landroid/graphics/Rect;->right:I

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    .line 65
    move-result v8

    .line 68
    invoke-direct {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 69
    check-cast v4, Ljava/util/HashMap;

    .line 72
    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 77
    iget v1, v1, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 79
    const/4 v2, 0x4

    .line 81
    if-ne v1, v2, :cond_2

    .line 82
    goto :goto_1

    .line 84
    :cond_2
    const/4 v3, 0x0

    .line 85
    :goto_1
    if-eqz v3, :cond_4

    .line 86
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 88
    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 92
    iget-object v1, v1, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mScreenEdgeInsets:Landroid/graphics/Point;

    .line 94
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 96
    move-result v0

    .line 99
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 100
    mul-int/lit8 v1, v1, 0x2

    .line 102
    add-int/2addr v1, v0

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 105
    move-result p1

    .line 108
    div-int/lit8 p1, p1, 0x2

    .line 109
    if-le v1, p1, :cond_3

    .line 111
    goto :goto_2

    .line 113
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 114
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 116
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMovePipInResponseToKeepClearAreasChangeCallback:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda1;

    .line 118
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 123
    :cond_4
    :goto_2
    return-void
    .line 126
.end method
