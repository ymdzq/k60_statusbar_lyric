.class public final Lcom/android/wm/shell/compatui/CompatUIWindowManager$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/compatui/CompatUIWindowManager;

.field public final synthetic val$layout:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/compatui/CompatUIWindowManager;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager$1;->this$0:Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager$1;->val$layout:Landroid/view/View;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager$1;->val$layout:Landroid/view/View;

    .line 2
    const v1, 0x7f0a05d4    # @id/miui_size_compat_restart_button

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/ImageButton;

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManager$1;->this$0:Lcom/android/wm/shell/compatui/CompatUIWindowManager;

    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    .line 15
    const v1, 0x7f08131b    # @drawable/miui_size_compat_restart_button_fade_selector 'res/drawable/miui_size_compat_restart_button_fade_selector.xml'

    .line 17
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    return-void
    .line 27
.end method
