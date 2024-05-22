.class public final Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mImageView:Landroid/widget/ImageView;

.field public final mParent:Landroid/widget/LinearLayout;

.field public final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mParent:Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 12
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 15
    const v1, 0x7f0d01ec    # @layout/miuix_appcompat_action_menu_item_child_layout 'res/layout/miuix_appcompat_action_menu_item_child_layout.xml'

    .line 18
    invoke-static {v0, v1, p1}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    const v0, 0x7f0a0072    # @id/action_menu_item_child_icon

    .line 24
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/ImageView;

    .line 31
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mImageView:Landroid/widget/ImageView;

    .line 33
    const v1, 0x7f0a0073    # @id/action_menu_item_child_text

    .line 35
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v1

    .line 41
    check-cast v1, Landroid/widget/TextView;

    .line 42
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItemViewChildren;->mTextView:Landroid/widget/TextView;

    .line 44
    const/4 p0, 0x0

    .line 46
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    .line 47
    filled-new-array {p1}, [Landroid/view/View;

    .line 50
    move-result-object v0

    .line 53
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 54
    move-result-object v0

    .line 57
    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 58
    move-result-object v0

    .line 61
    new-array v1, p0, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 62
    const/high16 v2, 0x3f800000    # 1.0f

    .line 64
    invoke-interface {v0, v2, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 66
    move-result-object v0

    .line 69
    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    .line 70
    filled-new-array {v1}, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 72
    move-result-object v1

    .line 75
    const v3, 0x3f19999a    # 0.6f

    .line 76
    invoke-interface {v0, v3, v1}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 79
    move-result-object v0

    .line 82
    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    .line 83
    filled-new-array {v1}, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 85
    move-result-object v1

    .line 88
    invoke-interface {v0, v2, v1}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 89
    move-result-object v0

    .line 92
    new-array v1, p0, [Lmiuix/animation/base/AnimConfig;

    .line 93
    invoke-interface {v0, p1, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 95
    filled-new-array {p1}, [Landroid/view/View;

    .line 98
    move-result-object v0

    .line 101
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 102
    move-result-object v0

    .line 105
    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 106
    move-result-object v0

    .line 109
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 110
    invoke-interface {v0, v1}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 112
    move-result-object v0

    .line 115
    new-array p0, p0, [Lmiuix/animation/base/AnimConfig;

    .line 116
    invoke-interface {v0, p1, p0}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 118
    return-void
    .line 121
.end method
