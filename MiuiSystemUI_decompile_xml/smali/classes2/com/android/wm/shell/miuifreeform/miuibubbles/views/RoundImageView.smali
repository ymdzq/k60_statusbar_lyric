.class public Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RoundImageView;
.super Landroid/widget/ImageView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mCornerRadius:I

.field public final mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070155    # @dimen/bubble_message_icon_radius '14.0dp'

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RoundImageView;->mCornerRadius:I

    .line 6
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RoundImageView;->mPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RoundImageView;->mPath:Landroid/graphics/Path;

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 7
    return-void
    .line 10
.end method

.method public final onSizeChanged(IIII)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    iget-object p3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RoundImageView;->mPath:Landroid/graphics/Path;

    .line 5
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RoundImageView;->mPath:Landroid/graphics/Path;

    .line 10
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    int-to-float v3, p1

    .line 14
    int-to-float v4, p2

    .line 15
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RoundImageView;->mCornerRadius:I

    .line 16
    int-to-float v5, p0

    .line 18
    int-to-float v6, p0

    .line 19
    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 20
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 22
    return-void
    .line 25
.end method
