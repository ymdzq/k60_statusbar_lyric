.class public abstract Lcom/android/systemui/user/legacyhelper/ui/LegacyUserUiHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final getUserRecordName(Landroid/content/Context;Lcom/android/systemui/user/data/source/UserRecord;ZZZ)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/systemui/user/data/source/UserRecord;->info:Landroid/content/pm/UserInfo;

    .line 2
    iget-boolean v1, p1, Lcom/android/systemui/user/data/source/UserRecord;->isGuest:Z

    .line 4
    if-eqz v1, :cond_0

    .line 6
    iget-boolean v2, p1, Lcom/android/systemui/user/data/source/UserRecord;->isCurrent:Z

    .line 8
    if-eqz v2, :cond_0

    .line 10
    const v1, 0x7f1304cb    # @string/guest_exit_quick_settings_button 'Exit guest'

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-eqz v1, :cond_1

    .line 20
    if-eqz v0, :cond_1

    .line 22
    const v1, 0x104049c    # @android:string/keyguard_password_enter_puk_prompt

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_0
    if-eqz v1, :cond_2

    .line 33
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 35
    move-result p1

    .line 38
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    if-eqz v0, :cond_3

    .line 44
    iget-object p0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 46
    goto :goto_1

    .line 48
    :cond_3
    iget-boolean v0, p1, Lcom/android/systemui/user/data/source/UserRecord;->isGuest:Z

    .line 49
    iget-boolean v3, p1, Lcom/android/systemui/user/data/source/UserRecord;->isAddUser:Z

    .line 51
    iget-boolean v4, p1, Lcom/android/systemui/user/data/source/UserRecord;->isAddSupervisedUser:Z

    .line 53
    iget-boolean v6, p1, Lcom/android/systemui/user/data/source/UserRecord;->isManageUsers:Z

    .line 55
    move v1, p2

    .line 57
    move v2, p3

    .line 58
    move v5, p4

    .line 59
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/user/legacyhelper/ui/LegacyUserUiHelper;->getUserSwitcherActionTextResourceId(ZZZZZZZ)I

    .line 60
    move-result p1

    .line 63
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 67
    :goto_1
    return-object p0
    .line 68
.end method

.method public static final getUserSwitcherActionIconResourceId(ZZZZZ)I
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    if-eqz p3, :cond_0

    .line 4
    const p0, 0x7f080eda    # @drawable/ic_account_circle_filled 'res/drawable/ic_account_circle_filled.xml'

    .line 6
    goto :goto_0

    .line 9
    :cond_0
    if-eqz p0, :cond_1

    .line 10
    const p0, 0x7f080ede    # @drawable/ic_add 'res/drawable/ic_add.xml'

    .line 12
    goto :goto_0

    .line 15
    :cond_1
    if-eqz p1, :cond_2

    .line 16
    const p0, 0x7f080ed9    # @drawable/ic_account_circle 'res/drawable/ic_account_circle.xml'

    .line 18
    goto :goto_0

    .line 21
    :cond_2
    if-eqz p2, :cond_3

    .line 22
    const p0, 0x7f080ee1    # @drawable/ic_add_supervised_user 'res/drawable/ic_add_supervised_user.xml'

    .line 24
    goto :goto_0

    .line 27
    :cond_3
    if-eqz p4, :cond_4

    .line 28
    const p0, 0x7f08104a    # @drawable/ic_manage_users 'res/drawable/ic_manage_users.xml'

    .line 30
    goto :goto_0

    .line 33
    :cond_4
    const p0, 0x7f080ef1    # @drawable/ic_avatar_user 'res/drawable/ic_avatar_user.xml'

    .line 34
    :goto_0
    return p0
    .line 37
.end method

.method public static final getUserSwitcherActionTextResourceId(ZZZZZZZ)I
    .locals 1

    .line 1
    if-nez p0, :cond_1

    .line 2
    if-nez p3, :cond_1

    .line 4
    if-nez p4, :cond_1

    .line 6
    if-eqz p6, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    if-eqz v0, :cond_9

    .line 14
    if-eqz p0, :cond_2

    .line 16
    if-eqz p1, :cond_2

    .line 18
    if-eqz p2, :cond_2

    .line 20
    const p0, 0x7f1304db    # @string/guest_resetting 'Resetting guest…'

    .line 22
    goto :goto_3

    .line 25
    :cond_2
    if-eqz p0, :cond_3

    .line 26
    if-eqz p5, :cond_3

    .line 28
    const p0, 0x7f1304cd    # @string/guest_new_guest 'Add guest'

    .line 30
    goto :goto_3

    .line 33
    :cond_3
    const p2, 0x104049c    # @android:string/keyguard_password_enter_puk_prompt

    .line 34
    if-eqz p0, :cond_4

    .line 37
    if-eqz p1, :cond_4

    .line 39
    goto :goto_2

    .line 41
    :cond_4
    if-eqz p0, :cond_5

    .line 42
    :goto_2
    move p0, p2

    .line 44
    goto :goto_3

    .line 45
    :cond_5
    if-eqz p3, :cond_6

    .line 46
    const p0, 0x7f130c1c    # @string/user_add_user 'Add user'

    .line 48
    goto :goto_3

    .line 51
    :cond_6
    if-eqz p4, :cond_7

    .line 52
    const p0, 0x7f130131    # @string/add_user_supervised '@android:string/work_profile_deleted_description_dpm_wipe'

    .line 54
    goto :goto_3

    .line 57
    :cond_7
    if-eqz p6, :cond_8

    .line 58
    const p0, 0x7f1306cc    # @string/manage_users 'Manage users'

    .line 60
    :goto_3
    return p0

    .line 63
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 64
    const-string p1, "This should never happen!"

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p0

    .line 75
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 76
    const-string p1, "Check failed."

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 83
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    throw p0
    .line 87
.end method
