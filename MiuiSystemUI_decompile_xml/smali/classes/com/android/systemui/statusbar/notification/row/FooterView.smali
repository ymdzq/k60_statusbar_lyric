.class public Lcom/android/systemui/statusbar/notification/row/FooterView;
.super Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mClearAllButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

.field public mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

.field public mManageNotificationHistoryText:Ljava/lang/String;

.field public mManageNotificationText:Ljava/lang/String;

.field public mSeenNotifsFilteredIcon:Landroid/graphics/drawable/Drawable;

.field public mSeenNotifsFilteredText:Ljava/lang/String;

.field public mSeenNotifsFooterTextView:Landroid/widget/TextView;

.field public mShowHistory:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/statusbar/notification/row/FooterView$FooterViewState;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/FooterView$FooterViewState;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    .line 2
    move-result-object p1

    .line 5
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/FooterView$$ExternalSyntheticLambda0;

    .line 9
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/row/FooterView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/FooterView;Landroid/util/IndentingPrintWriter;)V

    .line 11
    invoke-static {p1, p2}, Lcom/android/systemui/util/DumpUtilsKt;->withIncreasedIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/Runnable;)V

    .line 14
    return-void
    .line 17
.end method

.method public final findContentView()Landroid/view/View;
    .locals 1

    .line 1
    const v0, 0x7f0a0223    # @id/id_0x7f0a0223

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
    const v0, 0x7f0a02dd    # @id/dismiss_text

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
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->updateColors()V

    .line 5
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mClearAllButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 8
    const v0, 0x7f1302a4    # @string/clear_all_notifications_text 'Clear all'

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 13
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mClearAllButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 16
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 18
    const v1, 0x7f130057    # @string/accessibility_clear_all 'Clear all notifications.'

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->updateResources()V

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->updateContent()V

    .line 33
    return-void
    .line 36
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->findSecondaryView()Landroid/view/View;

    .line 5
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mClearAllButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 11
    const v0, 0x7f0a0556    # @id/manage_text

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 20
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 22
    const v0, 0x7f0a0a2c    # @id/unlock_prompt_footer

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 31
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mSeenNotifsFooterTextView:Landroid/widget/TextView;

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->updateResources()V

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->updateContent()V

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->updateColors()V

    .line 41
    return-void
    .line 44
.end method

.method public setClearAllButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mClearAllButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    return-void
    .line 7
.end method

.method public setFooterLabelVisible(Z)V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/AlphaOptimizedButton;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mClearAllButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/AlphaOptimizedButton;->setVisibility(I)V

    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mSeenNotifsFooterTextView:Landroid/widget/TextView;

    .line 17
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 23
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/AlphaOptimizedButton;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mClearAllButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 28
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/AlphaOptimizedButton;->setVisibility(I)V

    .line 30
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mSeenNotifsFooterTextView:Landroid/widget/TextView;

    .line 33
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    :goto_0
    return-void
    .line 38
.end method

.method public setManageButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    return-void
    .line 7
.end method

.method public final updateColors()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v1

    .line 11
    const v2, 0x7f060739    # @color/notif_pill_text '@color/material_dynamic_neutral10'

    .line 12
    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 15
    move-result v1

    .line 18
    const v2, 0x7f08169b    # @drawable/notif_footer_btn_background 'res/drawable/notif_footer_btn_background.xml'

    .line 19
    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 22
    move-result-object v3

    .line 25
    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 26
    move-result-object v0

    .line 29
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 30
    const v4, 0x112002f    # @android:^attr-private/colorSurface

    .line 32
    const/4 v5, 0x0

    .line 35
    invoke-static {v2, v4, v5}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 36
    move-result v2

    .line 39
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    .line 40
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 42
    invoke-direct {v4, v2, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 44
    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 49
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mClearAllButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 55
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mClearAllButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 60
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 62
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 65
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 72
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 75
    const v1, 0x1010036    # @android:attr/textColorPrimary

    .line 77
    invoke-static {v0, v1, v5}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 80
    move-result v0

    .line 83
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mSeenNotifsFooterTextView:Landroid/widget/TextView;

    .line 84
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mSeenNotifsFooterTextView:Landroid/widget/TextView;

    .line 89
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 91
    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 95
    return-void
    .line 98
.end method

.method public final updateContent()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mShowHistory:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 6
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageNotificationHistoryText:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 13
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageNotificationHistoryText:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 17
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 21
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageNotificationText:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 28
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageNotificationText:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 32
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mSeenNotifsFooterTextView:Landroid/widget/TextView;

    .line 35
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mSeenNotifsFilteredText:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mSeenNotifsFooterTextView:Landroid/widget/TextView;

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mSeenNotifsFilteredIcon:Landroid/graphics/drawable/Drawable;

    .line 44
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, p0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 47
    return-void
    .line 50
.end method

.method public final updateResources()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f1306cb    # @string/manage_notifications_text 'Manage'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageNotificationText:Ljava/lang/String;

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v0

    .line 18
    const v1, 0x7f1306ca    # @string/manage_notifications_history_text 'History'

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageNotificationHistoryText:Ljava/lang/String;

    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object v0

    .line 31
    const v1, 0x7f070e0d    # @dimen/notifications_unseen_footer_icon_size '16.0dp'

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 35
    move-result v0

    .line 38
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v1

    .line 42
    const v2, 0x7f130bfa    # @string/unlock_to_see_notif_text 'Unlock to see older notifications'

    .line 43
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 49
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mSeenNotifsFilteredText:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 52
    move-result-object v1

    .line 55
    const v2, 0x7f080ff8    # @drawable/ic_friction_lock_closed 'res/drawable/ic_friction_lock_closed.xml'

    .line 56
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 59
    move-result-object v1

    .line 62
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mSeenNotifsFilteredIcon:Landroid/graphics/drawable/Drawable;

    .line 63
    const/4 p0, 0x0

    .line 65
    invoke-virtual {v1, p0, p0, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 66
    return-void
    .line 69
.end method
