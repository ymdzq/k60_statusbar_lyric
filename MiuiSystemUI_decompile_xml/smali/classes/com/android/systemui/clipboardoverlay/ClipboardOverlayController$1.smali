.class public final Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDismissComplete()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->hideImmediate()V

    .line 4
    return-void
    .line 7
.end method

.method public final onInteraction()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mOnUiUpdate:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda2;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda2;->run()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final onSwipeDismissInitiated(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$1;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mClipboardLogger:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;

    .line 4
    sget-object v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_SWIPE_DISMISSED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;->logSessionComplete(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;)V

    .line 8
    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mExitAnimator:Landroid/animation/Animator;

    .line 11
    return-void
    .line 13
.end method
