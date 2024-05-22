.class public final Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;
.super Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

.field public final mLayoutInflater:Landroid/view/LayoutInflater;

.field public final mResources:Landroid/content/res/Resources;

.field public mUsersOrdered:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V
    .locals 0

    .line 1
    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 2
    new-instance p4, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->mUsersOrdered:Ljava/util/ArrayList;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->mContext:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->mResources:Landroid/content/res/Resources;

    .line 14
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 16
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    .line 18
    return-void
    .line 20
.end method


# virtual methods
.method public final getUsers()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->mUsersOrdered:Ljava/util/ArrayList;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->getUsers()Ljava/util/List;

    .line 2
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 9
    check-cast p1, Lcom/android/systemui/user/data/source/UserRecord;

    .line 10
    instance-of v0, p2, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    .line 12
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    instance-of v0, v0, Lcom/android/systemui/user/data/source/UserRecord;

    .line 21
    if-nez v0, :cond_1

    .line 23
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 25
    const v0, 0x7f0d0117    # @layout/keyguard_user_switcher_item 'res/layout/keyguard_user_switcher_item.xml'

    .line 27
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 30
    move-result-object p2

    .line 33
    :cond_1
    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    .line 34
    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->mContext:Landroid/content/Context;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->controller:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 41
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUserInteractor()Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 43
    move-result-object v0

    .line 46
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->controller:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 47
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUserInteractor()Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 49
    move-result-object v2

    .line 52
    iget-boolean v0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->isGuestUserAutoCreated:Z

    .line 53
    iget-boolean v2, v2, Lcom/android/systemui/user/domain/interactor/UserInteractor;->isGuestUserResetting:Z

    .line 55
    invoke-static {p3, p1, v0, v2, v1}, Lcom/android/systemui/user/legacyhelper/ui/LegacyUserUiHelper;->getUserRecordName(Landroid/content/Context;Lcom/android/systemui/user/data/source/UserRecord;ZZZ)Ljava/lang/String;

    .line 57
    move-result-object p3

    .line 60
    iget-object v0, p1, Lcom/android/systemui/user/data/source/UserRecord;->info:Landroid/content/pm/UserInfo;

    .line 61
    iget-boolean v2, p1, Lcom/android/systemui/user/data/source/UserRecord;->isCurrent:Z

    .line 63
    iget-object v3, p1, Lcom/android/systemui/user/data/source/UserRecord;->picture:Landroid/graphics/Bitmap;

    .line 65
    iget-boolean v4, p1, Lcom/android/systemui/user/data/source/UserRecord;->isSwitchToEnabled:Z

    .line 67
    if-nez v3, :cond_6

    .line 69
    iget-boolean v3, p1, Lcom/android/systemui/user/data/source/UserRecord;->isGuest:Z

    .line 71
    if-eqz v2, :cond_2

    .line 73
    if-eqz v3, :cond_2

    .line 75
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->mContext:Landroid/content/Context;

    .line 77
    const v6, 0x7f080eef    # @drawable/ic_avatar_guest_user 'res/drawable/ic_avatar_guest_user.xml'

    .line 79
    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 82
    move-result-object v5

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {v5, p1}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getIconDrawable(Landroid/content/Context;Lcom/android/systemui/user/data/source/UserRecord;)Landroid/graphics/drawable/Drawable;

    .line 89
    move-result-object v5

    .line 92
    :goto_0
    if-eqz v4, :cond_3

    .line 93
    const v6, 0x7f060179    # @color/kg_user_switcher_avatar_icon_color '@color/GM2_grey_800'

    .line 95
    goto :goto_1

    .line 98
    :cond_3
    const v6, 0x7f06017a    # @color/kg_user_switcher_restricted_avatar_icon_color '@color/GM2_grey_600'

    .line 99
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->mResources:Landroid/content/res/Resources;

    .line 102
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 106
    move-result-object v8

    .line 109
    invoke-virtual {v7, v6, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 110
    move-result v6

    .line 113
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 114
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->mContext:Landroid/content/Context;

    .line 117
    const v6, 0x7f08198c    # @drawable/user_avatar_bg 'res/drawable/user_avatar_bg.xml'

    .line 119
    invoke-virtual {p0, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 122
    move-result-object p0

    .line 125
    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    .line 126
    filled-new-array {p0, v5}, [Landroid/graphics/drawable/Drawable;

    .line 128
    move-result-object p0

    .line 131
    invoke-direct {v6, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 135
    move-result-object p0

    .line 138
    if-nez v3, :cond_5

    .line 139
    if-nez v0, :cond_4

    .line 141
    goto :goto_2

    .line 143
    :cond_4
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 144
    goto :goto_3

    .line 146
    :cond_5
    :goto_2
    const/16 v0, -0x2710

    .line 147
    :goto_3
    iget-object v3, p2, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 149
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object p3, p2, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mAvatar:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    .line 154
    invoke-virtual {p3, p0, v0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setDrawableWithBadge(Landroid/graphics/drawable/Drawable;I)V

    .line 156
    goto :goto_5

    .line 159
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->mResources:Landroid/content/res/Resources;

    .line 160
    const v5, 0x7f0704bd    # @dimen/kg_framed_avatar_size '32.0dp'

    .line 162
    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 165
    move-result p0

    .line 168
    float-to-int p0, p0

    .line 169
    new-instance v5, Lcom/android/settingslib/drawable/CircleFramedDrawable;

    .line 170
    invoke-direct {v5, v3, p0}, Lcom/android/settingslib/drawable/CircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    .line 172
    if-eqz v4, :cond_7

    .line 175
    const/4 p0, 0x0

    .line 177
    goto :goto_4

    .line 178
    :cond_7
    sget-object p0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->disabledUserAvatarColorFilter$delegate:Lkotlin/Lazy;

    .line 179
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 181
    move-result-object p0

    .line 184
    check-cast p0, Landroid/graphics/ColorFilter;

    .line 185
    :goto_4
    invoke-virtual {v5, p0}, Lcom/android/settingslib/drawable/CircleFramedDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 187
    iget p0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 190
    iget-object v0, p2, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mName:Landroid/widget/TextView;

    .line 192
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object p3, p2, Lcom/android/systemui/qs/tiles/UserDetailItemView;->mAvatar:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    .line 197
    invoke-virtual {p3, v5, p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setDrawableWithBadge(Landroid/graphics/drawable/Drawable;I)V

    .line 199
    :goto_5
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 202
    iget-object p0, p1, Lcom/android/systemui/user/data/source/UserRecord;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 205
    if-eqz p0, :cond_8

    .line 207
    const/4 v1, 0x1

    .line 209
    :cond_8
    invoke-virtual {p2, v1}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setDisabledByAdmin(Z)V

    .line 210
    invoke-virtual {p2, v4}, Lcom/android/systemui/qs/tiles/UserDetailItemView;->setEnabled(Z)V

    .line 213
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    .line 216
    move-result p0

    .line 219
    if-eqz p0, :cond_9

    .line 220
    const/high16 p0, 0x3f800000    # 1.0f

    .line 222
    goto :goto_6

    .line 224
    :cond_9
    const p0, 0x3ec28f5c    # 0.38f

    .line 225
    :goto_6
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    .line 228
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 231
    return-object p2
    .line 234
.end method

.method public final notifyDataSetChanged()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getUsers()Ljava/util/List;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    check-cast v0, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v2

    .line 13
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->mUsersOrdered:Ljava/util/ArrayList;

    .line 17
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result v3

    .line 24
    if-ge v2, v3, :cond_1

    .line 25
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 30
    check-cast v3, Lcom/android/systemui/user/data/source/UserRecord;

    .line 31
    iget-boolean v4, v3, Lcom/android/systemui/user/data/source/UserRecord;->isCurrent:Z

    .line 33
    if-eqz v4, :cond_0

    .line 35
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->mUsersOrdered:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 39
    goto :goto_1

    .line 42
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->mUsersOrdered:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 48
    goto :goto_0

    .line 50
    :cond_1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 51
    return-void
    .line 54
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    move-result-object p1

    .line 5
    check-cast p1, Lcom/android/systemui/user/data/source/UserRecord;

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    .line 8
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 10
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 12
    const/4 v2, 0x1

    .line 14
    if-nez v1, :cond_1

    .line 15
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 17
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mAnimating:Z

    .line 19
    if-eqz v1, :cond_0

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    move v1, v2

    .line 26
    :goto_1
    if-eqz v1, :cond_2

    .line 27
    return-void

    .line 29
    :cond_2
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    .line 30
    if-eqz v1, :cond_5

    .line 32
    iget-boolean v1, p1, Lcom/android/systemui/user/data/source/UserRecord;->isCurrent:Z

    .line 34
    if-eqz v1, :cond_4

    .line 36
    iget-boolean v1, p1, Lcom/android/systemui/user/data/source/UserRecord;->isGuest:Z

    .line 38
    if-eqz v1, :cond_3

    .line 40
    goto :goto_2

    .line 42
    :cond_3
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    .line 43
    goto :goto_3

    .line 46
    :cond_4
    :goto_2
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->onUserListItemClicked(Lcom/android/systemui/user/data/source/UserRecord;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V

    .line 48
    goto :goto_3

    .line 51
    :cond_5
    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setUserSwitcherOpened(ZZ)V

    .line 52
    :goto_3
    return-void
    .line 55
.end method
