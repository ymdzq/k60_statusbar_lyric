.class public final Lcom/android/wm/shell/windowdecor/HandleMenu;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAppIcon:Landroid/graphics/drawable/Drawable;

.field public mAppInfoPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

.field public mAppInfoPillHeight:I

.field public final mAppInfoPillPosition:Landroid/graphics/PointF;

.field public final mAppName:Ljava/lang/CharSequence;

.field public final mCaptionX:I

.field public final mCaptionY:I

.field public final mContext:Landroid/content/Context;

.field public mCornerRadius:I

.field public final mLayoutResId:I

.field public mMarginMenuSpacing:I

.field public mMarginMenuStart:I

.field public mMarginMenuTop:I

.field public mMenuWidth:I

.field public mMoreActionsPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

.field public mMoreActionsPillHeight:I

.field public final mMoreActionsPillPosition:Landroid/graphics/PointF;

.field public final mOnClickListener:Landroid/view/View$OnClickListener;

.field public final mOnTouchListener:Landroid/view/View$OnTouchListener;

.field public final mParentDecor:Lcom/android/wm/shell/windowdecor/WindowDecoration;

.field public mShadowRadius:I

.field public final mShouldShowWindowingPill:Z

.field public final mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public mWindowingPill:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

.field public mWindowingPillHeight:I

.field public final mWindowingPillPosition:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/WindowDecoration;IIILandroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    .line 5
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillPosition:Landroid/graphics/PointF;

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    .line 12
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPillPosition:Landroid/graphics/PointF;

    .line 17
    new-instance v0, Landroid/graphics/PointF;

    .line 19
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPillPosition:Landroid/graphics/PointF;

    .line 24
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mParentDecor:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 26
    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mContext:Landroid/content/Context;

    .line 30
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 32
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 34
    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mLayoutResId:I

    .line 36
    iput p3, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mCaptionX:I

    .line 38
    iput p4, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mCaptionY:I

    .line 40
    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 42
    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 44
    iput-object p7, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 46
    iput-object p8, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppName:Ljava/lang/CharSequence;

    .line 48
    iput-boolean p9, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mShouldShowWindowingPill:Z

    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    move-result-object p1

    .line 55
    const p2, 0x7f0702bc    # @dimen/desktop_mode_handle_menu_width '216.0dp'

    .line 56
    invoke-static {p1, p2}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    .line 59
    move-result p2

    .line 62
    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMenuWidth:I

    .line 63
    const p2, 0x7f0702b8    # @dimen/desktop_mode_handle_menu_margin_top '4.0dp'

    .line 65
    invoke-static {p1, p2}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    .line 68
    move-result p2

    .line 71
    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuTop:I

    .line 72
    const p2, 0x7f0702b7    # @dimen/desktop_mode_handle_menu_margin_start '6.0dp'

    .line 74
    invoke-static {p1, p2}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    .line 77
    move-result p2

    .line 80
    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuStart:I

    .line 81
    const p2, 0x7f0702ba    # @dimen/desktop_mode_handle_menu_pill_spacing_margin '2.0dp'

    .line 83
    invoke-static {p1, p2}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    .line 86
    move-result p2

    .line 89
    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuSpacing:I

    .line 90
    const p2, 0x7f0702b5    # @dimen/desktop_mode_handle_menu_app_info_pill_height '52.0dp'

    .line 92
    invoke-static {p1, p2}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    .line 95
    move-result p2

    .line 98
    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillHeight:I

    .line 99
    const p2, 0x7f0702bd    # @dimen/desktop_mode_handle_menu_windowing_pill_height '52.0dp'

    .line 101
    invoke-static {p1, p2}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    .line 104
    move-result p2

    .line 107
    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPillHeight:I

    .line 108
    const p2, 0x7f0702b9    # @dimen/desktop_mode_handle_menu_more_actions_pill_height '156.0dp'

    .line 110
    invoke-static {p1, p2}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    .line 113
    move-result p2

    .line 116
    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPillHeight:I

    .line 117
    const p2, 0x7f0702bb    # @dimen/desktop_mode_handle_menu_shadow_radius '2.0dp'

    .line 119
    invoke-static {p1, p2}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    .line 122
    move-result p2

    .line 125
    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mShadowRadius:I

    .line 126
    const p2, 0x7f0702b6    # @dimen/desktop_mode_handle_menu_corner_radius '26.0dp'

    .line 128
    invoke-static {p1, p2}, Lcom/android/wm/shell/windowdecor/HandleMenu;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    .line 131
    move-result p1

    .line 134
    iput p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mCornerRadius:I

    .line 135
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/HandleMenu;->updateHandleMenuPillPositions()V

    .line 137
    return-void
    .line 140
.end method

.method public static loadDimensionPixelSize(Landroid/content/res/Resources;I)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public static pointInView(Landroid/view/View;FF)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 4
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    cmpg-float v0, v0, p1

    .line 9
    if-gtz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 13
    move-result v0

    .line 16
    int-to-float v0, v0

    .line 17
    cmpl-float p1, v0, p1

    .line 18
    if-ltz p1, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 22
    move-result p1

    .line 25
    int-to-float p1, p1

    .line 26
    cmpg-float p1, p1, p2

    .line 27
    if-gtz p1, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 31
    move-result p0

    .line 34
    int-to-float p0, p0

    .line 35
    cmpl-float p0, p0, p2

    .line 36
    if-ltz p0, :cond_0

    .line 38
    const/4 p0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    :goto_0
    return p0
    .line 43
.end method


# virtual methods
.method public final updateHandleMenuPillPositions()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 4
    move-result-object v0

    .line 7
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 14
    move-result v0

    .line 17
    iget v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mLayoutResId:I

    .line 18
    const v2, 0x7f0d00a0    # @layout/desktop_mode_app_controls_window_decor 'res/layout/desktop_mode_app_controls_window_decor.xml'

    .line 20
    iget v3, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mCaptionY:I

    .line 23
    iget v4, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mCaptionX:I

    .line 25
    if-ne v1, v2, :cond_0

    .line 27
    iget v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuStart:I

    .line 29
    add-int/2addr v4, v0

    .line 31
    iget v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuTop:I

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    div-int/lit8 v0, v0, 0x2

    .line 35
    add-int/2addr v0, v4

    .line 37
    iget v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMenuWidth:I

    .line 38
    div-int/lit8 v1, v1, 0x2

    .line 40
    sub-int v4, v0, v1

    .line 42
    iget v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuStart:I

    .line 44
    :goto_0
    add-int/2addr v3, v0

    .line 46
    int-to-float v0, v4

    .line 47
    int-to-float v1, v3

    .line 48
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillPosition:Landroid/graphics/PointF;

    .line 49
    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 51
    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mShouldShowWindowingPill:Z

    .line 54
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMoreActionsPillPosition:Landroid/graphics/PointF;

    .line 56
    if-eqz v1, :cond_1

    .line 58
    iget v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillHeight:I

    .line 60
    add-int/2addr v3, v1

    .line 62
    iget v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuSpacing:I

    .line 63
    add-int/2addr v3, v1

    .line 65
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPillPosition:Landroid/graphics/PointF;

    .line 66
    int-to-float v4, v3

    .line 68
    invoke-virtual {v1, v0, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 69
    iget v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mWindowingPillHeight:I

    .line 72
    add-int/2addr v3, v1

    .line 74
    iget p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuSpacing:I

    .line 75
    add-int/2addr v3, p0

    .line 77
    int-to-float p0, v3

    .line 78
    invoke-virtual {v2, v0, p0}, Landroid/graphics/PointF;->set(FF)V

    .line 79
    goto :goto_1

    .line 82
    :cond_1
    iget v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mAppInfoPillHeight:I

    .line 83
    add-int/2addr v3, v1

    .line 85
    iget p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mMarginMenuSpacing:I

    .line 86
    add-int/2addr v3, p0

    .line 88
    int-to-float p0, v3

    .line 89
    invoke-virtual {v2, v0, p0}, Landroid/graphics/PointF;->set(FF)V

    .line 90
    :goto_1
    return-void
    .line 93
.end method
