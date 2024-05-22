.class public final Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;
.super Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final appNameTextView:Landroid/widget/TextView;

.field public final captionHandle:Landroid/view/View;

.field public final captionView:Landroid/view/View;

.field public final closeWindowButton:Landroid/widget/ImageButton;

.field public final expandMenuButton:Landroid/widget/ImageButton;

.field public final openMenuButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    const v0, 0x7f0a02b1    # @id/desktop_mode_caption

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;->captionView:Landroid/view/View;

    .line 12
    const v1, 0x7f0a01c2    # @id/caption_handle

    .line 14
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v1

    .line 20
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;->captionHandle:Landroid/view/View;

    .line 21
    const v2, 0x7f0a06ce    # @id/open_menu_button

    .line 23
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v2

    .line 29
    iput-object v2, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;->openMenuButton:Landroid/view/View;

    .line 30
    const v3, 0x7f0a0206    # @id/close_window

    .line 32
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v3

    .line 38
    check-cast v3, Landroid/widget/ImageButton;

    .line 39
    iput-object v3, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;->closeWindowButton:Landroid/widget/ImageButton;

    .line 41
    const v4, 0x7f0a0347    # @id/expand_menu_button

    .line 43
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object v4

    .line 49
    check-cast v4, Landroid/widget/ImageButton;

    .line 50
    iput-object v4, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;->expandMenuButton:Landroid/widget/ImageButton;

    .line 52
    const v4, 0x7f0a00da    # @id/application_name

    .line 54
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object v4

    .line 60
    check-cast v4, Landroid/widget/TextView;

    .line 61
    iput-object v4, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;->appNameTextView:Landroid/widget/TextView;

    .line 63
    const p0, 0x7f0a00d9    # @id/application_icon

    .line 65
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object p0

    .line 71
    check-cast p0, Landroid/widget/ImageView;

    .line 72
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    invoke-virtual {v1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 77
    invoke-virtual {v2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {v2, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    invoke-virtual {v3, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {v3, p2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 89
    invoke-virtual {v4, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p0, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    return-void
    .line 98
.end method


# virtual methods
.method public final bindData(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;->captionView:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 8
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 10
    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    .line 12
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 16
    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;->shouldUseLightCaptionColors(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 19
    move-result v0

    .line 22
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;->context:Landroid/content/Context;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    const v0, 0x7f06010b    # @color/desktop_mode_caption_close_button_light '#eff1f2'

    .line 27
    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    .line 30
    move-result v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const v0, 0x7f06010a    # @color/desktop_mode_caption_close_button_dark '#1c1c17'

    .line 35
    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    .line 38
    move-result v0

    .line 41
    :goto_0
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 42
    move-result-object v0

    .line 45
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;->closeWindowButton:Landroid/widget/ImageButton;

    .line 46
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 48
    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;->shouldUseLightCaptionColors(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 51
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    const v0, 0x7f06010d    # @color/desktop_mode_caption_expand_button_light '#eff1f2'

    .line 57
    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    .line 60
    move-result v0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const v0, 0x7f06010c    # @color/desktop_mode_caption_expand_button_dark '#48473a'

    .line 65
    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    .line 68
    move-result v0

    .line 71
    :goto_1
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 72
    move-result-object v0

    .line 75
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;->expandMenuButton:Landroid/widget/ImageButton;

    .line 76
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 78
    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeWindowDecorationViewHolder;->shouldUseLightCaptionColors(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 81
    move-result p1

    .line 84
    if-eqz p1, :cond_2

    .line 85
    const p1, 0x7f060109    # @color/desktop_mode_caption_app_name_light '#eff1f2'

    .line 87
    invoke-virtual {v1, p1}, Landroid/content/Context;->getColor(I)I

    .line 90
    move-result p1

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    const p1, 0x7f060108    # @color/desktop_mode_caption_app_name_dark '#1c1c17'

    .line 95
    invoke-virtual {v1, p1}, Landroid/content/Context;->getColor(I)I

    .line 98
    move-result p1

    .line 101
    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/viewholder/DesktopModeAppControlsWindowDecorationViewHolder;->appNameTextView:Landroid/widget/TextView;

    .line 102
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    return-void
    .line 107
.end method
