.class public final Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;
.super Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field public mCurrentUserView:Lcom/android/systemui/qs/tiles/UserDetailItemView;

.field public mDialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final getUsers()Ljava/util/List;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getUsers()Ljava/util/List;

    .line 2
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 6
    move-result-object p0

    .line 9
    new-instance v0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter$$ExternalSyntheticLambda0;

    .line 10
    invoke-direct {v0}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter$$ExternalSyntheticLambda0;-><init>()V

    .line 12
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 15
    move-result-object p0

    .line 18
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 19
    move-result-object v0

    .line 22
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 26
    check-cast p0, Ljava/util/List;

    .line 27
    return-object p0
    .line 29
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->getUsers()Ljava/util/List;

    .line 2
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 9
    check-cast p1, Lcom/android/systemui/user/data/source/UserRecord;

    .line 10
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 15
    sget v1, Lcom/android/systemui/qs/tiles/UserDetailItemView;->$r8$clinit:I

    .line 16
    instance-of v1, p2, Lcom/android/systemui/qs/tiles/UserDetailItemView;

    .line 18
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_0

    .line 21
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 23
    move-result-object p2

    .line 26
    const v0, 0x7f0d030f    # @layout/qs_user_detail_item 'res/layout/qs_user_detail_item.xml'

    .line 27
    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 30
    move-result-object p2

    .line 33
    :cond_0
    check-cast p2, Lcom/android/systemui/qs/tiles/UserDetailItemView;

    .line 34
    iget-boolean p3, p1, Lcom/android/systemui/user/data/source/UserRecord;->isCurrent:Z

    .line 36
    iget-boolean v0, p1, Lcom/android/systemui/user/data/source/UserRecord;->isGuest:Z

    .line 38
    const/4 v1, 0x0

    .line 40
    if-eqz p3, :cond_2

    .line 41
    if-eqz v0, :cond_1

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 49
    goto :goto_1

    .line 52
    :cond_2
    :goto_0
    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    :goto_1
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    .line 56
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->controller:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 58
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUserInteractor()Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 60
    move-result-object v3

    .line 63
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->controller:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 64
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUserInteractor()Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 66
    move-result-object v4

    .line 69
    iget-boolean v3, v3, Lcom/android/systemui/user/domain/interactor/UserInteractor;->isGuestUserAutoCreated:Z

    .line 70
    iget-boolean v4, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor;->isGuestUserResetting:Z

    .line 72
    invoke-static {p3, p1, v3, v4, v2}, Lcom/android/systemui/user/legacyhelper/ui/LegacyUserUiHelper;->getUserRecordName(Landroid/content/Context;Lcom/android/systemui/user/data/source/UserRecord;ZZZ)Ljava/lang/String;

    .line 74
    move-result-object p3

    .line 77
    iget-object v3, p1, Lcom/android/systemui/user/data/source/UserRecord;->info:Landroid/content/pm/UserInfo;

    .line 78
    iget-object v4, p1, Lcom/android/systemui/user/data/source/UserRecord;->picture:Landroid/graphics/Bitmap;

    .line 80
    iget-boolean v5, p1, Lcom/android/systemui/user/data/source/UserRecord;->isCurrent:Z

    .line 82
    iget-boolean v6, p1, Lcom/android/systemui/user/data/source/UserRecord;->isSwitchToEnabled:Z

    .line 84
    if-nez v4, :cond_8

    .line 86
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getIconDrawable(Landroid/content/Context;Lcom/android/systemui/user/data/source/UserRecord;)Landroid/graphics/drawable/Drawable;

    .line 90
    move-result-object v4

    .line 93
    if-eqz v5, :cond_3

    .line 94
    const v7, 0x7f0607f0    # @color/qs_user_switcher_selected_avatar_icon_color '@android:color/background_light'

    .line 96
    goto :goto_2

    .line 99
    :cond_3
    if-nez v6, :cond_4

    .line 100
    const v7, 0x7f060007    # @color/GM2_grey_600 '#80868b'

    .line 102
    goto :goto_2

    .line 105
    :cond_4
    const v7, 0x7f0607ef    # @color/qs_user_switcher_avatar_icon_color '#3c4043'

    .line 106
    :goto_2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 109
    move-result-object v8

    .line 112
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 113
    move-result-object v9

    .line 116
    invoke-virtual {v8, v7, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 117
    move-result v7

    .line 120
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 121
    if-eqz v5, :cond_5

    .line 124
    const v7, 0x7f080b7a    # @drawable/bg_avatar_selected 'res/drawable/bg_avatar_selected.xml'

    .line 126
    goto :goto_3

    .line 129
    :cond_5
    const v7, 0x7f08170e    # @drawable/qs_bg_avatar 'res/drawable/qs_bg_avatar.xml'

    .line 130
    :goto_3
    invoke-virtual {v1, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 133
    move-result-object v1

    .line 136
    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    .line 137
    filled-new-array {v1, v4}, [Landroid/graphics/drawable/Drawable;

    .line 139
    move-result-object v1

    .line 142
    invoke-direct {v7, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 146
    move-result-object v1

    .line 149
    if-nez v0, :cond_7

    .line 150
    if-nez v3, :cond_6

    .line 152
    goto :goto_4

    .line 154
    :cond_6
    iget v0, v3, Landroid/content/pm/UserInfo;->id:I

    .line 155
    goto :goto_5

    .line 157
    :cond_7
    :goto_4
    const/16 v0, -0x2710

    .line 158
    :goto_5
    iget-object v3, p2, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 160
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object p3, p2, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mAvatar:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    .line 165
    invoke-virtual {p3, v1, v0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setDrawableWithBadge(Landroid/graphics/drawable/Drawable;I)V

    .line 167
    goto :goto_7

    .line 170
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 173
    move-result-object v0

    .line 176
    const v7, 0x7f070fa2    # @dimen/qs_framed_avatar_size '54.0dp'

    .line 177
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 180
    move-result v0

    .line 183
    float-to-int v0, v0

    .line 184
    new-instance v7, Lcom/android/settingslib/drawable/CircleFramedDrawable;

    .line 185
    invoke-direct {v7, v4, v0}, Lcom/android/settingslib/drawable/CircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    .line 187
    if-eqz v6, :cond_9

    .line 190
    goto :goto_6

    .line 192
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->disabledUserAvatarColorFilter$delegate:Lkotlin/Lazy;

    .line 193
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 195
    move-result-object v0

    .line 198
    move-object v1, v0

    .line 199
    check-cast v1, Landroid/graphics/ColorFilter;

    .line 200
    :goto_6
    invoke-virtual {v7, v1}, Lcom/android/settingslib/drawable/CircleFramedDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 202
    iget v0, v3, Landroid/content/pm/UserInfo;->id:I

    .line 205
    iget-object v1, p2, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 207
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object p3, p2, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mAvatar:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    .line 212
    invoke-virtual {p3, v7, v0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setDrawableWithBadge(Landroid/graphics/drawable/Drawable;I)V

    .line 214
    :goto_7
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 217
    iget-object p3, p1, Lcom/android/systemui/user/data/source/UserRecord;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 220
    if-eqz p3, :cond_a

    .line 222
    const/4 v2, 0x1

    .line 224
    :cond_a
    invoke-virtual {p2, v2}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setDisabledByAdmin(Z)V

    .line 225
    invoke-virtual {p2, v6}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setEnabled(Z)V

    .line 228
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    .line 231
    move-result p3

    .line 234
    if-eqz p3, :cond_b

    .line 235
    const/high16 p3, 0x3f800000    # 1.0f

    .line 237
    goto :goto_8

    .line 239
    :cond_b
    const p3, 0x3ec28f5c    # 0.38f

    .line 240
    :goto_8
    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    .line 243
    if-eqz v5, :cond_c

    .line 246
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mCurrentUserView:Lcom/android/systemui/qs/tiles/UserDetailItemView;

    .line 248
    :cond_c
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 250
    return-object p2
    .line 253
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    const-string v0, "UserDetailView.Adapter#onClick"

    .line 12
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/systemui/user/data/source/UserRecord;

    .line 21
    iget-object v2, v0, Lcom/android/systemui/user/data/source/UserRecord;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 23
    const/4 v3, 0x0

    .line 25
    if-eqz v2, :cond_1

    .line 26
    move v4, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v4, v3

    .line 30
    :goto_0
    if-eqz v4, :cond_2

    .line 31
    invoke-static {v2}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    .line 33
    move-result-object p1

    .line 36
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 37
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 39
    invoke-interface {p0, p1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 41
    goto :goto_2

    .line 44
    :cond_2
    iget-boolean v2, v0, Lcom/android/systemui/user/data/source/UserRecord;->isSwitchToEnabled:Z

    .line 45
    if-eqz v2, :cond_6

    .line 47
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mContext:Landroid/content/Context;

    .line 49
    const/16 v4, 0x9c

    .line 51
    invoke-static {v2, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 53
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 56
    sget-object v4, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_SWITCH:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    .line 58
    invoke-interface {v2, v4}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 60
    iget-boolean v2, v0, Lcom/android/systemui/user/data/source/UserRecord;->isAddUser:Z

    .line 63
    if-nez v2, :cond_5

    .line 65
    iget-boolean v2, v0, Lcom/android/systemui/user/data/source/UserRecord;->isRestricted:Z

    .line 67
    if-nez v2, :cond_5

    .line 69
    iget-object v2, v0, Lcom/android/systemui/user/data/source/UserRecord;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 71
    if-eqz v2, :cond_3

    .line 73
    move v2, v1

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    move v2, v3

    .line 77
    :goto_1
    if-nez v2, :cond_5

    .line 78
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mCurrentUserView:Lcom/android/systemui/qs/tiles/UserDetailItemView;

    .line 80
    if-eqz v2, :cond_4

    .line 82
    invoke-virtual {v2, v3}, Landroid/view/View;->setActivated(Z)V

    .line 84
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setActivated(Z)V

    .line 87
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mDialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    .line 90
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->onUserListItemClicked(Lcom/android/systemui/user/data/source/UserRecord;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V

    .line 92
    :cond_6
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 95
    return-void
    .line 98
.end method
