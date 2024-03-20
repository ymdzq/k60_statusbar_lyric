.class public final Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeFocusedWindowDecorationViewHolder;
.super Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final captionHandle:Landroid/widget/ImageButton;

.field public final captionView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    const v0, 0x7f0a02b1    # @id/desktop_mode_caption

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeFocusedWindowDecorationViewHolder;->captionView:Landroid/view/View;

    .line 12
    const v1, 0x7f0a01c2    # @id/caption_handle

    .line 14
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 20
    check-cast p1, Landroid/widget/ImageButton;

    .line 21
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeFocusedWindowDecorationViewHolder;->captionHandle:Landroid/widget/ImageButton;

    .line 23
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 25
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 28
    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
    .line 34
.end method


# virtual methods
.method public final bindData(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 2
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeFocusedWindowDecorationViewHolder;->captionView:Landroid/view/View;

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v1

    .line 13
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 14
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 16
    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;->shouldUseLightCaptionColors(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 19
    move-result p1

    .line 22
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;->context:Landroid/content/Context;

    .line 23
    if-eqz p1, :cond_0

    .line 25
    const p1, 0x7f06010f    # @color/desktop_mode_caption_handle_bar_light '#eff1f2'

    .line 27
    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    .line 30
    move-result p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const p1, 0x7f06010e    # @color/desktop_mode_caption_handle_bar_dark '#1c1c17'

    .line 35
    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    .line 38
    move-result p1

    .line 41
    :goto_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 42
    move-result-object p1

    .line 45
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeFocusedWindowDecorationViewHolder;->captionHandle:Landroid/widget/ImageButton;

    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 48
    return-void
    .line 51
.end method
