.class public Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;
.super Landroid/widget/TextView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mOriginColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->setupColors()V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    return-void
    .line 5
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->setupColors()V

    .line 5
    return-void
    .line 8
.end method

.method public final setupColors()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 2
    move-result-object v0

    .line 5
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mOriginColor:Landroid/content/res/ColorStateList;

    .line 6
    sget-object v1, Landroid/widget/TextView;->ENABLED_STATE_SET:[I

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v2

    .line 13
    const v3, 0x7f0603ea    # @color/miuix_appcompat_action_bar_tab_text_color_normal_light '@color/miuix_color_black_40_no_alpha'

    .line 14
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 17
    move-result v2

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 21
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabTextView;->mOriginColor:Landroid/content/res/ColorStateList;

    .line 24
    sget-object v1, Landroid/widget/TextView;->ENABLED_SELECTED_STATE_SET:[I

    .line 26
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object p0

    .line 31
    const v2, 0x7f0603ee    # @color/miuix_appcompat_action_bar_tab_text_color_selected_light '#cc000000'

    .line 32
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 35
    move-result p0

    .line 38
    invoke-virtual {v0, v1, p0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 39
    return-void
    .line 42
.end method
