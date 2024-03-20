.class public interface abstract Lcom/android/wm/shell/pip/PipMenuController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static getPipMenuLayoutParams(IILandroid/content/Context;Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 1
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 2
    const/16 v3, 0x7f6

    .line 4
    const v4, 0x20840010

    .line 6
    const/4 v5, -0x3

    .line 9
    move-object v0, v6

    .line 10
    move v1, p0

    .line 11
    move v2, p1

    .line 12
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 13
    iget p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 16
    const/high16 p1, 0x20000000

    .line 18
    or-int/2addr p0, p1

    .line 20
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 21
    invoke-virtual {v6, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p0

    .line 29
    const p1, 0x7f1308e7    # @string/pip_menu_accessibility_title 'Picture-in-Picture Menu'

    .line 30
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 36
    iput-object p0, v6, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 37
    return-object v6
    .line 39
.end method


# virtual methods
.method public abstract attach(Landroid/view/SurfaceControl;)V
.end method

.method public abstract detach()V
.end method

.method public abstract isMenuVisible()Z
.end method

.method public abstract movePipMenu(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)V
.end method

.method public onFocusTaskChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public abstract resizePipMenu(Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract updateMenuBounds(Landroid/graphics/Rect;)V
.end method
