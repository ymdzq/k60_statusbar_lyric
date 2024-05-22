.class public final synthetic Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IIZ)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-boolean p3, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda0;->f$0:Z

    .line 4
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_1

    .line 8
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda0;->f$0:Z

    .line 9
    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 11
    check-cast p1, Lcom/android/wm/shell/pip/phone/PipController;

    .line 13
    iget-object v2, p1, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 15
    const-string v3, "hotseat"

    .line 17
    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    .line 21
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 23
    move-result-object v4

    .line 26
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 27
    sub-int/2addr v4, p0

    .line 29
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 30
    move-result-object p0

    .line 33
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 34
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 36
    move-result-object v5

    .line 39
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 40
    invoke-direct {v0, v1, v4, p0, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 42
    iget-object p0, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mNamedUnrestrictedKeepClearAreas:Ljava/util/Map;

    .line 45
    check-cast p0, Ljava/util/HashMap;

    .line 47
    invoke-virtual {p0, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipController;->updatePipPositionForKeepClearAreas()V

    .line 52
    goto :goto_0

    .line 55
    :cond_0
    iget-object p0, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mNamedUnrestrictedKeepClearAreas:Ljava/util/Map;

    .line 56
    check-cast p0, Ljava/util/HashMap;

    .line 58
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object p0, p1, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 63
    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 65
    iget-object p1, p1, Lcom/android/wm/shell/pip/phone/PipController;->mMovePipInResponseToKeepClearAreasChangeCallback:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda1;

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    sget-wide v0, Lcom/android/wm/shell/pip/phone/PipController;->PIP_KEEP_CLEAR_AREAS_DELAY:J

    .line 72
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 74
    :goto_0
    return-void

    .line 77
    :goto_1
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda0;->f$0:Z

    .line 78
    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 80
    check-cast p1, Lcom/android/wm/shell/pip/phone/PipController;

    .line 82
    iget-boolean v2, p1, Lcom/android/wm/shell/pip/phone/PipController;->mIsKeyguardShowingOrAnimating:Z

    .line 84
    if-nez v2, :cond_2

    .line 86
    if-eqz v0, :cond_1

    .line 88
    move v1, p0

    .line 90
    :cond_1
    const/4 p0, 0x1

    .line 91
    iget-object p1, p1, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 92
    invoke-virtual {p1, v1, v0, p0}, Lcom/android/wm/shell/pip/PipBoundsState;->setShelfVisibility(IZZ)V

    .line 94
    :cond_2
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 98
.end method
