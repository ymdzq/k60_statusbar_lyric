.class public Lcom/android/systemui/statusbar/phone/DemoStatusIcons;
.super Lcom/android/systemui/statusbar/phone/StatusIconContainer;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/demomode/DemoMode;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# instance fields
.field public mColor:I

.field public mDemoMode:Z


# virtual methods
.method public final demoCommands()Ljava/util/List;
    .locals 1

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    const-string/jumbo v0, "status"

    .line 7
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    return-object p0
    .line 13
.end method

.method public final dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string/jumbo p2, "volume"

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    const-string/jumbo v2, "vibrate"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    const v0, 0x7f081867    # @drawable/stat_sys_ringer_vibrate 'res/drawable/stat_sys_ringer_vibrate.xml'

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    move v0, v1

    .line 25
    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;I)V

    .line 26
    :cond_1
    const-string/jumbo p2, "zen"

    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    const-string v2, "dnd"

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    const v0, 0x7f081823    # @drawable/stat_sys_dnd 'res/drawable/stat_sys_dnd.xml'

    .line 46
    goto :goto_1

    .line 49
    :cond_2
    move v0, v1

    .line 50
    :goto_1
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;I)V

    .line 51
    :cond_3
    const-string p2, "bluetooth"

    .line 54
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 59
    if-eqz v0, :cond_5

    .line 60
    const-string v2, "connected"

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    const v0, 0x7f08180c    # @drawable/stat_sys_data_bluetooth_connected 'res/drawable/stat_sys_data_bluetooth_connected.xml'

    .line 70
    goto :goto_2

    .line 73
    :cond_4
    move v0, v1

    .line 74
    :goto_2
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;I)V

    .line 75
    :cond_5
    const-string p2, "location"

    .line 78
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 83
    const-string/jumbo v2, "show"

    .line 84
    if-eqz v0, :cond_7

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v0

    .line 92
    if-eqz v0, :cond_6

    .line 93
    sget v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->LOCATION_STATUS_ICON_ID:I

    .line 95
    goto :goto_3

    .line 97
    :cond_6
    move v0, v1

    .line 98
    :goto_3
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;I)V

    .line 99
    :cond_7
    const-string p2, "alarm"

    .line 102
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object p2

    .line 107
    if-eqz p2, :cond_9

    .line 108
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    move-result p2

    .line 113
    if-eqz p2, :cond_8

    .line 114
    const p2, 0x7f0817f1    # @drawable/stat_sys_alarm 'res/drawable/stat_sys_alarm.xml'

    .line 116
    goto :goto_4

    .line 119
    :cond_8
    move p2, v1

    .line 120
    :goto_4
    const-string v0, "alarm_clock"

    .line 121
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;I)V

    .line 123
    :cond_9
    const-string/jumbo p2, "tty"

    .line 126
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 132
    if-eqz v0, :cond_b

    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result v0

    .line 138
    if-eqz v0, :cond_a

    .line 139
    const v0, 0x7f0818f4    # @drawable/stat_sys_tty_mode 'res/drawable/stat_sys_tty_mode.xml'

    .line 141
    goto :goto_5

    .line 144
    :cond_a
    move v0, v1

    .line 145
    :goto_5
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;I)V

    .line 146
    :cond_b
    const-string p2, "mute"

    .line 149
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    move-result-object v0

    .line 154
    if-eqz v0, :cond_d

    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    move-result v0

    .line 160
    if-eqz v0, :cond_c

    .line 161
    const v0, 0x1080076    # @android:drawable/stat_notify_call_mute

    .line 163
    goto :goto_6

    .line 166
    :cond_c
    move v0, v1

    .line 167
    :goto_6
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;I)V

    .line 168
    :cond_d
    const-string/jumbo p2, "speakerphone"

    .line 171
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    move-result-object v0

    .line 177
    if-eqz v0, :cond_f

    .line 178
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    move-result v0

    .line 183
    if-eqz v0, :cond_e

    .line 184
    const v0, 0x1080087    # @android:drawable/stat_sys_speakerphone

    .line 186
    goto :goto_7

    .line 189
    :cond_e
    move v0, v1

    .line 190
    :goto_7
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;I)V

    .line 191
    :cond_f
    const-string p2, "cast"

    .line 194
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    move-result-object v0

    .line 199
    if-eqz v0, :cond_11

    .line 200
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    move-result v0

    .line 205
    if-eqz v0, :cond_10

    .line 206
    const v0, 0x7f08180a    # @drawable/stat_sys_cast 'res/drawable/stat_sys_cast.xml'

    .line 208
    goto :goto_8

    .line 211
    :cond_10
    move v0, v1

    .line 212
    :goto_8
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;I)V

    .line 213
    :cond_11
    const-string p2, "hotspot"

    .line 216
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    move-result-object p1

    .line 221
    if-eqz p1, :cond_13

    .line 222
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    move-result p1

    .line 227
    if-eqz p1, :cond_12

    .line 228
    const v1, 0x7f081833    # @drawable/stat_sys_hotspot 'res/drawable/stat_sys_hotspot.xml'

    .line 230
    :cond_12
    invoke-virtual {p0, p2, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;I)V

    .line 233
    :cond_13
    return-void
    .line 236
.end method

.method public final onDarkChanged(Ljava/util/ArrayList;FI)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-static {p1, p2, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Ljava/util/ArrayList;Landroid/view/View;I)I

    .line 3
    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setColor(I)V

    .line 7
    throw p2
    .line 10
.end method

.method public final onDemoModeFinished()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    .line 3
    const/4 p0, 0x0

    .line 5
    throw p0
    .line 6
.end method

.method public final onDemoModeStarted()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    .line 3
    const/4 p0, 0x0

    .line 5
    throw p0
    .line 6
.end method

.method public setColor(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    .line 2
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 5
    move-result v0

    .line 8
    if-ge p1, v0, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 15
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    .line 17
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setStaticDrawableColor(I)V

    .line 19
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    .line 22
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setDecorColor(I)V

    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    return-void
    .line 30
.end method

.method public final updateSlot(Ljava/lang/String;I)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 9
    move-result-object v2

    .line 12
    const/4 v0, 0x0

    .line 13
    move v1, v0

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 15
    move-result v3

    .line 18
    const/4 v8, 0x1

    .line 19
    const/4 v4, -0x1

    .line 20
    if-ge v1, v3, :cond_4

    .line 21
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 23
    move-result-object v3

    .line 26
    instance-of v5, v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 27
    if-nez v5, :cond_1

    .line 29
    goto :goto_1

    .line 31
    :cond_1
    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 32
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    .line 34
    move-result-object v5

    .line 37
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v5

    .line 41
    if-eqz v5, :cond_3

    .line 42
    if-nez p2, :cond_2

    .line 44
    goto :goto_2

    .line 46
    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    .line 47
    move-result-object p0

    .line 50
    iput-boolean v8, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 51
    iget-object p1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    .line 53
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 58
    invoke-static {p1, p2}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 59
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    .line 63
    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 65
    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable(Z)Z

    .line 68
    return-void

    .line 71
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 72
    goto :goto_0

    .line 74
    :cond_4
    move v1, v4

    .line 75
    :goto_2
    if-nez p2, :cond_6

    .line 76
    if-eq v1, v4, :cond_5

    .line 78
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 80
    :cond_5
    return-void

    .line 83
    :cond_6
    new-instance v9, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 84
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 86
    const/4 v5, 0x0

    .line 88
    const/4 v6, 0x0

    .line 89
    const-string v7, "Demo"

    .line 90
    move-object v1, v9

    .line 92
    move v4, p2

    .line 93
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 94
    iput-boolean v8, v9, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 97
    new-instance p2, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 99
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 101
    move-result-object v1

    .line 104
    const/4 v2, 0x0

    .line 105
    invoke-direct {p2, v1, p1, v2, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/ExpandedNotification;Z)V

    .line 106
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p2, v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 112
    iget p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    .line 115
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    .line 117
    iget p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    .line 120
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 122
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 125
    const/4 v1, -0x2

    .line 127
    invoke-direct {p1, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 128
    invoke-virtual {p0, p2, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 131
    return-void
    .line 134
.end method
