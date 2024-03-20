.class public final Lcom/android/systemui/clipboardoverlay/ClipboardListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# static fields
.field static final EXTRA_SUPPRESS_OVERLAY:Ljava/lang/String; = "com.android.systemui.SUPPRESS_CLIPBOARD_OVERLAY"

.field static final SHELL_PACKAGE:Ljava/lang/String; = "com.android.shell"


# instance fields
.field public final mClipboardManager:Landroid/content/ClipboardManager;

.field public mClipboardOverlay:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

.field public final mClipboardToast:Lcom/android/systemui/clipboardoverlay/ClipboardToast;

.field public final mContext:Landroid/content/Context;

.field public final mOverlayProvider:Ljavax/inject/Provider;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/inject/Provider;Lcom/android/systemui/clipboardoverlay/ClipboardToast;Landroid/content/ClipboardManager;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mOverlayProvider:Ljavax/inject/Provider;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardToast:Lcom/android/systemui/clipboardoverlay/ClipboardToast;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardManager:Landroid/content/ClipboardManager;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 13
    return-void
    .line 15
.end method

.method public static shouldSuppressOverlay(Landroid/content/ClipData;Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    const-string p2, "com.android.shell"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    return v0

    .line 13
    :cond_0
    if-eqz p0, :cond_2

    .line 14
    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 16
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    .line 20
    move-result-object p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 27
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    .line 31
    move-result-object p0

    .line 34
    const-string p1, "com.android.systemui.SUPPRESS_CLIPBOARD_OVERLAY"

    .line 35
    invoke-virtual {p0, p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 37
    move-result p0

    .line 40
    return p0

    .line 41
    :cond_2
    :goto_0
    return v0
    .line 42
.end method


# virtual methods
.method public final onPrimaryClipChanged()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardManager:Landroid/content/ClipboardManager;

    .line 4
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    .line 6
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardManager:Landroid/content/ClipboardManager;

    .line 13
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClipSource()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 18
    iget-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardManager:Landroid/content/ClipboardManager;

    .line 19
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 21
    move-result-object v3

    .line 24
    const-string/jumbo v2, "ro.boot.qemu"

    .line 25
    const/4 v11, 0x0

    .line 28
    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 29
    move-result v2

    .line 32
    invoke-static {v3, v1, v2}, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->shouldSuppressOverlay(Landroid/content/ClipData;Ljava/lang/String;Z)Z

    .line 33
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    const-string v0, "ClipboardListener"

    .line 39
    const-string v1, "Clipboard overlay suppressed."

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void

    .line 46
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 49
    move-result-object v2

    .line 52
    const-string/jumbo v4, "user_setup_complete"

    .line 53
    invoke-static {v2, v4, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 56
    move-result v2

    .line 59
    const/4 v12, 0x1

    .line 60
    if-ne v2, v12, :cond_2

    .line 61
    move v2, v12

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move v2, v11

    .line 65
    :goto_0
    if-eqz v2, :cond_1a

    .line 66
    if-eqz v3, :cond_1a

    .line 68
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    .line 70
    move-result v2

    .line 73
    if-nez v2, :cond_3

    .line 74
    goto/16 :goto_13

    .line 76
    :cond_3
    iget-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardOverlay:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    .line 78
    if-nez v2, :cond_4

    .line 80
    iget-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mOverlayProvider:Ljavax/inject/Provider;

    .line 82
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 87
    check-cast v2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    .line 88
    iput-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardOverlay:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    .line 90
    iget-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 92
    sget-object v4, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_ENTERED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 94
    invoke-interface {v2, v4, v11, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 96
    goto :goto_1

    .line 99
    :cond_4
    iget-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 100
    sget-object v4, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_UPDATED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 102
    invoke-interface {v2, v4, v11, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 104
    :goto_1
    iget-object v13, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardOverlay:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    .line 107
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 112
    move-result-object v2

    .line 115
    if-eqz v2, :cond_5

    .line 116
    invoke-virtual {v2}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    .line 118
    move-result-object v2

    .line 121
    if-eqz v2, :cond_5

    .line 122
    const-string v4, "android.content.extra.IS_SENSITIVE"

    .line 124
    invoke-virtual {v2, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 126
    move-result v2

    .line 129
    move v14, v2

    .line 130
    goto :goto_2

    .line 131
    :cond_5
    move v14, v11

    .line 132
    :goto_2
    invoke-virtual {v3, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 133
    move-result-object v2

    .line 136
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 140
    move-result-object v4

    .line 143
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 144
    move-result v4

    .line 147
    sget-object v15, Lcom/android/systemui/clipboardoverlay/ClipboardModel$Type;->IMAGE:Lcom/android/systemui/clipboardoverlay/ClipboardModel$Type;

    .line 148
    sget-object v10, Lcom/android/systemui/clipboardoverlay/ClipboardModel$Type;->TEXT:Lcom/android/systemui/clipboardoverlay/ClipboardModel$Type;

    .line 150
    iget-object v9, v13, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mContext:Landroid/content/Context;

    .line 152
    if-nez v4, :cond_6

    .line 154
    move-object v8, v10

    .line 156
    goto :goto_5

    .line 157
    :cond_6
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 158
    move-result-object v4

    .line 161
    if-eqz v4, :cond_9

    .line 162
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 164
    move-result-object v4

    .line 167
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 168
    move-result-object v5

    .line 171
    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 172
    move-result-object v4

    .line 175
    if-eqz v4, :cond_7

    .line 176
    const-string v5, "image"

    .line 178
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 180
    move-result v4

    .line 183
    if-ne v4, v12, :cond_7

    .line 184
    move v4, v12

    .line 186
    goto :goto_3

    .line 187
    :cond_7
    move v4, v11

    .line 188
    :goto_3
    if-eqz v4, :cond_8

    .line 189
    move-object v8, v15

    .line 191
    goto :goto_5

    .line 192
    :cond_8
    sget-object v4, Lcom/android/systemui/clipboardoverlay/ClipboardModel$Type;->URI:Lcom/android/systemui/clipboardoverlay/ClipboardModel$Type;

    .line 193
    goto :goto_4

    .line 195
    :cond_9
    sget-object v4, Lcom/android/systemui/clipboardoverlay/ClipboardModel$Type;->OTHER:Lcom/android/systemui/clipboardoverlay/ClipboardModel$Type;

    .line 196
    :goto_4
    move-object v8, v4

    .line 198
    :goto_5
    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 199
    move-result-object v4

    .line 202
    invoke-virtual {v4}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    .line 203
    move-result-object v4

    .line 206
    if-eqz v4, :cond_b

    .line 207
    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 209
    move-result-object v4

    .line 212
    invoke-virtual {v4}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    .line 213
    move-result-object v4

    .line 216
    const-string v5, "android.content.extra.IS_REMOTE_DEVICE"

    .line 217
    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 219
    move-result v4

    .line 222
    if-eqz v4, :cond_b

    .line 223
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 225
    move-result v4

    .line 228
    if-eqz v4, :cond_a

    .line 229
    const-string/jumbo v4, "systemui"

    .line 231
    const-string v5, "clipboard_ignore_remote_copy_source"

    .line 234
    invoke-static {v4, v5, v11}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 236
    move-result v4

    .line 239
    if-eqz v4, :cond_a

    .line 240
    move/from16 v16, v12

    .line 242
    goto :goto_7

    .line 244
    :cond_a
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 245
    move-result-object v4

    .line 248
    const v5, 0x7f1302dd    # @string/config_remoteCopyPackage ''

    .line 249
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 252
    move-result-object v4

    .line 255
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 256
    move-result-object v4

    .line 259
    if-eqz v4, :cond_b

    .line 260
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 262
    move-result-object v4

    .line 265
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    move-result v4

    .line 269
    goto :goto_6

    .line 270
    :cond_b
    move v4, v11

    .line 271
    :goto_6
    move/from16 v16, v4

    .line 272
    :goto_7
    new-instance v7, Lcom/android/systemui/clipboardoverlay/ClipboardModel;

    .line 274
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 276
    move-result-object v6

    .line 279
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getTextLinks()Landroid/view/textclassifier/TextLinks;

    .line 280
    move-result-object v17

    .line 283
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 284
    move-result-object v5

    .line 287
    move-object v2, v7

    .line 288
    move-object v4, v1

    .line 289
    move-object/from16 v18, v5

    .line 290
    move-object v5, v8

    .line 292
    move-object/from16 v19, v6

    .line 293
    move-object v12, v7

    .line 295
    move-object/from16 v7, v17

    .line 296
    move-object v11, v8

    .line 298
    move-object/from16 v8, v18

    .line 299
    move-object v0, v9

    .line 301
    move v9, v14

    .line 302
    move-object/from16 v20, v15

    .line 303
    move-object v15, v10

    .line 305
    move/from16 v10, v16

    .line 306
    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/clipboardoverlay/ClipboardModel;-><init>(Landroid/content/ClipData;Ljava/lang/String;Lcom/android/systemui/clipboardoverlay/ClipboardModel$Type;Ljava/lang/CharSequence;Landroid/view/textclassifier/TextLinks;Landroid/net/Uri;ZZ)V

    .line 308
    iget-object v2, v13, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mExitAnimator:Landroid/animation/Animator;

    .line 311
    if-eqz v2, :cond_c

    .line 313
    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    .line 315
    move-result v2

    .line 318
    if-eqz v2, :cond_c

    .line 319
    const/4 v2, 0x1

    .line 321
    goto :goto_8

    .line 322
    :cond_c
    const/4 v2, 0x0

    .line 323
    :goto_8
    if-eqz v2, :cond_d

    .line 324
    iget-object v3, v13, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mExitAnimator:Landroid/animation/Animator;

    .line 326
    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 328
    :cond_d
    iget-object v3, v13, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mClipboardModel:Lcom/android/systemui/clipboardoverlay/ClipboardModel;

    .line 331
    if-nez v3, :cond_e

    .line 333
    goto :goto_9

    .line 335
    :cond_e
    iget-object v4, v3, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->source:Ljava/lang/String;

    .line 336
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 338
    move-result v4

    .line 341
    if-eqz v4, :cond_f

    .line 342
    iget-object v4, v3, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->type:Lcom/android/systemui/clipboardoverlay/ClipboardModel$Type;

    .line 344
    if-ne v11, v4, :cond_f

    .line 346
    iget-object v4, v3, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->text:Ljava/lang/CharSequence;

    .line 348
    move-object/from16 v5, v19

    .line 350
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 352
    move-result v4

    .line 355
    if-eqz v4, :cond_f

    .line 356
    iget-object v4, v3, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->uri:Landroid/net/Uri;

    .line 358
    move-object/from16 v5, v18

    .line 360
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 362
    move-result v4

    .line 365
    if-eqz v4, :cond_f

    .line 366
    iget-boolean v3, v3, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->isSensitive:Z

    .line 368
    if-ne v14, v3, :cond_f

    .line 370
    const/4 v3, 0x1

    .line 372
    goto :goto_a

    .line 373
    :cond_f
    :goto_9
    const/4 v3, 0x0

    .line 374
    :goto_a
    if-eqz v3, :cond_11

    .line 375
    if-eqz v2, :cond_10

    .line 377
    goto :goto_b

    .line 379
    :cond_10
    const/4 v2, 0x0

    .line 380
    goto :goto_c

    .line 381
    :cond_11
    :goto_b
    const/4 v2, 0x1

    .line 382
    :goto_c
    iput-object v12, v13, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mClipboardModel:Lcom/android/systemui/clipboardoverlay/ClipboardModel;

    .line 383
    iget-object v3, v13, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mClipboardLogger:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;

    .line 385
    iput-object v1, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;->mClipSource:Ljava/lang/String;

    .line 387
    sget-object v1, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 389
    iget-object v1, v13, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 391
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    const/4 v1, 0x2

    .line 396
    const/4 v4, 0x0

    .line 397
    iget-object v5, v13, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mTimeoutHandler:Lcom/android/systemui/screenshot/TimeoutHandler;

    .line 398
    if-eqz v2, :cond_17

    .line 400
    iput-object v4, v13, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mOnRemoteCopyTapped:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda4;

    .line 402
    iput-object v4, v13, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mOnShareTapped:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda3;

    .line 404
    iput-object v4, v13, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mOnPreviewTapped:Ljava/lang/Runnable;

    .line 406
    iget-object v2, v13, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mView:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;

    .line 408
    const/4 v6, 0x0

    .line 410
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 411
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 414
    iget-object v6, v2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainerBackground:Landroid/view/View;

    .line 417
    const/16 v7, 0x8

    .line 419
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 421
    iget-object v6, v2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mDismissButton:Landroid/view/View;

    .line 424
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 426
    iget-object v6, v2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mShareChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 429
    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 431
    iget-object v6, v2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mRemoteCopyChip:Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 434
    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 436
    const/4 v6, 0x0

    .line 439
    invoke-virtual {v2, v6}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->setEditAccessibilityAction(Z)V

    .line 440
    iget-object v6, v2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionChips:Ljava/util/ArrayList;

    .line 443
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 445
    move-result-object v6

    .line 448
    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 449
    move-result v7

    .line 452
    if-eqz v7, :cond_12

    .line 453
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 455
    move-result-object v7

    .line 458
    check-cast v7, Lcom/android/systemui/screenshot/OverlayActionChip;

    .line 459
    iget-object v8, v2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionContainer:Landroid/widget/LinearLayout;

    .line 461
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 463
    goto :goto_d

    .line 466
    :cond_12
    iget-object v6, v2, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->mActionChips:Ljava/util/ArrayList;

    .line 467
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 469
    invoke-virtual {v5, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 472
    const/4 v6, 0x0

    .line 475
    iput-boolean v6, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;->mGuarded:Z

    .line 476
    iput-object v4, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;->mClipSource:Ljava/lang/String;

    .line 478
    iget-object v6, v13, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mClipboardModel:Lcom/android/systemui/clipboardoverlay/ClipboardModel;

    .line 480
    iget-object v6, v6, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->source:Ljava/lang/String;

    .line 482
    iput-object v6, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;->mClipSource:Ljava/lang/String;

    .line 484
    iget-object v6, v13, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mWindow:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;

    .line 486
    iget-object v6, v6, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 488
    invoke-interface {v6}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 490
    move-result-object v6

    .line 493
    invoke-virtual {v6}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    .line 494
    move-result-object v6

    .line 497
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 498
    move-result v7

    .line 501
    invoke-virtual {v6, v7}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 502
    move-result-object v6

    .line 505
    iget v6, v6, Landroid/graphics/Insets;->bottom:I

    .line 506
    if-lez v6, :cond_13

    .line 508
    const/4 v6, 0x1

    .line 510
    goto :goto_e

    .line 511
    :cond_13
    const/4 v6, 0x0

    .line 512
    :goto_e
    iget-object v7, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 513
    if-eqz v6, :cond_14

    .line 515
    sget-object v6, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_SHOWN_MINIMIZED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 517
    iget-object v3, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;->mClipSource:Ljava/lang/String;

    .line 519
    const/4 v8, 0x0

    .line 521
    invoke-interface {v7, v6, v8, v3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 522
    const/4 v3, 0x1

    .line 525
    iput-boolean v3, v13, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mIsMinimized:Z

    .line 526
    invoke-virtual {v2, v3}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayView;->setMinimized(Z)V

    .line 528
    goto :goto_f

    .line 531
    :cond_14
    const/4 v8, 0x0

    .line 532
    sget-object v6, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_OVERLAY_SHOWN_EXPANDED:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 533
    iget-object v3, v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$ClipboardLogger;->mClipSource:Ljava/lang/String;

    .line 535
    invoke-interface {v7, v6, v8, v3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 537
    invoke-virtual {v13}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->setExpandedView$1()V

    .line 540
    invoke-virtual {v13}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->animateIn()V

    .line 543
    :goto_f
    iget-object v3, v13, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mClipboardModel:Lcom/android/systemui/clipboardoverlay/ClipboardModel;

    .line 546
    iget-object v3, v3, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->type:Lcom/android/systemui/clipboardoverlay/ClipboardModel$Type;

    .line 548
    if-ne v3, v15, :cond_15

    .line 550
    const v3, 0x7f1302b7    # @string/clipboard_text_copied 'Text copied'

    .line 552
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 555
    move-result-object v0

    .line 558
    goto :goto_10

    .line 559
    :cond_15
    move-object/from16 v6, v20

    .line 560
    if-ne v3, v6, :cond_16

    .line 562
    const v3, 0x7f1302b2    # @string/clipboard_image_copied 'Image copied'

    .line 564
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 567
    move-result-object v0

    .line 570
    goto :goto_10

    .line 571
    :cond_16
    const v3, 0x7f1302aa    # @string/clipboard_content_copied 'Content copied'

    .line 572
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 575
    move-result-object v0

    .line 578
    :goto_10
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 579
    goto :goto_11

    .line 582
    :cond_17
    iget-boolean v0, v13, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mIsMinimized:Z

    .line 583
    if-nez v0, :cond_18

    .line 585
    invoke-virtual {v13}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->setExpandedView$1()V

    .line 587
    :cond_18
    :goto_11
    iget-object v0, v13, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mClipboardModel:Lcom/android/systemui/clipboardoverlay/ClipboardModel;

    .line 590
    iget-boolean v0, v0, Lcom/android/systemui/clipboardoverlay/ClipboardModel;->isRemote:Z

    .line 592
    if-eqz v0, :cond_19

    .line 594
    invoke-virtual {v5, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 596
    iput-object v4, v13, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mOnUiUpdate:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda2;

    .line 599
    goto :goto_12

    .line 601
    :cond_19
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    new-instance v0, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda2;

    .line 605
    const/4 v1, 0x0

    .line 607
    invoke-direct {v0, v1, v5}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 608
    iput-object v0, v13, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mOnUiUpdate:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda2;

    .line 611
    invoke-virtual {v0}, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController$$ExternalSyntheticLambda2;->run()V

    .line 613
    :goto_12
    move-object/from16 v0, p0

    .line 616
    iget-object v1, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardOverlay:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;

    .line 618
    new-instance v2, Lcom/android/systemui/clipboardoverlay/ClipboardListener$$ExternalSyntheticLambda0;

    .line 620
    invoke-direct {v2, v0}, Lcom/android/systemui/clipboardoverlay/ClipboardListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardListener;)V

    .line 622
    iput-object v2, v1, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayController;->mOnSessionCompleteListener:Ljava/lang/Runnable;

    .line 625
    return-void

    .line 627
    :cond_1a
    :goto_13
    if-nez v3, :cond_1b

    .line 628
    const/4 v12, 0x0

    .line 630
    goto :goto_15

    .line 631
    :cond_1b
    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 632
    move-result-object v2

    .line 635
    invoke-virtual {v2}, Landroid/content/ClipDescription;->getClassificationStatus()I

    .line 636
    move-result v2

    .line 639
    const/4 v3, 0x3

    .line 640
    if-ne v2, v3, :cond_1d

    .line 641
    iget-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardToast:Lcom/android/systemui/clipboardoverlay/ClipboardToast;

    .line 643
    iget-object v2, v2, Lcom/android/systemui/clipboardoverlay/ClipboardToast;->mCopiedToast:Landroid/widget/Toast;

    .line 645
    if-eqz v2, :cond_1c

    .line 647
    const/4 v2, 0x1

    .line 649
    const/4 v6, 0x1

    .line 650
    goto :goto_14

    .line 651
    :cond_1c
    const/4 v2, 0x1

    .line 652
    const/4 v6, 0x0

    .line 653
    :goto_14
    xor-int/lit8 v12, v6, 0x1

    .line 654
    goto :goto_15

    .line 656
    :cond_1d
    const/4 v2, 0x1

    .line 657
    move v12, v2

    .line 658
    :goto_15
    if-eqz v12, :cond_1f

    .line 659
    iget-object v2, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 661
    sget-object v3, Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;->CLIPBOARD_TOAST_SHOWN:Lcom/android/systemui/clipboardoverlay/ClipboardOverlayEvent;

    .line 663
    const/4 v4, 0x0

    .line 665
    invoke-interface {v2, v3, v4, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 666
    iget-object v0, v0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardToast:Lcom/android/systemui/clipboardoverlay/ClipboardToast;

    .line 669
    iget-object v1, v0, Lcom/android/systemui/clipboardoverlay/ClipboardToast;->mCopiedToast:Landroid/widget/Toast;

    .line 671
    if-eqz v1, :cond_1e

    .line 673
    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 675
    :cond_1e
    iget-object v1, v0, Lcom/android/systemui/clipboardoverlay/ClipboardToast;->mContext:Landroid/content/Context;

    .line 678
    const v2, 0x7f1302b4    # @string/clipboard_overlay_text_copied 'Copied'

    .line 680
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 683
    move-result-object v1

    .line 686
    iput-object v1, v0, Lcom/android/systemui/clipboardoverlay/ClipboardToast;->mCopiedToast:Landroid/widget/Toast;

    .line 687
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->addCallback(Landroid/widget/Toast$Callback;)V

    .line 689
    iget-object v0, v0, Lcom/android/systemui/clipboardoverlay/ClipboardToast;->mCopiedToast:Landroid/widget/Toast;

    .line 692
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 694
    :cond_1f
    return-void
    .line 697
.end method

.method public final start()V
    .locals 2

    .line 1
    sget-object v0, Lcom/miui/systemui/modulesettings/DeveloperSettings;->URI_MIUI_OPTIMIZATION:Landroid/net/Uri;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mContext:Landroid/content/Context;

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Lcom/miui/systemui/modulesettings/DeveloperSettings$Companion;->isMiuiOptimizationEnabled(ILandroid/content/Context;)Z

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardListener;->mClipboardManager:Landroid/content/ClipboardManager;

    .line 13
    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 15
    :cond_0
    return-void
    .line 18
.end method
