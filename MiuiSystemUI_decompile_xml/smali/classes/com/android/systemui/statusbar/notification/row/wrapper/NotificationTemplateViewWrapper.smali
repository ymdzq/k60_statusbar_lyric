.class public Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mActions:Lcom/android/internal/widget/NotificationActionListLayout;

.field public mActionsContainer:Landroid/view/View;

.field public final mAllowHideHeader:Z

.field public mCanHideHeader:Z

.field public final mCancelledPendingIntents:Landroid/util/ArraySet;

.field public final mFullHeaderTranslation:I

.field public mHeaderTranslation:F

.field public mLeftIcon:Landroid/widget/ImageView;

.field public mProgressBar:Landroid/widget/ProgressBar;

.field public mRemoteInputHistory:Landroid/view/View;

.field public mRightIcon:Landroid/widget/ImageView;

.field public mSmartReplyContainer:Landroid/view/View;

.field public mText:Landroid/widget/TextView;

.field public mTitle:Landroid/widget/TextView;

.field public mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 2
    new-instance p2, Landroid/util/ArraySet;

    .line 5
    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mCancelledPendingIntents:Landroid/util/ArraySet;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object p2

    .line 15
    const p3, 0x7f050086    # @bool/heads_up_notification_hides_header 'false'

    .line 16
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 19
    move-result p2

    .line 22
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mAllowHideHeader:Z

    .line 23
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 25
    new-instance p3, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$1;

    .line 27
    invoke-direct {p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$1;-><init>()V

    .line 29
    iget-object p2, p2, Lcom/android/systemui/statusbar/ViewTransformationHelper;->mCustomTransformations:Landroid/util/ArrayMap;

    .line 32
    const/4 v0, 0x2

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v0

    .line 38
    invoke-virtual {p2, v0, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object p2

    .line 45
    const p3, 0x105020f    # @android:dimen/notification_header_padding_top

    .line 46
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 49
    move-result p2

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object p1

    .line 56
    const p3, 0x1050212    # @android:dimen/notification_header_shrink_min_width

    .line 57
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 60
    move-result p1

    .line 63
    sub-int/2addr p2, p1

    .line 64
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mFullHeaderTranslation:I

    .line 65
    return-void
    .line 67
.end method


# virtual methods
.method public final getExtraMeasureHeight()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationActionListLayout;->getExtraMeasureHeight()I

    .line 7
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mRemoteInputHistory:Landroid/view/View;

    .line 13
    if-eqz v2, :cond_1

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 17
    move-result v2

    .line 20
    const/16 v3, 0x8

    .line 21
    if-eq v2, v3, :cond_1

    .line 23
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 27
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object p0

    .line 34
    const v2, 0x7f07101f    # @dimen/remote_input_history_extra_height '60.0dp'

    .line 35
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    move-result p0

    .line 41
    add-int/2addr v0, p0

    .line 42
    :cond_1
    add-int/2addr v0, v1

    .line 43
    return v0
    .line 44
.end method

.method public final getHeaderTranslation(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mCanHideHeader:Z

    .line 4
    if-eqz p1, :cond_0

    .line 6
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mFullHeaderTranslation:I

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mHeaderTranslation:F

    .line 11
    float-to-int p0, p0

    .line 13
    :goto_0
    return p0
    .line 14
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 6
    const v1, 0x102049b    # @android:id/scrim

    .line 8
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 11
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object v1

    .line 16
    check-cast v1, Landroid/widget/ImageView;

    .line 17
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mRightIcon:Landroid/widget/ImageView;

    .line 19
    const v3, 0x7f0a042c    # @id/image_icon_tag

    .line 21
    if-eqz v1, :cond_2

    .line 24
    sget-object v4, Lcom/android/systemui/statusbar/notification/ImageTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    .line 26
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 28
    move-result-object v4

    .line 31
    iget-object v5, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 32
    const-string v6, "android.showBigPictureWhenCollapsed"

    .line 34
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 36
    move-result v5

    .line 39
    if-eqz v5, :cond_0

    .line 40
    const-class v5, Landroid/app/Notification$BigPictureStyle;

    .line 42
    invoke-virtual {v4, v5}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    .line 44
    move-result v5

    .line 47
    if-eqz v5, :cond_0

    .line 48
    iget-object v5, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 50
    invoke-static {v5}, Landroid/app/Notification$BigPictureStyle;->getPictureIcon(Landroid/os/Bundle;)Landroid/graphics/drawable/Icon;

    .line 52
    move-result-object v5

    .line 55
    if-eqz v5, :cond_0

    .line 56
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v4}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    .line 59
    move-result-object v5

    .line 62
    if-nez v5, :cond_1

    .line 63
    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 65
    if-eqz v4, :cond_1

    .line 67
    invoke-static {v4}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 69
    move-result-object v4

    .line 72
    move-object v5, v4

    .line 73
    :cond_1
    :goto_0
    invoke-virtual {v1, v3, v5}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 74
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mRightIcon:Landroid/widget/ImageView;

    .line 77
    sget-object v4, Lcom/android/systemui/statusbar/notification/TransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    .line 79
    const v4, 0x7f0a00a8    # @id/align_transform_end_tag

    .line 81
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 84
    invoke-virtual {v1, v4, v5}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 86
    :cond_2
    const v1, 0x102038f    # @android:id/list_item

    .line 89
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    move-result-object v1

    .line 95
    check-cast v1, Landroid/widget/ImageView;

    .line 96
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mLeftIcon:Landroid/widget/ImageView;

    .line 98
    if-eqz v1, :cond_4

    .line 100
    sget-object v4, Lcom/android/systemui/statusbar/notification/ImageTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    .line 102
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 104
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    .line 108
    move-result-object v4

    .line 111
    if-nez v4, :cond_3

    .line 112
    iget-object v0, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 114
    if-eqz v0, :cond_3

    .line 116
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 118
    move-result-object v4

    .line 121
    :cond_3
    invoke-virtual {v1, v3, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 122
    :cond_4
    const v0, 0x1020016    # @android:id/title

    .line 125
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    move-result-object v0

    .line 131
    check-cast v0, Landroid/widget/TextView;

    .line 132
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    .line 134
    const v0, 0x1020532    # @android:id/textPassword

    .line 136
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    move-result-object v0

    .line 142
    check-cast v0, Landroid/widget/TextView;

    .line 143
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    .line 145
    const v0, 0x102000d    # @android:id/progress

    .line 147
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    move-result-object v0

    .line 153
    instance-of v1, v0, Landroid/widget/ProgressBar;

    .line 154
    if-eqz v1, :cond_5

    .line 156
    check-cast v0, Landroid/widget/ProgressBar;

    .line 158
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    .line 160
    goto :goto_1

    .line 162
    :cond_5
    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    .line 164
    :goto_1
    const v0, 0x10204ec    # @android:id/specialUse

    .line 166
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 169
    move-result-object v0

    .line 172
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mSmartReplyContainer:Landroid/view/View;

    .line 173
    const v0, 0x10201ce    # @android:id/actions_container_layout

    .line 175
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    move-result-object v0

    .line 181
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    .line 182
    const v0, 0x10201cd    # @android:id/actions_container

    .line 184
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 187
    move-result-object v0

    .line 190
    check-cast v0, Lcom/android/internal/widget/NotificationActionListLayout;

    .line 191
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    .line 193
    const v0, 0x1020404    # @android:id/numberPassword

    .line 195
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 198
    move-result-object v0

    .line 201
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mRemoteInputHistory:Landroid/view/View;

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    .line 204
    const/4 v1, 0x0

    .line 206
    if-eqz v0, :cond_a

    .line 207
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    .line 209
    move-result v0

    .line 212
    move v2, v1

    .line 213
    :goto_2
    if-ge v2, v0, :cond_a

    .line 214
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    .line 216
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    .line 218
    move-result-object v3

    .line 221
    check-cast v3, Landroid/widget/Button;

    .line 222
    new-instance v4, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda1;

    .line 224
    const/4 v5, 0x3

    .line 226
    invoke-direct {v4, v5, p0, v3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 227
    const v5, 0x1020439    # @android:id/phrase

    .line 230
    invoke-virtual {v3, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 233
    move-result-object v5

    .line 236
    check-cast v5, Landroid/app/PendingIntent;

    .line 237
    if-nez v5, :cond_6

    .line 239
    goto :goto_3

    .line 241
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mCancelledPendingIntents:Landroid/util/ArraySet;

    .line 242
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 244
    move-result v6

    .line 247
    if-eqz v6, :cond_7

    .line 248
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda1;->run()V

    .line 250
    goto :goto_3

    .line 253
    :cond_7
    new-instance v6, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda0;

    .line 254
    invoke-direct {v6, p0, v5, v4}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda1;)V

    .line 256
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 259
    if-nez v4, :cond_8

    .line 261
    const-class v4, Lcom/android/systemui/UiOffloadThread;

    .line 263
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 265
    move-result-object v4

    .line 268
    check-cast v4, Lcom/android/systemui/UiOffloadThread;

    .line 269
    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 271
    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    .line 273
    move-result v4

    .line 276
    if-eqz v4, :cond_9

    .line 277
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 279
    new-instance v7, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda1;

    .line 281
    invoke-direct {v7, v1, v5, v6}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 283
    invoke-virtual {v4, v7}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    .line 286
    :cond_9
    new-instance v4, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$2;

    .line 289
    invoke-direct {v4, p0, v5, v6}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$2;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda0;)V

    .line 291
    invoke-virtual {v3, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 294
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 297
    goto :goto_2

    .line 299
    :cond_a
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 300
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mAllowHideHeader:Z

    .line 303
    if-eqz v0, :cond_c

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 307
    if-eqz v0, :cond_c

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mRightIcon:Landroid/widget/ImageView;

    .line 311
    if-eqz v0, :cond_b

    .line 313
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    .line 315
    move-result v0

    .line 318
    if-eqz v0, :cond_c

    .line 319
    :cond_b
    const/4 v1, 0x1

    .line 321
    :cond_c
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mCanHideHeader:Z

    .line 322
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getHeaderVisibleAmount()F

    .line 324
    move-result v0

    .line 327
    const/high16 v1, 0x3f800000    # 1.0f

    .line 328
    cmpl-float v0, v0, v1

    .line 330
    if-eqz v0, :cond_d

    .line 332
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getHeaderVisibleAmount()F

    .line 334
    move-result p1

    .line 337
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->setHeaderVisibleAmount(F)V

    .line 338
    :cond_d
    return-void
    .line 341
.end method

.method public final setContentHeight(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 6
    move-result p1

    .line 9
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 14
    move-result v0

    .line 17
    sub-int/2addr p1, v0

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->getHeaderTranslation(Z)I

    .line 20
    move-result p0

    .line 23
    sub-int/2addr p1, p0

    .line 24
    int-to-float p0, p1

    .line 25
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 26
    :cond_0
    return-void
    .line 29
.end method

.method public final setHeaderVisibleAmount(F)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mCanHideHeader:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Landroid/view/NotificationHeaderView;->setAlpha(F)V

    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    sub-float/2addr v0, p1

    .line 15
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mFullHeaderTranslation:I

    .line 16
    int-to-float p1, p1

    .line 18
    mul-float/2addr v0, p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mHeaderTranslation:F

    .line 22
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 26
    return-void
    .line 29
.end method

.method public shouldClipToRounding(Z)Z
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    if-eqz p1, :cond_1

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    .line 10
    if-eqz p0, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 14
    move-result p0

    .line 17
    const/16 p1, 0x8

    .line 18
    if-eq p0, p1, :cond_1

    .line 20
    goto :goto_0

    .line 22
    :cond_1
    const/4 v1, 0x0

    .line 23
    :goto_0
    return v1
.end method

.method public updateTransformedTypes()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->updateTransformedTypes()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    .line 15
    if-eqz v0, :cond_1

    .line 17
    const/4 v2, 0x2

    .line 19
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mRightIcon:Landroid/widget/ImageView;

    .line 23
    if-eqz v0, :cond_2

    .line 25
    const/4 v2, 0x3

    .line 27
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    .line 31
    if-eqz v0, :cond_3

    .line 33
    const/4 v2, 0x4

    .line 35
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 36
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mLeftIcon:Landroid/widget/ImageView;

    .line 39
    filled-new-array {v0}, [Landroid/view/View;

    .line 41
    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->addViewsTransformingToSimilar([Landroid/view/View;)V

    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mSmartReplyContainer:Landroid/view/View;

    .line 48
    filled-new-array {v0}, [Landroid/view/View;

    .line 50
    move-result-object v0

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->addTransformedViews([Landroid/view/View;)V

    .line 54
    return-void
    .line 57
.end method
