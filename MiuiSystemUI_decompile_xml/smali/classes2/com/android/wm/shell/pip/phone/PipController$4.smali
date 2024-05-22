.class public final Lcom/android/wm/shell/pip/phone/PipController$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$4;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final insetsChanged(Landroid/view/InsetsState;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$4;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 2
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 6
    iget v0, v0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayId:I

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 10
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    const-string v0, "DisplayLayout for "

    .line 18
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 23
    iget p0, p0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayId:I

    .line 25
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string p0, " is null, return."

    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 38
    const-string p1, "PipController"

    .line 39
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void

    .line 44
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsInFixedRotation:Z

    .line 45
    if-nez v0, :cond_3

    .line 47
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsKeyguardShowingOrAnimating:Z

    .line 49
    if-nez v0, :cond_3

    .line 51
    iget p1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 53
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 55
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 57
    move-result-object v0

    .line 60
    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 61
    if-eq p1, v0, :cond_1

    .line 63
    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 66
    iget-object p1, p1, Lcom/android/wm/shell/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    .line 68
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 70
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 72
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 74
    iget v1, v1, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayId:I

    .line 76
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 78
    move-result-object v0

    .line 81
    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/pip/phone/PipController;->onDisplayChangedUncheck(Lcom/android/wm/shell/common/DisplayLayout;Z)V

    .line 83
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 86
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    .line 88
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 90
    iget-boolean v2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mEnablePipKeepClearAlgorithm:Z

    .line 92
    if-nez v2, :cond_3

    .line 94
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 96
    move-result-object v0

    .line 99
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 100
    sub-int v2, v1, p1

    .line 102
    if-gez v2, :cond_2

    .line 104
    if-le v0, v1, :cond_2

    .line 106
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 108
    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 110
    invoke-virtual {v4}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 112
    move-result-object v4

    .line 115
    sub-int/2addr v1, v0

    .line 116
    invoke-virtual {v3, v1, v4}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->animateToOffset(ILandroid/graphics/Rect;)V

    .line 117
    :cond_2
    if-lez v2, :cond_3

    .line 120
    if-ne p1, v0, :cond_3

    .line 122
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 124
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 126
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 128
    move-result-object p0

    .line 131
    invoke-virtual {p1, v2, p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->animateToOffset(ILandroid/graphics/Rect;)V

    .line 132
    :cond_3
    :goto_0
    return-void
    .line 135
.end method
