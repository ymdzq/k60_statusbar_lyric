.class public final synthetic Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/net/Uri;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Landroid/content/Context;Landroid/net/Uri;ZLandroid/content/res/Resources;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iput-object p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    iput-boolean p4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$3:Z

    iput-object p5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$4:Landroid/content/res/Resources;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Landroid/net/Uri;Landroid/content/Context;ZLandroid/content/res/Resources;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iput-object p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$3:Z

    iput-object p5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$4:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    const-string v4, "android:smart_actions_enabled"

    .line 6
    const-string v5, "android:screenshot_id"

    .line 8
    const-string v6, "android:screenshot_action_intent"

    .line 10
    const v7, 0x10008000

    .line 12
    const/4 v8, 0x2

    .line 15
    const/4 v9, 0x1

    .line 16
    const-string v10, "image/png"

    .line 17
    packed-switch v1, :pswitch_data_0

    .line 19
    goto/16 :goto_0

    .line 22
    :pswitch_0
    iget-object v1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    .line 24
    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 26
    iget-object v11, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    .line 28
    iget-boolean v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$3:Z

    .line 30
    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$4:Landroid/content/res/Resources;

    .line 32
    iget-object v12, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSharedElementTransition:Ljava/util/function/Supplier;

    .line 34
    invoke-interface {v12}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 36
    move-result-object v12

    .line 39
    move-object v13, v12

    .line 40
    check-cast v13, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;

    .line 41
    const v12, 0x7f1302e1    # @string/config_screenshotEditor ''

    .line 43
    invoke-virtual {v15, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object v12

    .line 49
    new-instance v2, Landroid/content/Intent;

    .line 50
    const-string v3, "android.intent.action.EDIT"

    .line 52
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    move-result v16

    .line 60
    if-nez v16, :cond_0

    .line 61
    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 63
    move-result-object v12

    .line 66
    invoke-virtual {v2, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 67
    :cond_0
    invoke-virtual {v2, v11, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    const/4 v12, 0x0

    .line 82
    const/high16 v7, 0x4000000

    .line 83
    iget-object v8, v13, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;->bundle:Landroid/os/Bundle;

    .line 85
    sget-object v16, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 87
    move-object v11, v15

    .line 89
    move-object v10, v13

    .line 90
    move-object v13, v2

    .line 91
    move v2, v14

    .line 92
    move v14, v7

    .line 93
    move-object v7, v15

    .line 94
    move-object v15, v8

    .line 95
    invoke-static/range {v11 .. v16}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 96
    move-result-object v8

    .line 99
    iget-object v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {v11}, Landroid/content/Context;->getUserId()I

    .line 102
    move-result v11

    .line 105
    new-instance v12, Landroid/content/Intent;

    .line 106
    const-class v13, Lcom/android/systemui/screenshot/ActionProxyReceiver;

    .line 108
    invoke-direct {v12, v7, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    invoke-virtual {v12, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    move-result-object v6

    .line 116
    iget-object v1, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    .line 117
    invoke-virtual {v6, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    move-result-object v1

    .line 122
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    move-result-object v1

    .line 126
    const-string v2, "android:screenshot_override_transition"

    .line 127
    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    move-result-object v1

    .line 132
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    move-result-object v1

    .line 136
    const/high16 v2, 0x10000000

    .line 137
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    move-result-object v1

    .line 142
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 143
    const/high16 v3, 0x14000000

    .line 145
    invoke-static {v7, v11, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 147
    move-result-object v1

    .line 150
    new-instance v2, Landroid/app/Notification$Action$Builder;

    .line 151
    const v3, 0x7f081199    # @drawable/ic_screenshot_edit 'res/drawable/ic_screenshot_edit.xml'

    .line 153
    invoke-static {v0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    .line 156
    move-result-object v3

    .line 159
    const v4, 0x10408fe    # @android:string/time_picker_hour_label

    .line 160
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 163
    move-result-object v0

    .line 166
    invoke-direct {v2, v3, v0, v1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 167
    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 170
    return-object v10

    .line 173
    :goto_0
    iget-object v1, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    .line 174
    iget-object v2, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    .line 176
    iget-object v3, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 178
    iget-boolean v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$3:Z

    .line 180
    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$$ExternalSyntheticLambda0;->f$4:Landroid/content/res/Resources;

    .line 182
    iget-object v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSharedElementTransition:Ljava/util/function/Supplier;

    .line 184
    invoke-interface {v11}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 186
    move-result-object v11

    .line 189
    move-object v14, v11

    .line 190
    check-cast v14, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;

    .line 191
    new-instance v11, Landroid/content/Intent;

    .line 193
    const-string v13, "android.intent.action.SEND"

    .line 195
    invoke-direct {v11, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v11, v2, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v10, "android.intent.extra.STREAM"

    .line 203
    invoke-virtual {v11, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 205
    new-instance v10, Landroid/content/ClipData;

    .line 208
    new-instance v12, Landroid/content/ClipDescription;

    .line 210
    const-string/jumbo v16, "text/plain"

    .line 212
    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    .line 215
    move-result-object v7

    .line 218
    const-string v8, "content"

    .line 219
    invoke-direct {v12, v8, v7}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    .line 221
    new-instance v7, Landroid/content/ClipData$Item;

    .line 224
    invoke-direct {v7, v2}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 226
    invoke-direct {v10, v12, v7}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 229
    invoke-virtual {v11, v10}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 232
    iget-wide v7, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 235
    invoke-static {v7, v8}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->getSubjectString(J)Ljava/lang/String;

    .line 237
    move-result-object v2

    .line 240
    const-string v7, "android.intent.extra.SUBJECT"

    .line 241
    invoke-virtual {v11, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {v11, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 246
    move-result-object v2

    .line 249
    const/4 v7, 0x2

    .line 250
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 251
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    .line 254
    move-result v2

    .line 257
    const/4 v7, 0x0

    .line 258
    invoke-static {v11, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 259
    move-result-object v7

    .line 262
    const v8, 0x10008000

    .line 263
    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 266
    move-result-object v7

    .line 269
    invoke-virtual {v7, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 270
    move-result-object v7

    .line 273
    const/4 v12, 0x0

    .line 274
    const/high16 v8, 0x14000000

    .line 275
    iget-object v10, v14, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;->bundle:Landroid/os/Bundle;

    .line 277
    sget-object v16, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 279
    move-object v11, v3

    .line 281
    move-object/from16 v17, v13

    .line 282
    move-object v13, v7

    .line 284
    move-object v7, v14

    .line 285
    move v14, v8

    .line 286
    move v8, v15

    .line 287
    move-object v15, v10

    .line 288
    invoke-static/range {v11 .. v16}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 289
    move-result-object v10

    .line 292
    new-instance v11, Landroid/content/Intent;

    .line 293
    const-class v12, Lcom/android/systemui/screenshot/ActionProxyReceiver;

    .line 295
    invoke-direct {v11, v3, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    invoke-virtual {v11, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 300
    move-result-object v6

    .line 303
    const-string v10, "android:screenshot_disallow_enter_pip"

    .line 304
    invoke-virtual {v6, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    move-result-object v6

    .line 309
    iget-object v1, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    .line 310
    invoke-virtual {v6, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    move-result-object v1

    .line 315
    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 316
    move-result-object v1

    .line 319
    move-object/from16 v4, v17

    .line 320
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    move-result-object v1

    .line 325
    const/high16 v4, 0x10000000

    .line 326
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 328
    move-result-object v1

    .line 331
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 332
    const/high16 v5, 0x14000000

    .line 334
    invoke-static {v3, v2, v1, v5, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 336
    move-result-object v1

    .line 339
    new-instance v2, Landroid/app/Notification$Action$Builder;

    .line 340
    const v3, 0x7f08119b    # @drawable/ic_screenshot_share 'res/drawable/ic_screenshot_share.xml'

    .line 342
    invoke-static {v0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    .line 345
    move-result-object v3

    .line 348
    const v4, 0x104092c    # @android:string/usb_ptp_notification_title

    .line 349
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 352
    move-result-object v0

    .line 355
    invoke-direct {v2, v3, v0, v1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 356
    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 359
    return-object v7

    .line 362
    nop

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 364
.end method
