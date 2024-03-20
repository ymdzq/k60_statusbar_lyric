.class public Lcom/android/systemui/statusbar/EmptyShadeView;
.super Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mEmptyFooterText:Landroid/widget/TextView;

.field public mEmptyText:Landroid/widget/TextView;

.field public mFooterIcon:I

.field public mFooterText:I

.field public mFooterVisibility:I

.field public mSize:I

.field public mText:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const p1, 0x7f1303d2    # @string/empty_shade_text 'No notifications'

    .line 5
    iput p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mText:I

    .line 8
    const p1, 0x7f080ff8    # @drawable/ic_friction_lock_closed 'res/drawable/ic_friction_lock_closed.xml'

    .line 10
    iput p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterIcon:I

    .line 13
    const p1, 0x7f130bf4    # @string/unlock_to_see_notif_text 'Unlock to see older notifications'

    .line 15
    iput p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterText:I

    .line 18
    const/16 p1, 0x8

    .line 20
    iput p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterVisibility:I

    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object p1

    .line 27
    const p2, 0x7f070e0d    # @dimen/notifications_unseen_footer_icon_size '16.0dp'

    .line 28
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    move-result p1

    .line 34
    iput p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mSize:I

    .line 35
    return-void
    .line 37
.end method


# virtual methods
.method public final createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;-><init>(Lcom/android/systemui/statusbar/EmptyShadeView;)V

    .line 4
    return-object v0
    .line 7
.end method

.method public final findContentView()Landroid/view/View;
    .locals 1

    .line 1
    const v0, 0x7f0a0699    # @id/no_notifications

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object p0

    .line 8
    return-object p0
    .line 9
.end method

.method public final findSecondaryView()Landroid/view/View;
    .locals 1

    .line 1
    const v0, 0x7f0a069a    # @id/no_notifications_footer

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object p0

    .line 8
    return-object p0
    .line 9
.end method

.method public bridge synthetic getBottomCornerRadius()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getBottomCornerRadius()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public bridge synthetic getBottomRoundness()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getBottomRoundness()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public getFooterIconResource()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterIcon:I

    .line 2
    return p0
    .line 4
.end method

.method public getFooterTextResource()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterText:I

    .line 2
    return p0
    .line 4
.end method

.method public bridge synthetic getMaxRadius()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getMaxRadius()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public getTextResource()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mText:I

    .line 2
    return p0
    .line 4
.end method

.method public bridge synthetic getTopCornerRadius()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getTopCornerRadius()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public bridge synthetic getTopRoundness()F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getTopRoundness()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public bridge synthetic getUpdatedRadii()[F
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getUpdatedRadii()[F

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object p1

    .line 8
    const v0, 0x7f070e0d    # @dimen/notifications_unseen_footer_icon_size '16.0dp'

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    move-result p1

    .line 15
    iput p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mSize:I

    .line 16
    iget-object p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyText:Landroid/widget/TextView;

    .line 18
    iget v0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mText:I

    .line 20
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 22
    iget-object p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyFooterText:Landroid/widget/TextView;

    .line 25
    iget v0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterVisibility:I

    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    iget p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterText:I

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/EmptyShadeView;->setFooterText(I)V

    .line 34
    iget p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterIcon:I

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/EmptyShadeView;->setFooterIcon(I)V

    .line 39
    return-void
    .line 42
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/EmptyShadeView;->findContentView()Landroid/view/View;

    .line 5
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyText:Landroid/widget/TextView;

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/EmptyShadeView;->findSecondaryView()Landroid/view/View;

    .line 13
    move-result-object v0

    .line 16
    check-cast v0, Landroid/widget/TextView;

    .line 17
    iput-object v0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyFooterText:Landroid/widget/TextView;

    .line 19
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 21
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 25
    return-void
    .line 28
.end method

.method public setFooterIcon(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterIcon:I

    .line 2
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    move-object p1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object p1

    .line 16
    iget v1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mSize:I

    .line 17
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p1, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 20
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyFooterText:Landroid/widget/TextView;

    .line 23
    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 25
    return-void
    .line 28
.end method

.method public setFooterText(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterText:I

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyFooterText:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyFooterText:Landroid/widget/TextView;

    .line 12
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :goto_0
    return-void
    .line 18
.end method

.method public setFooterVisibility(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mFooterVisibility:I

    .line 2
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move p1, v0

    .line 9
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setSecondaryVisible(ZZ)V

    .line 10
    return-void
    .line 13
.end method

.method public setText(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mText:I

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyText:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 6
    return-void
    .line 9
.end method

.method public setTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyText:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyFooterText:Landroid/widget/TextView;

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyFooterText:Landroid/widget/TextView;

    .line 12
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 14
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 18
    return-void
    .line 21
.end method
