.class Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$2;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public bridge synthetic hideInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public insetsChanged(Landroid/view/InsetsState;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$2;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->-$$Nest$fgetmInsetsState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;)Landroid/view/InsetsState;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$2;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 15
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->-$$Nest$fgetmInsetsState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;)Landroid/view/InsetsState;

    .line 17
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    .line 21
    new-instance p1, Landroid/graphics/Rect;

    .line 24
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 26
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$2;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 29
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getMoveableBounds(Landroid/graphics/Rect;)V

    .line 31
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$2;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 34
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->-$$Nest$fgetmDisplayLayout(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;)Lcom/android/wm/shell/common/DisplayLayout;

    .line 36
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$2;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 40
    invoke-static {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;)Landroid/content/Context;

    .line 42
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$2;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 50
    invoke-static {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->-$$Nest$fgetmInsetsState(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;)Landroid/view/InsetsState;

    .line 52
    move-result-object v2

    .line 55
    iput-object v2, v0, Lcom/android/wm/shell/common/DisplayLayout;->mInsetsState:Landroid/view/InsetsState;

    .line 56
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayLayout;->recalcInsets(Landroid/content/res/Resources;)V

    .line 58
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$2;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 61
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->updateDisplayLayout()V

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    .line 66
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$2;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 71
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getMoveableBounds(Landroid/graphics/Rect;)V

    .line 73
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$2;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 76
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->-$$Nest$fgetmMiuiFreeformModeController(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 78
    move-result-object p0

    .line 81
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 82
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 84
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->avoidForInsetsBottomChangedIfNeed(II)V

    .line 86
    return-void
    .line 89
.end method

.method public bridge synthetic insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic topFocusedWindowChanged(Landroid/content/ComponentName;I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
