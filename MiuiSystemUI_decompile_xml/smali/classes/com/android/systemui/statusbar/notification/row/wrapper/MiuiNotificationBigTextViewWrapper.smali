.class public final Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;
.super Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mBigText:Landroid/widget/TextView;

.field public mMainColumn:Landroid/view/View;

.field public mRightIcon:Landroid/widget/ImageView;

.field public mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->resolveBigTextViews()V

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->handleBigTextViews()V

    .line 8
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->mBigText:Landroid/widget/TextView;

    .line 11
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    .line 13
    move-result p1

    .line 16
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->mBigText:Landroid/widget/TextView;

    .line 17
    new-instance p3, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper$$ExternalSyntheticLambda0;

    .line 19
    invoke-direct {p3, p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;I)V

    .line 21
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 24
    return-void
    .line 27
.end method


# virtual methods
.method public final handleBigTextViews()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->showRightIcon()Z

    .line 2
    move-result v0

    .line 5
    const v1, 0x7f070db8    # @dimen/notification_main_column_right_margin '10.91dp'

    .line 6
    const v2, 0x7f070de9    # @dimen/notification_right_icon_size '32.0dp'

    .line 9
    const/4 v3, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->showTimeChronometer()Z

    .line 15
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->getDimensionPixelSize(I)I

    .line 21
    move-result v0

    .line 24
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->getDimensionPixelSize(I)I

    .line 25
    move-result v4

    .line 28
    add-int/2addr v4, v0

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->mMainColumn:Landroid/view/View;

    .line 30
    invoke-static {v4, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->setViewMarginEnd(ILandroid/view/View;)V

    .line 32
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->mMainColumn:Landroid/view/View;

    .line 36
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->setViewMarginEnd(ILandroid/view/View;)V

    .line 38
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->showRightIcon()Z

    .line 41
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->mRightIcon:Landroid/widget/ImageView;

    .line 47
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 49
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 53
    const v4, 0x7f07095d    # @dimen/miui_notification_content_margin_top '10.0dp'

    .line 55
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->getDimensionPixelSize(I)I

    .line 58
    move-result v4

    .line 61
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->showTimeChronometer()Z

    .line 64
    move-result v4

    .line 67
    if-eqz v4, :cond_1

    .line 68
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 70
    const v5, 0x7f070de8    # @dimen/notification_right_icon_margin_top '24.0dp'

    .line 72
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->getDimensionPixelSize(I)I

    .line 75
    move-result v5

    .line 78
    add-int/2addr v5, v4

    .line 79
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 80
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->mRightIcon:Landroid/widget/ImageView;

    .line 82
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->mRightIcon:Landroid/widget/ImageView;

    .line 87
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    goto :goto_1

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->mRightIcon:Landroid/widget/ImageView;

    .line 93
    const/16 v4, 0x8

    .line 95
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->mRightIcon:Landroid/widget/ImageView;

    .line 100
    const v4, 0x7f070de6    # @dimen/notification_right_icon_corner_radius '8.0dp'

    .line 102
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->getDimensionPixelSize(I)I

    .line 105
    move-result v4

    .line 108
    int-to-float v4, v4

    .line 109
    sget-object v5, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    .line 110
    new-instance v5, Lcom/android/systemui/statusbar/notification/NotificationUtil$1;

    .line 112
    invoke-direct {v5, v4}, Lcom/android/systemui/statusbar/notification/NotificationUtil$1;-><init>(F)V

    .line 114
    invoke-virtual {v0, v5}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 117
    const/4 v4, 0x1

    .line 120
    invoke-virtual {v0, v4}, Landroid/view/View;->setClipToOutline(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->showRightIcon()Z

    .line 124
    move-result v0

    .line 127
    if-eqz v0, :cond_4

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->showTimeChronometer()Z

    .line 130
    move-result v0

    .line 133
    if-eqz v0, :cond_3

    .line 134
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->getDimensionPixelSize(I)I

    .line 136
    move-result v0

    .line 139
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->getDimensionPixelSize(I)I

    .line 140
    move-result v1

    .line 143
    add-int v3, v1, v0

    .line 144
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->mBigText:Landroid/widget/TextView;

    .line 146
    invoke-static {v3, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->setViewMarginEnd(ILandroid/view/View;)V

    .line 148
    :cond_4
    return-void
    .line 151
.end method

.method public final onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->resolveBigTextViews()V

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->handleBigTextViews()V

    .line 8
    return-void
    .line 11
.end method

.method public final resolveBigTextViews()V
    .locals 3

    .line 1
    const v0, 0x7f0a06ae    # @id/notification_main_column

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 5
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->mMainColumn:Landroid/view/View;

    .line 11
    const v0, 0x7f0a07b4    # @id/right_icon

    .line 13
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/ImageView;

    .line 20
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->mRightIcon:Landroid/widget/ImageView;

    .line 22
    const v0, 0x7f0a09a2    # @id/id_0x7f0a09a2

    .line 24
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 31
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->mTitle:Landroid/widget/TextView;

    .line 33
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->mTitle:Landroid/widget/TextView;

    .line 39
    const/4 v2, 0x3

    .line 41
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 42
    const v0, 0x7f0a0134    # @id/big_text

    .line 45
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/TextView;

    .line 52
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->mBigText:Landroid/widget/TextView;

    .line 54
    return-void
    .line 56
.end method

.method public final showTimeChronometer()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 8
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 10
    move-result-object v0

    .line 13
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 14
    const-string v2, "android.progressMax"

    .line 16
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 19
    move-result v1

    .line 22
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 23
    const-string v2, "android.progressIndeterminate"

    .line 25
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 27
    move-result v0

    .line 30
    if-nez v1, :cond_1

    .line 31
    if-eqz v0, :cond_0

    .line 33
    goto :goto_0

    .line 35
    :cond_0
    move v0, v3

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 38
    :goto_1
    if-eqz v0, :cond_2

    .line 39
    return v3

    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->showRightIcon()Z

    .line 42
    move-result v0

    .line 45
    if-eqz v0, :cond_5

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->mTitle:Landroid/widget/TextView;

    .line 48
    if-eqz v0, :cond_3

    .line 50
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    .line 52
    move-result v0

    .line 55
    goto :goto_2

    .line 56
    :cond_3
    move v0, v3

    .line 57
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->mBigText:Landroid/widget/TextView;

    .line 58
    if-eqz v1, :cond_4

    .line 60
    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    .line 62
    move-result v1

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    move v1, v3

    .line 67
    :goto_3
    add-int/2addr v1, v0

    .line 68
    const/4 v0, 0x3

    .line 69
    if-ge v1, v0, :cond_5

    .line 70
    return v3

    .line 72
    :cond_5
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->showTimeChronometer()Z

    .line 73
    move-result p0

    .line 76
    return p0
    .line 77
.end method
