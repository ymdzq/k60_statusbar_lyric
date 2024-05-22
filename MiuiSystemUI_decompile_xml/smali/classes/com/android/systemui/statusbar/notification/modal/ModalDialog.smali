.class public final Lcom/android/systemui/statusbar/notification/modal/ModalDialog;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field public final mButtonContainer:Landroid/view/View;

.field public final mButtonSpace:Landroid/widget/Space;

.field public final mContext:Landroid/content/Context;

.field public final mIconView:Landroid/widget/ImageView;

.field public final mListView:Landroid/widget/ListView;

.field public final mMessageTv:Landroid/widget/TextView;

.field public final mNegativeButton:Landroid/widget/TextView;

.field public final mPositiveButton:Landroid/widget/TextView;

.field public final mTitleTv:Landroid/widget/TextView;

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 5
    const v1, 0x7f1404ee    # @style/Theme.Dialog.Alert

    .line 7
    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 10
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mContext:Landroid/content/Context;

    .line 13
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    move-result-object v0

    .line 18
    const v1, 0x7f0d01c0    # @layout/miui_notification_modal_dialog 'res/layout/miui_notification_modal_dialog.xml'

    .line 19
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mView:Landroid/view/View;

    .line 28
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isBackgroundBlurOpened(Landroid/content/Context;)Z

    .line 30
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->applyContainerViewBlur(Landroid/content/Context;Landroid/view/View;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    move-result-object v1

    .line 42
    const v4, 0x7f03009c    # @array/notification_element_blend_shade_colors

    .line 43
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 46
    move-result-object v1

    .line 49
    invoke-static {p1, v0, v1, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->applyElementViewBlend(Landroid/content/Context;Landroid/view/View;[IZ)V

    .line 50
    goto :goto_0

    .line 53
    :cond_0
    const v1, 0x7f081656    # @drawable/modal_dialog_bg 'res/drawable/modal_dialog_bg.xml'

    .line 54
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 57
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->clearContainerViewBlur(Landroid/content/Context;Landroid/view/View;)V

    .line 64
    :goto_0
    const v1, 0x7f0a0613    # @id/modal_dialog_title

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object v1

    .line 73
    check-cast v1, Landroid/widget/TextView;

    .line 74
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mTitleTv:Landroid/widget/TextView;

    .line 76
    const v4, 0x7f0a0610    # @id/modal_dialog_message

    .line 78
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object v4

    .line 84
    check-cast v4, Landroid/widget/TextView;

    .line 85
    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mMessageTv:Landroid/widget/TextView;

    .line 87
    const v5, 0x7f0a060e    # @id/modal_dialog_icon

    .line 89
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    move-result-object v5

    .line 95
    check-cast v5, Landroid/widget/ImageView;

    .line 96
    iput-object v5, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mIconView:Landroid/widget/ImageView;

    .line 98
    const v6, 0x7f0a060f    # @id/modal_dialog_list

    .line 100
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    move-result-object v6

    .line 106
    check-cast v6, Landroid/widget/ListView;

    .line 107
    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mListView:Landroid/widget/ListView;

    .line 109
    const v7, 0x7f0a0612    # @id/modal_dialog_positive_button

    .line 111
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    move-result-object v7

    .line 117
    check-cast v7, Landroid/widget/TextView;

    .line 118
    iput-object v7, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mPositiveButton:Landroid/widget/TextView;

    .line 120
    const v8, 0x7f0a0611    # @id/modal_dialog_negative_button

    .line 122
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    move-result-object v8

    .line 128
    check-cast v8, Landroid/widget/TextView;

    .line 129
    iput-object v8, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mNegativeButton:Landroid/widget/TextView;

    .line 131
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isBackgroundBlurOpened(Landroid/content/Context;)Z

    .line 133
    move-result v9

    .line 136
    if-eqz v9, :cond_1

    .line 137
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 145
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 148
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 151
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 157
    move-result-object v2

    .line 160
    const v9, 0x7f03009d    # @array/notification_modal_cancel_btn_blend_colors

    .line 161
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 164
    move-result-object v2

    .line 167
    invoke-static {p1, v8, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->applyElementViewBlend(Landroid/content/Context;Landroid/view/View;[IZ)V

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 171
    move-result-object v2

    .line 174
    const v9, 0x7f03009e    # @array/notification_modal_ok_btn_blend_color

    .line 175
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 178
    move-result-object v2

    .line 181
    invoke-static {p1, v7, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->applyElementViewBlend(Landroid/content/Context;Landroid/view/View;[IZ)V

    .line 182
    :cond_1
    const p1, 0x7f0a060d    # @id/modal_dialog_button_space

    .line 185
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 188
    move-result-object p1

    .line 191
    check-cast p1, Landroid/widget/Space;

    .line 192
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mButtonSpace:Landroid/widget/Space;

    .line 194
    const v2, 0x7f0a060c    # @id/modal_dialog_button_container

    .line 196
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 199
    move-result-object v0

    .line 202
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mButtonContainer:Landroid/view/View;

    .line 203
    filled-new-array {v7}, [Landroid/view/View;

    .line 205
    move-result-object p0

    .line 208
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 209
    move-result-object p0

    .line 212
    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 213
    move-result-object p0

    .line 216
    new-array v0, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 217
    const/high16 v2, 0x3f800000    # 1.0f

    .line 219
    invoke-interface {p0, v2, v0}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 221
    move-result-object p0

    .line 224
    new-array v0, v3, [Lmiuix/animation/base/AnimConfig;

    .line 225
    invoke-interface {p0, v7, v0}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 227
    filled-new-array {v8}, [Landroid/view/View;

    .line 230
    move-result-object p0

    .line 233
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 234
    move-result-object p0

    .line 237
    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 238
    move-result-object p0

    .line 241
    new-array v0, v3, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 242
    invoke-interface {p0, v2, v0}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 244
    move-result-object p0

    .line 247
    new-array v0, v3, [Lmiuix/animation/base/AnimConfig;

    .line 248
    invoke-interface {p0, v8, v0}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 250
    const/16 p0, 0x8

    .line 253
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 264
    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    invoke-virtual {p1, p0}, Landroid/widget/Space;->setVisibility(I)V

    .line 273
    return-void
    .line 276
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final dismiss()V
    .locals 3

    .line 1
    const-class p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 2
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->modalWindowView:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 15
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 17
    iget v2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialogTempY:F

    .line 19
    add-float/2addr v1, v2

    .line 21
    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 22
    const/high16 v1, 0x3f800000    # 1.0f

    .line 24
    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 28
    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 32
    move-result-object v0

    .line 35
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 36
    iget v2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialogTempY:F

    .line 38
    add-float/2addr v1, v2

    .line 40
    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialogViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 43
    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 45
    iget v2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialogTempY:F

    .line 47
    add-float/2addr v1, v2

    .line 49
    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 50
    const/4 v1, 0x0

    .line 52
    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->animationProperties:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;

    .line 55
    new-instance v1, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$$ExternalSyntheticLambda0;

    .line 57
    const/4 v2, 0x1

    .line 59
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;I)V

    .line 60
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationEndAction:Ljava/util/function/Consumer;

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->requestChildrenUpdate()V

    .line 65
    return-void
    .line 68
.end method

.method public final setNegativeButton(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    .line 1
    const v0, 0x7f130250    # @string/cancel 'Cancel'

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mNegativeButton:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mNegativeButton:Landroid/widget/TextView;

    .line 10
    new-instance v1, Lcom/android/systemui/statusbar/notification/modal/ModalDialog$$ExternalSyntheticLambda1;

    .line 12
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/statusbar/notification/modal/ModalDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalDialog;Landroid/content/DialogInterface$OnClickListener;I)V

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mNegativeButton:Landroid/widget/TextView;

    .line 21
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    return-void
    .line 26
.end method

.method public final setPositiveButton(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    .line 1
    const v0, 0x7f1302e7    # @string/confirm 'OK'

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mPositiveButton:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mPositiveButton:Landroid/widget/TextView;

    .line 10
    new-instance v1, Lcom/android/systemui/statusbar/notification/modal/ModalDialog$$ExternalSyntheticLambda1;

    .line 12
    const/4 v2, 0x1

    .line 14
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/statusbar/notification/modal/ModalDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalDialog;Landroid/content/DialogInterface$OnClickListener;I)V

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mPositiveButton:Landroid/widget/TextView;

    .line 21
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mButtonSpace:Landroid/widget/Space;

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/Space;->setVisibility(I)V

    .line 29
    return-void
    .line 32
.end method

.method public final show()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mListView:Landroid/widget/ListView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    const v0, 0x7f070c27    # @dimen/modal_dialog_button_margin_top_list '21.82dp'

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    const v0, 0x7f070c28    # @dimen/modal_dialog_button_margin_top_msg '15.27dp'

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mButtonContainer:Landroid/view/View;

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    move-result-object v1

    .line 22
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 23
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object v2

    .line 30
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 31
    move-result v0

    .line 34
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 35
    const-class v0, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 37
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 43
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/modal/ModalController;->modalWindowView:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 45
    if-nez v0, :cond_1

    .line 47
    const/4 v0, 0x0

    .line 49
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalDialog;->mView:Landroid/view/View;

    .line 50
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 52
    if-nez v1, :cond_2

    .line 54
    goto/16 :goto_2

    .line 56
    :cond_2
    if-nez p0, :cond_3

    .line 58
    goto :goto_2

    .line 60
    :cond_3
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mDialogContainer:Landroid/widget/FrameLayout;

    .line 61
    if-nez v1, :cond_4

    .line 63
    new-instance v1, Landroid/widget/FrameLayout;

    .line 65
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 67
    move-result-object v2

    .line 70
    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 71
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mDialogContainer:Landroid/widget/FrameLayout;

    .line 74
    new-instance v2, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$$ExternalSyntheticLambda1;

    .line 76
    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$$ExternalSyntheticLambda1;-><init>()V

    .line 78
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    :cond_4
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mDialogContainer:Landroid/widget/FrameLayout;

    .line 84
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 86
    move-result-object v1

    .line 89
    if-eqz v1, :cond_5

    .line 90
    check-cast v1, Landroid/view/ViewGroup;

    .line 92
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mDialogContainer:Landroid/widget/FrameLayout;

    .line 94
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 96
    :cond_5
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mDialogContainer:Landroid/widget/FrameLayout;

    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 101
    iput-object p0, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialog:Landroid/view/View;

    .line 104
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuView:Landroid/view/View;

    .line 106
    if-eqz v1, :cond_6

    .line 108
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 110
    move-result v1

    .line 113
    iget v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialogMarginTopDelta:I

    .line 114
    int-to-float v2, v2

    .line 116
    sub-float/2addr v1, v2

    .line 117
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 118
    goto :goto_1

    .line 121
    :cond_6
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 122
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 124
    move-result-object v1

    .line 127
    iget v1, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 128
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 130
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    .line 132
    move-result v2

    .line 135
    int-to-float v2, v2

    .line 136
    add-float/2addr v1, v2

    .line 137
    iget v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialogMarginTopDelta:I

    .line 138
    int-to-float v2, v2

    .line 140
    add-float/2addr v1, v2

    .line 141
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 142
    :goto_1
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 145
    const/4 v1, -0x1

    .line 147
    const/4 v2, -0x2

    .line 148
    invoke-direct {p0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mDialogContainer:Landroid/widget/FrameLayout;

    .line 152
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialog:Landroid/view/View;

    .line 154
    invoke-virtual {v1, v2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialog:Landroid/view/View;

    .line 159
    const/4 v1, 0x0

    .line 161
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 162
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialogViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 165
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialog:Landroid/view/View;

    .line 167
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 169
    new-instance p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$$ExternalSyntheticLambda2;

    .line 172
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;)V

    .line 174
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 177
    :goto_2
    return-void
.end method
