.class public final Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onSendRemoteInputListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onSendRemoteInputListener$1;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onSendRemoteInputListener$1;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->remoteInput:Landroid/app/RemoteInput;

    .line 4
    const-string v2, "RemoteInput"

    .line 6
    if-nez v1, :cond_0

    .line 8
    const-string p0, "cannot send remote input, RemoteInput data is null"

    .line 10
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 15
    :cond_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->pendingIntent:Landroid/app/PendingIntent;

    .line 16
    if-nez v3, :cond_1

    .line 18
    const-string p0, "cannot send remote input, PendingIntent is null"

    .line 20
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void

    .line 25
    :cond_1
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 26
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputAttachment:Landroid/view/ContentInfo;

    .line 28
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x1

    .line 31
    const/4 v11, 0x0

    .line 32
    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->view:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 33
    const/high16 v9, 0x10000000

    .line 35
    if-nez v5, :cond_3

    .line 37
    new-instance v5, Landroid/os/Bundle;

    .line 39
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 41
    invoke-virtual {v1}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 47
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getText()Ljava/lang/CharSequence;

    .line 48
    move-result-object v10

    .line 51
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    move-result-object v10

    .line 55
    invoke-virtual {v5, v1, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v1, Landroid/content/Intent;

    .line 59
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 61
    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    move-result-object v1

    .line 67
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->remoteInputs:[Landroid/app/RemoteInput;

    .line 68
    invoke-static {v0, v1, v5}, Landroid/app/RemoteInput;->addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getText()Ljava/lang/CharSequence;

    .line 73
    move-result-object v0

    .line 76
    iput-object v0, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    .line 77
    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setAttachment(Landroid/view/ContentInfo;)V

    .line 79
    iput-object v11, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputUri:Landroid/net/Uri;

    .line 82
    iput-object v11, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputMimeType:Ljava/lang/String;

    .line 84
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->editedSuggestionInfo:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;

    .line 86
    if-eqz v0, :cond_2

    .line 88
    move v0, v7

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    move v0, v6

    .line 92
    :goto_0
    invoke-static {v1, v0}, Landroid/app/RemoteInput;->setResultsSource(Landroid/content/Intent;I)V

    .line 93
    goto/16 :goto_3

    .line 96
    :cond_3
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputMimeType:Ljava/lang/String;

    .line 98
    iget-object v10, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputUri:Landroid/net/Uri;

    .line 100
    new-instance v12, Ljava/util/HashMap;

    .line 102
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 104
    invoke-virtual {v12, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 110
    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->remoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 112
    iget-object v13, v13, Lcom/android/systemui/statusbar/RemoteInputController;->mRemoteInputUriController:Lcom/android/systemui/statusbar/policy/RemoteInputUriController;

    .line 114
    check-cast v13, Lcom/android/systemui/statusbar/policy/MiuiRemoteInputUriController;

    .line 116
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    new-instance v14, Lcom/android/systemui/statusbar/policy/MiuiRemoteInputUriController$$ExternalSyntheticLambda0;

    .line 121
    invoke-direct {v14, v13, v5, v10}, Lcom/android/systemui/statusbar/policy/MiuiRemoteInputUriController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/MiuiRemoteInputUriController;Lcom/android/systemui/statusbar/notification/ExpandedNotification;Landroid/net/Uri;)V

    .line 123
    iget-object v5, v13, Lcom/android/systemui/statusbar/policy/MiuiRemoteInputUriController;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    .line 126
    invoke-interface {v5, v14}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 128
    new-instance v5, Landroid/content/Intent;

    .line 131
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 133
    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    move-result-object v5

    .line 139
    invoke-static {v1, v5, v12}, Landroid/app/RemoteInput;->addDataResultToIntent(Landroid/app/RemoteInput;Landroid/content/Intent;Ljava/util/Map;)V

    .line 140
    new-instance v9, Landroid/os/Bundle;

    .line 143
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 145
    invoke-virtual {v1}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    .line 148
    move-result-object v1

    .line 151
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getText()Ljava/lang/CharSequence;

    .line 152
    move-result-object v10

    .line 155
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 156
    move-result-object v10

    .line 159
    invoke-virtual {v9, v1, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->remoteInputs:[Landroid/app/RemoteInput;

    .line 163
    invoke-static {v0, v5, v9}, Landroid/app/RemoteInput;->addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 165
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputAttachment:Landroid/view/ContentInfo;

    .line 168
    invoke-virtual {v0}, Landroid/view/ContentInfo;->getClip()Landroid/content/ClipData;

    .line 170
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 174
    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    .line 178
    move-result-object v0

    .line 181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 182
    move-result v1

    .line 185
    if-eqz v1, :cond_4

    .line 186
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 188
    move-result-object v0

    .line 191
    const v1, 0x7f130a30    # @string/remote_input_image_insertion_text 'sent an image'

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 195
    move-result-object v0

    .line 198
    :cond_4
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getText()Ljava/lang/CharSequence;

    .line 199
    move-result-object v1

    .line 202
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 203
    move-result v1

    .line 206
    if-eqz v1, :cond_5

    .line 207
    goto :goto_1

    .line 209
    :cond_5
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getText()Ljava/lang/CharSequence;

    .line 210
    move-result-object v1

    .line 213
    new-instance v8, Ljava/lang/StringBuilder;

    .line 214
    const-string v9, "\""

    .line 216
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    const-string v0, "\" "

    .line 224
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    move-result-object v0

    .line 235
    :goto_1
    iput-object v0, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    .line 236
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->editedSuggestionInfo:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;

    .line 238
    if-eqz v0, :cond_6

    .line 240
    move v0, v7

    .line 242
    goto :goto_2

    .line 243
    :cond_6
    move v0, v6

    .line 244
    :goto_2
    invoke-static {v5, v0}, Landroid/app/RemoteInput;->setResultsSource(Landroid/content/Intent;I)V

    .line 245
    move-object v1, v5

    .line 248
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onSendRemoteInputListener$1;->this$0:Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->bouncerChecker:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda1;

    .line 251
    if-nez v0, :cond_9

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->view:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 255
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 257
    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 259
    iput-boolean v7, v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mSending:Z

    .line 262
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    .line 264
    const/4 v5, 0x4

    .line 266
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 267
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 270
    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 272
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 275
    iput-boolean v6, v4, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mShowImeOnInputConnection:Z

    .line 277
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 279
    move-result-wide v4

    .line 282
    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 283
    iput-wide v4, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastRemoteInputSent:J

    .line 285
    iput-boolean v7, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRemoteEditImeAnimatingAway:Z

    .line 287
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    .line 289
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->remoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 291
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    iget-object v8, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 296
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v9, v5, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    .line 304
    invoke-virtual {v9, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    .line 309
    invoke-virtual {v5, v12, v4}, Lcom/android/systemui/statusbar/RemoteInputController;->removeRemoteInput(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)V

    .line 311
    iget-object v4, v5, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    .line 314
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 316
    move-result v5

    .line 319
    :goto_4
    if-ge v6, v5, :cond_7

    .line 320
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 322
    move-result-object v8

    .line 325
    check-cast v8, Lcom/android/systemui/statusbar/RemoteInputController$Callback;

    .line 326
    invoke-interface {v8, v12}, Lcom/android/systemui/statusbar/RemoteInputController$Callback;->onRemoteInputSent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 328
    add-int/lit8 v6, v6, 0x1

    .line 331
    goto :goto_4

    .line 333
    :cond_7
    iput-boolean v7, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasSentReply:Z

    .line 334
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->onSendListeners:Landroid/util/ArraySet;

    .line 336
    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 338
    move-result-object v4

    .line 341
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 342
    move-result-object v4

    .line 345
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 346
    move-result v5

    .line 349
    if-nez v5, :cond_8

    .line 350
    iget-object v4, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 352
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 354
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 356
    move-result-object v4

    .line 359
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 360
    move-result v4

    .line 363
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->shortcutManager:Landroid/content/pm/ShortcutManager;

    .line 364
    invoke-virtual {v6, v5, v4}, Landroid/content/pm/ShortcutManager;->onApplicationActive(Ljava/lang/String;I)V

    .line 366
    sget-object v4, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;->NOTIFICATION_REMOTE_INPUT_SEND:Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

    .line 369
    iget-object v5, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 371
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 373
    move-result v5

    .line 376
    iget-object v6, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 377
    iget-object v8, v6, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 379
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 381
    move-result-object v6

    .line 384
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 385
    invoke-interface {p0, v4, v5, v8, v6}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 387
    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 390
    move-result-object v4

    .line 393
    invoke-virtual {v4, v7}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 394
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 397
    move-result-object v5

    .line 400
    const/4 v6, 0x0

    .line 401
    const/4 v7, 0x0

    .line 402
    const/4 v8, 0x0

    .line 403
    const/4 v9, 0x0

    .line 404
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 405
    move-result-object v10

    .line 408
    move-object v4, v5

    .line 409
    move v5, v6

    .line 410
    move-object v6, v1

    .line 411
    invoke-virtual/range {v3 .. v10}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    goto :goto_5

    .line 415
    :catch_0
    move-exception v1

    .line 416
    const-string v3, "Unable to send remote input result"

    .line 417
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 419
    sget-object v1, Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;->NOTIFICATION_REMOTE_INPUT_FAILURE:Lcom/android/systemui/statusbar/policy/RemoteInputView$NotificationRemoteInputEvent;

    .line 422
    iget-object v2, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 424
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 426
    move-result v2

    .line 429
    iget-object v3, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 430
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 432
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 434
    move-result-object v3

    .line 437
    invoke-interface {p0, v1, v2, v4, v3}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 438
    :goto_5
    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setAttachment(Landroid/view/ContentInfo;)V

    .line 441
    return-void

    .line 444
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 445
    move-result-object p0

    .line 448
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 449
    throw v11

    .line 452
    :cond_9
    iget-object p0, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 453
    check-cast p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 455
    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 457
    invoke-static {v0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 459
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 462
    throw v11
    .line 465
.end method
