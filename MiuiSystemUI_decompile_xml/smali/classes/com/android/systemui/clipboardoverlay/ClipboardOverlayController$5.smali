.class public final Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$5;
.super Landroid/view/InputEventReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$5;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    .line 2
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$5;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 4
    sget-object v1, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    move-object v0, p1

    .line 15
    check-cast v0, Landroid/view/MotionEvent;

    .line 16
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 18
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    iget-object v1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$5;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    .line 24
    iget-object v1, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mView:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    .line 26
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    .line 28
    move-result v2

    .line 31
    float-to-int v2, v2

    .line 32
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    .line 33
    move-result v0

    .line 36
    float-to-int v0, v0

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    new-instance v3, Landroid/graphics/Region;

    .line 41
    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    .line 43
    new-instance v4, Landroid/graphics/Rect;

    .line 46
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 48
    iget-object v5, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mPreviewBorder:Landroid/view/View;

    .line 51
    invoke-virtual {v5, v4}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 53
    iget-object v5, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 56
    const/high16 v6, -0x3ec00000    # -12.0f

    .line 58
    invoke-static {v6, v5}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(FLandroid/util/DisplayMetrics;)F

    .line 60
    move-result v5

    .line 63
    float-to-int v5, v5

    .line 64
    iget-object v7, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 65
    invoke-static {v6, v7}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(FLandroid/util/DisplayMetrics;)F

    .line 67
    move-result v7

    .line 70
    float-to-int v7, v7

    .line 71
    invoke-virtual {v4, v5, v7}, Landroid/graphics/Rect;->inset(II)V

    .line 72
    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 75
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 77
    iget-object v5, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainerBackground:Landroid/view/View;

    .line 80
    invoke-virtual {v5, v4}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 82
    iget-object v5, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 85
    invoke-static {v6, v5}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(FLandroid/util/DisplayMetrics;)F

    .line 87
    move-result v5

    .line 90
    float-to-int v5, v5

    .line 91
    iget-object v7, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 92
    invoke-static {v6, v7}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(FLandroid/util/DisplayMetrics;)F

    .line 94
    move-result v7

    .line 97
    float-to-int v7, v7

    .line 98
    invoke-virtual {v4, v5, v7}, Landroid/graphics/Rect;->inset(II)V

    .line 99
    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 102
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 104
    iget-object v5, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mMinimizedPreview:Landroid/widget/LinearLayout;

    .line 107
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 109
    iget-object v5, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 112
    invoke-static {v6, v5}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(FLandroid/util/DisplayMetrics;)F

    .line 114
    move-result v5

    .line 117
    float-to-int v5, v5

    .line 118
    iget-object v7, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 119
    invoke-static {v6, v7}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(FLandroid/util/DisplayMetrics;)F

    .line 121
    move-result v6

    .line 124
    float-to-int v6, v6

    .line 125
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 126
    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 129
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 131
    iget-object v1, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mDismissButton:Landroid/view/View;

    .line 134
    invoke-virtual {v1, v4}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 136
    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 139
    invoke-virtual {v3, v4, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 141
    invoke-virtual {v3, v2, v0}, Landroid/graphics/Region;->contains(II)Z

    .line 144
    move-result v0

    .line 147
    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$5;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    .line 150
    iget-object v0, v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mClipboardLogger:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;

    .line 152
    sget-object v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_TAP_OUTSIDE:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 154
    invoke-virtual {v0, v1}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;->logSessionComplete(Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$5;->this$0:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    .line 159
    invoke-virtual {v0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->animateOut()V

    .line 161
    :cond_0
    const/4 v0, 0x1

    .line 164
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 165
    return-void
    .line 168
.end method
