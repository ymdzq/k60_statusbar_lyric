.class public abstract Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/TransformableView;


# instance fields
.field public mBackgroundColor:I

.field public final mContext:Landroid/content/Context;

.field public final mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mBackgroundColor:I

    .line 11
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 13
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 15
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onReinflated()V

    .line 19
    const p0, 0x1020006    # @android:id/icon

    .line 22
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object p0

    .line 28
    instance-of p2, p0, Landroid/widget/ImageView;

    .line 29
    if-eqz p2, :cond_6

    .line 31
    check-cast p0, Landroid/widget/ImageView;

    .line 33
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 35
    move-result-object p2

    .line 38
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 39
    const-string v1, " icon or sbn is null"

    .line 41
    const-string v2, "NotificationInjector"

    .line 43
    if-eqz p0, :cond_2

    .line 45
    if-nez p2, :cond_0

    .line 47
    goto :goto_0

    .line 49
    :cond_0
    sget-boolean p2, Lcom/miui/utils/configs/MiuiConfigs;->IS_INTERNATIONAL_BUILD:Z

    .line 50
    if-eqz p2, :cond_1

    .line 52
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->showMiuiStyle()Z

    .line 54
    move-result p2

    .line 57
    if-eqz p2, :cond_3

    .line 58
    :cond_1
    const-class p2, Lcom/miui/systemui/SettingsManager;

    .line 60
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    move-result-object p2

    .line 65
    check-cast p2, Lcom/miui/systemui/SettingsManager;

    .line 66
    iget-boolean p2, p2, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    .line 68
    if-eqz p2, :cond_3

    .line 70
    const/4 p2, 0x0

    .line 72
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 73
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 76
    goto :goto_1

    .line 79
    :cond_2
    :goto_0
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_3
    :goto_1
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 83
    move-result-object p2

    .line 86
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 87
    if-eqz p0, :cond_5

    .line 89
    if-nez p2, :cond_4

    .line 91
    goto :goto_2

    .line 93
    :cond_4
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->shouldSubstituteSmallIcon(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 94
    move-result p3

    .line 97
    if-eqz p3, :cond_6

    .line 98
    invoke-static {p1, p2, p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->applyAppIconAllowCustom(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/ExpandedNotification;Landroid/widget/ImageView;Z)V

    .line 100
    goto :goto_3

    .line 103
    :cond_5
    :goto_2
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_6
    :goto_3
    return-void
    .line 107
.end method

.method public static invertViewLuminosity(Landroid/view/View;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    new-instance v1, Landroid/graphics/ColorMatrix;

    .line 7
    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 9
    new-instance v2, Landroid/graphics/ColorMatrix;

    .line 12
    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 14
    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->setRGB2YUV()V

    .line 17
    const/16 v3, 0x14

    .line 20
    new-array v3, v3, [F

    .line 22
    fill-array-data v3, :array_0

    .line 24
    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 27
    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 30
    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->setYUV2RGB()V

    .line 33
    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 36
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    .line 39
    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 41
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 44
    const/4 v1, 0x2

    .line 47
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 48
    return-void

    .line 51
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 52
.end method

.method public static wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    move-result v0

    .line 5
    const-string v1, "oneLine_transparent"

    .line 6
    const-string v2, "oneLine"

    .line 8
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    const-string v5, "bigText"

    .line 12
    const-string v6, "bigPicture"

    .line 14
    const-string v7, "bigMediaNarrow"

    .line 16
    const-string v8, "media"

    .line 18
    const-string v9, "conversation"

    .line 20
    const v10, 0x1020511    # @android:id/switch_old

    .line 22
    const v11, 0x7f0a08e5    # @id/status_bar_latest_event_content

    .line 25
    if-ne v0, v11, :cond_2

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v12

    .line 37
    if-nez v12, :cond_1

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    goto :goto_0

    .line 46
    :cond_0
    move v0, v3

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    move v0, v4

    .line 49
    :goto_1
    if-eqz v0, :cond_2

    .line 50
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationOneLineViewWrapper;

    .line 52
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationOneLineViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 54
    goto/16 :goto_6

    .line 57
    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->showMiuiStyle()Z

    .line 59
    move-result v0

    .line 62
    if-eqz v0, :cond_e

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 65
    move-result v0

    .line 68
    if-ne v0, v11, :cond_a

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v2

    .line 78
    if-nez v2, :cond_4

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    goto :goto_2

    .line 87
    :cond_3
    move v0, v3

    .line 88
    goto :goto_3

    .line 89
    :cond_4
    :goto_2
    move v0, v4

    .line 90
    :goto_3
    if-eqz v0, :cond_5

    .line 91
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationOneLineViewWrapper;

    .line 93
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationOneLineViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 95
    goto/16 :goto_6

    .line 98
    :cond_5
    const-string v0, "base"

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 102
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result v0

    .line 109
    if-nez v0, :cond_9

    .line 110
    const-string v0, "big"

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 114
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    move-result v0

    .line 121
    if-eqz v0, :cond_6

    .line 122
    goto :goto_4

    .line 124
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 125
    move-result-object v0

    .line 128
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result v0

    .line 132
    if-eqz v0, :cond_7

    .line 133
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigPictureViewWrapper;

    .line 135
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigPictureViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 137
    goto/16 :goto_6

    .line 140
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 142
    move-result-object v0

    .line 145
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    move-result v0

    .line 149
    if-eqz v0, :cond_8

    .line 150
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;

    .line 152
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 154
    goto/16 :goto_6

    .line 157
    :cond_8
    const-string v0, "inbox"

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 161
    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    move-result v0

    .line 168
    if-eqz v0, :cond_10

    .line 169
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationInboxViewWrapper;

    .line 171
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationInboxViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 173
    goto :goto_6

    .line 176
    :cond_9
    :goto_4
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;

    .line 177
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 179
    goto :goto_6

    .line 182
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 183
    move-result v0

    .line 186
    if-ne v0, v10, :cond_c

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 189
    move-result-object v0

    .line 192
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    move-result v0

    .line 196
    if-eqz v0, :cond_b

    .line 197
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationConversationTemplateViewWrapper;

    .line 199
    move-object v1, p1

    .line 201
    check-cast v1, Lcom/android/internal/widget/ConversationLayout;

    .line 202
    invoke-direct {v0, p0, v1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationConversationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 204
    goto :goto_6

    .line 207
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 208
    move-result-object v0

    .line 211
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    move-result v0

    .line 215
    if-nez v0, :cond_10

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 218
    move-result-object v0

    .line 221
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    move-result v0

    .line 225
    if-eqz v0, :cond_d

    .line 226
    goto :goto_5

    .line 228
    :cond_c
    instance-of v0, p1, Landroid/view/NotificationHeaderView;

    .line 229
    if-eqz v0, :cond_d

    .line 231
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 233
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 235
    goto :goto_6

    .line 238
    :cond_d
    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapperInjector;->getMiuiCustomViewWrapper(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;

    .line 239
    move-result-object v0

    .line 242
    goto :goto_6

    .line 243
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 244
    move-result v0

    .line 247
    if-ne v0, v10, :cond_f

    .line 248
    goto :goto_5

    .line 250
    :cond_f
    instance-of v0, p1, Landroid/view/NotificationHeaderView;

    .line 251
    if-eqz v0, :cond_11

    .line 253
    :cond_10
    :goto_5
    const/4 v0, 0x0

    .line 255
    goto :goto_6

    .line 256
    :cond_11
    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapperInjector;->getMiuiCustomViewWrapper(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;

    .line 257
    move-result-object v0

    .line 260
    :goto_6
    if-eqz v0, :cond_12

    .line 261
    return-object v0

    .line 263
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 264
    move-result v0

    .line 267
    if-ne v0, v10, :cond_1d

    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 270
    move-result-object v0

    .line 273
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    move-result v0

    .line 277
    if-eqz v0, :cond_13

    .line 278
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationBigPictureTemplateViewWrapper;

    .line 280
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationBigPictureTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 282
    return-object v0

    .line 285
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 286
    move-result-object v0

    .line 289
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    move-result v0

    .line 293
    if-eqz v0, :cond_14

    .line 294
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationBigTextTemplateViewWrapper;

    .line 296
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationBigTextTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 298
    return-object v0

    .line 301
    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 302
    move-result-object v0

    .line 305
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    move-result v0

    .line 309
    if-nez v0, :cond_1c

    .line 310
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 312
    move-result-object v0

    .line 315
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    move-result v0

    .line 319
    if-eqz v0, :cond_15

    .line 320
    goto :goto_7

    .line 322
    :cond_15
    const-string v0, "messaging"

    .line 323
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 325
    move-result-object v1

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    move-result v0

    .line 332
    if-eqz v0, :cond_16

    .line 333
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;

    .line 335
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 337
    return-object v0

    .line 340
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 341
    move-result-object v0

    .line 344
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    move-result v0

    .line 348
    if-eqz v0, :cond_17

    .line 349
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;

    .line 351
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 353
    return-object v0

    .line 356
    :cond_17
    const-string v0, "call"

    .line 357
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 359
    move-result-object v1

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    move-result v0

    .line 366
    if-eqz v0, :cond_18

    .line 367
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;

    .line 369
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 371
    return-object v0

    .line 374
    :cond_18
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 375
    move-result-object v0

    .line 378
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 379
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 381
    move-result-object v0

    .line 384
    const-class v1, Landroid/app/Notification$DecoratedCustomViewStyle;

    .line 385
    invoke-virtual {v0, v1}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    .line 387
    move-result v0

    .line 390
    if-eqz v0, :cond_19

    .line 391
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;

    .line 393
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 395
    return-object v0

    .line 398
    :cond_19
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;->getWrappedCustomView(Landroid/view/View;)Landroid/view/View;

    .line 399
    move-result-object v0

    .line 402
    if-eqz v0, :cond_1a

    .line 403
    move v3, v4

    .line 405
    :cond_1a
    if-eqz v3, :cond_1b

    .line 406
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;

    .line 408
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 410
    return-object v0

    .line 413
    :cond_1b
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;

    .line 414
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 416
    return-object v0

    .line 419
    :cond_1c
    :goto_7
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    .line 420
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 422
    return-object v0

    .line 425
    :cond_1d
    instance-of v0, p1, Landroid/view/NotificationHeaderView;

    .line 426
    if-eqz v0, :cond_1e

    .line 428
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    .line 430
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 432
    return-object v0

    .line 435
    :cond_1e
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;

    .line 436
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 438
    return-object v0
    .line 441
.end method


# virtual methods
.method public childrenNeedInversion(ILandroid/view/ViewGroup;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getBackgroundColor(Landroid/view/View;)I

    .line 6
    move-result v1

    .line 9
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    .line 10
    move-result v2

    .line 13
    const/16 v3, 0xff

    .line 14
    if-eq v2, v3, :cond_1

    .line 16
    invoke-static {v1, p1}, Lcom/android/internal/util/ContrastColorUtil;->compositeColors(II)I

    .line 18
    move-result p1

    .line 21
    invoke-static {p1, v3}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 22
    move-result v1

    .line 25
    :cond_1
    move p1, v0

    .line 26
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 27
    move-result v2

    .line 30
    if-ge p1, v2, :cond_4

    .line 31
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 33
    move-result-object v2

    .line 36
    instance-of v3, v2, Landroid/widget/TextView;

    .line 37
    const/4 v4, 0x1

    .line 39
    if-eqz v3, :cond_2

    .line 40
    check-cast v2, Landroid/widget/TextView;

    .line 42
    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 44
    move-result v2

    .line 47
    invoke-static {v2, v1}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    .line 48
    move-result-wide v2

    .line 51
    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    .line 52
    cmpg-double v2, v2, v5

    .line 54
    if-gez v2, :cond_3

    .line 56
    return v4

    .line 58
    :cond_2
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 59
    if-eqz v3, :cond_3

    .line 61
    check-cast v2, Landroid/view/ViewGroup;

    .line 63
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->childrenNeedInversion(ILandroid/view/ViewGroup;)Z

    .line 65
    move-result v2

    .line 68
    if-eqz v2, :cond_3

    .line 69
    return v4

    .line 71
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 72
    goto :goto_0

    .line 74
    :cond_4
    return v0
    .line 75
.end method

.method public final getBackgroundColor(Landroid/view/View;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p1

    .line 9
    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    .line 10
    if-eqz v1, :cond_2

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mContext:Landroid/content/Context;

    .line 14
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isBackgroundBlurOpened(Landroid/content/Context;)Z

    .line 16
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    return v0

    .line 22
    :cond_1
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    .line 23
    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 25
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_2
    return v0
    .line 30
.end method

.method public getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getCustomBackgroundColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mBackgroundColor:I

    .line 10
    :goto_0
    return p0
    .line 12
.end method

.method public getExpandButton()Landroid/view/View;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getExtraMeasureHeight()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getHeaderTranslation(Z)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getIcon()Lcom/android/internal/widget/CachingIconView;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getMinLayoutHeight()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getOriginalIconColor()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public getShelfTransformationTarget()Landroid/view/View;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final needsInversion(ILandroid/view/View;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    move-result-object v1

    .line 15
    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 16
    and-int/lit8 v1, v1, 0x30

    .line 18
    const/16 v2, 0x20

    .line 20
    const/4 v3, 0x1

    .line 22
    if-ne v1, v2, :cond_1

    .line 23
    move v1, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v1, v0

    .line 27
    :goto_0
    if-nez v1, :cond_2

    .line 28
    return v0

    .line 30
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 31
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 33
    move-result-object v1

    .line 36
    iget v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->targetSdk:I

    .line 37
    const/16 v2, 0x1d

    .line 39
    if-lt v1, v2, :cond_3

    .line 41
    return v0

    .line 43
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getBackgroundColor(Landroid/view/View;)I

    .line 44
    move-result v1

    .line 47
    if-nez v1, :cond_4

    .line 48
    goto :goto_1

    .line 50
    :cond_4
    move p1, v1

    .line 51
    :goto_1
    if-nez p1, :cond_5

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->resolveBackgroundColor()I

    .line 54
    move-result p1

    .line 57
    :cond_5
    const/4 v1, 0x3

    .line 58
    new-array v1, v1, [F

    .line 59
    fill-array-data v1, :array_0

    .line 61
    invoke-static {p1, v1}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 64
    aget v2, v1, v3

    .line 67
    const/4 v4, 0x0

    .line 69
    cmpl-float v2, v2, v4

    .line 70
    if-eqz v2, :cond_6

    .line 72
    return v0

    .line 74
    :cond_6
    if-nez v2, :cond_7

    .line 75
    const/4 v2, 0x2

    .line 77
    aget v1, v1, v2

    .line 78
    float-to-double v1, v1

    .line 80
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 81
    cmpl-double v1, v1, v4

    .line 83
    if-lez v1, :cond_7

    .line 85
    move v1, v3

    .line 87
    goto :goto_2

    .line 88
    :cond_7
    move v1, v0

    .line 89
    :goto_2
    if-eqz v1, :cond_8

    .line 90
    return v3

    .line 92
    :cond_8
    instance-of v1, p2, Landroid/view/ViewGroup;

    .line 93
    if-eqz v1, :cond_9

    .line 95
    check-cast p2, Landroid/view/ViewGroup;

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->childrenNeedInversion(ILandroid/view/ViewGroup;)Z

    .line 99
    move-result p0

    .line 102
    return p0

    .line 103
    :cond_9
    return v0

    .line 104
    nop

    .line 105
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
    .line 106
.end method

.method public abstract onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
.end method

.method public final onReinflated()V
    .locals 3

    .line 1
    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;

    .line 2
    xor-int/lit8 v0, v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mBackgroundColor:I

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getBackgroundColor(Landroid/view/View;)I

    .line 13
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    iput v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mBackgroundColor:I

    .line 19
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    .line 21
    invoke-direct {p0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 23
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 26
    :cond_1
    return-void
    .line 29
.end method

.method public final resolveBackgroundColor()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getCustomBackgroundColor()I

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return v0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p0

    .line 14
    const v0, 0x1010031    # @android:attr/colorBackground

    .line 15
    invoke-static {v0, p0}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 18
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 22
    move-result p0

    .line 25
    return p0
    .line 26
.end method

.method public setAnimationsRunning(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setContentHeight(II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setFeedbackIcon(Lcom/android/systemui/statusbar/notification/FeedbackIcon;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setHeaderVisibleAmount(F)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setIsChildInGroup(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setLegacy(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setNotificationFaded(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getIcon()Lcom/android/internal/widget/CachingIconView;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationFadeAware;->setLayerTypeForFaded(Landroid/view/View;Z)V

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getExpandButton()Landroid/view/View;

    .line 9
    move-result-object p0

    .line 12
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationFadeAware;->setLayerTypeForFaded(Landroid/view/View;Z)V

    .line 13
    return-void
    .line 16
.end method

.method public setRecentlyAudiblyAlerted(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setRemoteInputVisible(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setVisible(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 8
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x4

    .line 15
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    return-void
    .line 19
.end method

.method public shouldClipToRounding(Z)Z
    .locals 0

    .line 1
    instance-of p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;

    .line 2
    return p0
    .line 4
.end method

.method public transformFrom(FLcom/android/systemui/statusbar/TransformableView;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;FZ)V

    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 2

    const-wide/16 v0, 0xd2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(JLandroid/view/View;)V

    return-void
.end method

.method public transformTo(FLcom/android/systemui/statusbar/TransformableView;)V
    .locals 0

    const/4 p2, 0x1

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;FZ)V

    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0xd2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-static {p0, v0, v1, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;JLjava/lang/Runnable;)V

    return-void
.end method

.method public updateExpandability(ZLandroid/view/View$OnClickListener;Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
