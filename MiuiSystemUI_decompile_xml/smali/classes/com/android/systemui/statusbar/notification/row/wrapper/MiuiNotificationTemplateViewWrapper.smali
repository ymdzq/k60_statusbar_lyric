.class public final Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mMainColumn:Landroid/view/View;

.field public mMiuiAction:Landroid/view/View;

.field public mProgressBar:Landroid/view/View;

.field public mRightIcon:Landroid/widget/ImageView;

.field public mText:Landroid/widget/TextView;

.field public mTimeLine1:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->resolveTemplateViews()V

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->handleTemplateViews()V

    .line 8
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    .line 15
    move-result p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    .line 21
    new-instance p3, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper$$ExternalSyntheticLambda1;

    .line 23
    invoke-direct {p3, p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;I)V

    .line 25
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 28
    return-void
    .line 31
.end method


# virtual methods
.method public final handleTemplateViews()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mMiuiAction:Landroid/view/View;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    const-string v3, "base"

    .line 17
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 19
    const v5, 0x7f070db8    # @dimen/notification_main_column_right_margin '10.91dp'

    .line 21
    const v6, 0x7f070de9    # @dimen/notification_right_icon_size '32.0dp'

    .line 24
    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mMiuiAction:Landroid/view/View;

    .line 29
    new-instance v7, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper$$ExternalSyntheticLambda0;

    .line 31
    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;)V

    .line 33
    invoke-virtual {v0, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 36
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->showRightIcon()Z

    .line 40
    move-result v0

    .line 43
    const v7, 0x7f07095b    # @dimen/miui_notification_content_margin_end '12.0dp'

    .line 44
    if-eqz v0, :cond_3

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->showTimeChronometer()Z

    .line 49
    move-result v0

    .line 52
    if-nez v0, :cond_3

    .line 53
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->getDimensionPixelSize(I)I

    .line 55
    move-result v0

    .line 58
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->getDimensionPixelSize(I)I

    .line 59
    move-result v8

    .line 62
    add-int/2addr v8, v0

    .line 63
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 67
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->getDimensionPixelSize(I)I

    .line 74
    move-result v0

    .line 77
    add-int/2addr v8, v0

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    .line 79
    invoke-static {v8, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->setViewMarginEnd(ILandroid/view/View;)V

    .line 81
    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->getDimensionPixelSize(I)I

    .line 85
    move-result v0

    .line 88
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    .line 89
    invoke-static {v0, v7}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->setViewMarginEnd(ILandroid/view/View;)V

    .line 91
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->showRightIcon()Z

    .line 94
    move-result v0

    .line 97
    const/16 v7, 0x8

    .line 98
    if-eqz v0, :cond_6

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mRightIcon:Landroid/widget/ImageView;

    .line 102
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 104
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->showTimeChronometer()Z

    .line 110
    move-result v8

    .line 113
    if-eqz v8, :cond_5

    .line 114
    const v8, 0x7f070de8    # @dimen/notification_right_icon_margin_top '24.0dp'

    .line 116
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->getDimensionPixelSize(I)I

    .line 119
    move-result v8

    .line 122
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 123
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 125
    move-result-object v4

    .line 128
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result v3

    .line 132
    if-eqz v3, :cond_4

    .line 133
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 135
    const v4, 0x7f07095d    # @dimen/miui_notification_content_margin_top '10.0dp'

    .line 137
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->getDimensionPixelSize(I)I

    .line 140
    move-result v4

    .line 143
    add-int/2addr v4, v3

    .line 144
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 145
    :cond_4
    const v3, 0x800035

    .line 147
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 150
    goto :goto_2

    .line 152
    :cond_5
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 153
    const v3, 0x800015

    .line 155
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 158
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mRightIcon:Landroid/widget/ImageView;

    .line 160
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mRightIcon:Landroid/widget/ImageView;

    .line 165
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    goto :goto_3

    .line 170
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mRightIcon:Landroid/widget/ImageView;

    .line 171
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mRightIcon:Landroid/widget/ImageView;

    .line 176
    const v3, 0x7f070de6    # @dimen/notification_right_icon_corner_radius '8.0dp'

    .line 178
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->getDimensionPixelSize(I)I

    .line 181
    move-result v3

    .line 184
    int-to-float v3, v3

    .line 185
    sget-object v4, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    .line 186
    new-instance v4, Lcom/android/systemui/statusbar/notification/NotificationUtil$1;

    .line 188
    invoke-direct {v4, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtil$1;-><init>(F)V

    .line 190
    invoke-virtual {v0, v4}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mTimeLine1:Landroid/view/View;

    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->showTimeChronometer()Z

    .line 201
    move-result v1

    .line 204
    if-eqz v1, :cond_7

    .line 205
    move v7, v2

    .line 207
    :cond_7
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->showRightIcon()Z

    .line 211
    move-result v0

    .line 214
    if-eqz v0, :cond_9

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->showTimeChronometer()Z

    .line 217
    move-result v0

    .line 220
    if-eqz v0, :cond_8

    .line 221
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->getDimensionPixelSize(I)I

    .line 223
    move-result v0

    .line 226
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->getDimensionPixelSize(I)I

    .line 227
    move-result v1

    .line 230
    add-int v2, v1, v0

    .line 231
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    .line 233
    invoke-static {v2, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->setViewMarginEnd(ILandroid/view/View;)V

    .line 235
    :cond_9
    return-void
    .line 238
.end method

.method public final onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->resolveTemplateViews()V

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->handleTemplateViews()V

    .line 8
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    .line 15
    move-result p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    .line 21
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper$$ExternalSyntheticLambda1;

    .line 23
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;I)V

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 28
    return-void
    .line 31
.end method

.method public final resolveTemplateViews()V
    .locals 2

    .line 1
    const v0, 0x7f0a06ae    # @id/notification_main_column

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 5
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    .line 11
    const v0, 0x7f0a07b4    # @id/right_icon

    .line 13
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/ImageView;

    .line 20
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mRightIcon:Landroid/widget/ImageView;

    .line 22
    const v0, 0x7f0a0966    # @id/text

    .line 24
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 31
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f0a0995    # @id/time_line_1

    .line 35
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mTimeLine1:Landroid/view/View;

    .line 42
    const v0, 0x7f0a073d    # @id/progress

    .line 44
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mProgressBar:Landroid/view/View;

    .line 51
    const v0, 0x7f0a05c2    # @id/miui_action

    .line 53
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mMiuiAction:Landroid/view/View;

    .line 60
    return-void
    .line 62
.end method

.method public final showRightIcon()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mMiuiAction:Landroid/view/View;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v1

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    return v1

    .line 18
    :cond_1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->showRightIcon()Z

    .line 19
    move-result p0

    .line 22
    return p0
    .line 23
.end method

.method public final showTimeChronometer()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mMiuiAction:Landroid/view/View;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    return v2

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mProgressBar:Landroid/view/View;

    .line 20
    instance-of v3, v0, Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 22
    if-eqz v3, :cond_2

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 26
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    goto :goto_1

    .line 32
    :cond_2
    move v1, v2

    .line 33
    :goto_1
    if-eqz v1, :cond_3

    .line 34
    return v2

    .line 36
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->showRightIcon()Z

    .line 37
    move-result v0

    .line 40
    if-eqz v0, :cond_5

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    .line 43
    if-eqz v0, :cond_4

    .line 45
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    .line 47
    move-result v0

    .line 50
    goto :goto_2

    .line 51
    :cond_4
    move v0, v2

    .line 52
    :goto_2
    const/4 v1, 0x2

    .line 53
    if-ge v0, v1, :cond_5

    .line 54
    return v2

    .line 56
    :cond_5
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->showTimeChronometer()Z

    .line 57
    move-result p0

    .line 60
    return p0
    .line 61
.end method
