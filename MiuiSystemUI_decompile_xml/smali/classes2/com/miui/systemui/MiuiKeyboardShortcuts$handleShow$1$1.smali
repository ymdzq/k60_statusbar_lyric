.class public final Lcom/miui/systemui/MiuiKeyboardShortcuts$handleShow$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic this$0:Lcom/miui/systemui/MiuiKeyboardShortcuts;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/systemui/MiuiKeyboardShortcuts;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$handleShow$1$1;->this$0:Lcom/miui/systemui/MiuiKeyboardShortcuts;

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$handleShow$1$1;->$context:Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$handleShow$1$1;->this$0:Lcom/miui/systemui/MiuiKeyboardShortcuts;

    .line 2
    iget-object p0, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$handleShow$1$1;->$context:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const v1, 0x7f0603aa    # @color/miui_keyboard_shortcuts_blur_color '#66f2f2f2'

    .line 9
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    .line 12
    move-result v1

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object p0

    .line 19
    const v2, 0x7f070875    # @dimen/miui_keyboard_shortcuts_bg_radius '21.33dp'

    .line 20
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 23
    move-result p0

    .line 26
    iget-object v2, v0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->blurContainer:Landroid/view/View;

    .line 27
    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 31
    move-result-object v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v2, 0x0

    .line 36
    :goto_0
    if-eqz v2, :cond_1

    .line 37
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->createBackgroundBlurDrawable()Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 39
    move-result-object v2

    .line 42
    const/16 v3, 0x64

    .line 43
    invoke-virtual {v2, v3}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setBlurRadius(I)V

    .line 45
    invoke-virtual {v2, p0, p0, p0, p0}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setCornerRadius(FFFF)V

    .line 48
    invoke-virtual {v2, v1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->setColor(I)V

    .line 51
    iget-object p0, v0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->blurContainer:Landroid/view/View;

    .line 54
    if-eqz p0, :cond_2

    .line 56
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 58
    goto :goto_1

    .line 61
    :cond_1
    iget-object p0, v0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->blurContainer:Landroid/view/View;

    .line 62
    if-eqz p0, :cond_2

    .line 64
    const v0, 0x7f0812e3    # @drawable/miui_keyboard_shortcuts_background 'res/drawable/miui_keyboard_shortcuts_background.xml'

    .line 66
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 69
    :cond_2
    :goto_1
    return-void
    .line 72
.end method
