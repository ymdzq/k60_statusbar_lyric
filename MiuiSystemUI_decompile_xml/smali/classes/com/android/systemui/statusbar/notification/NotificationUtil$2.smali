.class public final Lcom/android/systemui/statusbar/notification/NotificationUtil$2;
.super Landroid/view/ViewOutlineProvider;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic val$isAnimating:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationUtil$2;->val$isAnimating:Z

    .line 2
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 9
    const v1, 0x7f070db3    # @dimen/notification_item_bg_radius '20.0dp'

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 13
    move-result v0

    .line 16
    instance-of v1, p1, Landroid/widget/TextView;

    .line 17
    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object v0

    .line 28
    const v1, 0x7f070dcb    # @dimen/notification_modal_dialog_button_radius '16.0dp'

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 32
    move-result v0

    .line 35
    :cond_0
    move v6, v0

    .line 36
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 37
    if-eqz v0, :cond_2

    .line 39
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 41
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/NotificationUtil$2;->val$isAnimating:Z

    .line 43
    if-eqz p0, :cond_1

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getRenderNode()Landroid/graphics/RenderNode;

    .line 47
    move-result-object p0

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 53
    move-result v1

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 57
    move-result v2

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 61
    move-result v3

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 65
    move-result v4

    .line 68
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->getActualHeight()I

    .line 69
    move-result v5

    .line 72
    add-int/2addr v5, v4

    .line 73
    invoke-direct {v0, v1, v2, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 74
    invoke-virtual {p0, v0}, Landroid/graphics/RenderNode;->setPosition(Landroid/graphics/Rect;)Z

    .line 77
    const/4 v2, 0x0

    .line 80
    const/4 v3, 0x0

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 82
    move-result v4

    .line 85
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->getActualHeight()I

    .line 86
    move-result p0

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 90
    move-result p1

    .line 93
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 94
    move-result v5

    .line 97
    move-object v1, p2

    .line 98
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 99
    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 103
    move-result-object p0

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    move-result-object p0

    .line 110
    const v0, 0x7f070d91    # @dimen/notification_custom_view_margin '9.82dp'

    .line 111
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 114
    move-result p0

    .line 117
    mul-int/lit8 p0, p0, 0x2

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getRenderNode()Landroid/graphics/RenderNode;

    .line 120
    move-result-object v0

    .line 123
    new-instance v1, Landroid/graphics/Rect;

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 126
    move-result v2

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 130
    move-result v3

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 134
    move-result v4

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 138
    move-result v5

    .line 141
    add-int/2addr v5, p0

    .line 142
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 143
    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setPosition(Landroid/graphics/Rect;)Z

    .line 146
    const/4 v2, 0x0

    .line 149
    const/4 v3, 0x0

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 151
    move-result v4

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 155
    move-result p1

    .line 158
    add-int v5, p1, p0

    .line 159
    move-object v1, p2

    .line 161
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 162
    goto :goto_0

    .line 165
    :cond_2
    const/4 v2, 0x0

    .line 166
    const/4 v3, 0x0

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 168
    move-result v4

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 172
    move-result v5

    .line 175
    move-object v1, p2

    .line 176
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 177
    :goto_0
    return-void
    .line 180
.end method
