.class public final synthetic Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;

    .line 8
    check-cast p1, Landroid/graphics/Rect;

    .line 10
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 12
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mUpdateMovementBoundCallback:Ljava/lang/Runnable;

    .line 17
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 19
    return-void

    .line 22
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;

    .line 23
    check-cast p1, Landroid/graphics/Rect;

    .line 25
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 27
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    .line 29
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mUpdateMovementBoundCallback:Ljava/lang/Runnable;

    .line 32
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 34
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 38
.end method
