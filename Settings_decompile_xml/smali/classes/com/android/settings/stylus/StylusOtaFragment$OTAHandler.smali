.class Lcom/android/settings/stylus/StylusOtaFragment$OTAHandler;
.super Landroid/os/Handler;
.source "StylusOtaFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/stylus/StylusOtaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OTAHandler"
.end annotation


# instance fields
.field mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 379
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 380
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/stylus/StylusOtaFragment$OTAHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OTAHandler () "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/stylus/StylusOtaFragment$OTAHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StylusOtaFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "filepath"

    .line 384
    iget v3, v0, Landroid/os/Message;->what:I

    .line 385
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 386
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "percent"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/settings/stylus/StylusOtaFragment$OTAHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "StylusOtaFragment"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x12d

    const-string/jumbo v8, "version"

    const-string v9, "0"

    const-string v10, "battery"

    const-string/jumbo v11, "vid"

    const-string v12, "01"

    const-string/jumbo v13, "pid"

    const-string/jumbo v14, "updateState"

    const-string v15, "00"

    move-object/from16 p1, v0

    const-string v0, ""

    move-object/from16 v16, v2

    if-eq v3, v5, :cond_8

    const/16 v5, 0x191

    const/4 v2, 0x1

    if-eq v3, v5, :cond_4

    const/16 v5, 0x8

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_2

    .line 474
    :pswitch_0
    :try_start_0
    invoke-virtual {v4, v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 475
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 476
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetUPDATING_TEXT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 477
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 478
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaDemands:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaRemoteVersion:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->firmwareVersion:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetlocalVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 481
    :cond_0
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 482
    iget-object v1, v1, Lcom/android/settings/stylus/StylusOtaFragment$OTAHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetSTYLUS_OTA_CHECK_FAILED_INFO_TEXT()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 484
    sget-object v1, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    sget v3, Lcom/android/settings/R$string;->stylus_ota_check_update:I

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 485
    sget-object v1, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 486
    sget-object v1, Lcom/android/settings/stylus/StylusOtaFragment;->otaDemands:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    sget-object v1, Lcom/android/settings/stylus/StylusOtaFragment;->cycleProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 488
    sget-object v1, Lcom/android/settings/stylus/StylusOtaFragment;->otaRemoteVersion:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 489
    invoke-virtual {v4, v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfputpid(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v4, v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfputvid(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v4, v10, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfputbattery(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v4, v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfputlocalVersion(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 462
    :pswitch_1
    invoke-static {v0}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfputpid(Ljava/lang/String;)V

    .line 463
    invoke-static {v0}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfputvid(Ljava/lang/String;)V

    .line 464
    invoke-static {v0}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfputlocalVersion(Ljava/lang/String;)V

    .line 465
    iget-object v0, v1, Lcom/android/settings/stylus/StylusOtaFragment$OTAHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetUPDATE_FAILED_TEXT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 466
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->stylus_ota_check_update:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 467
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 468
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaDemands:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaRemoteVersion:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 471
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->cycleProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 448
    :pswitch_2
    invoke-static {v0}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfputpid(Ljava/lang/String;)V

    .line 449
    invoke-static {v0}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfputvid(Ljava/lang/String;)V

    .line 450
    invoke-static {v0}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfputlocalVersion(Ljava/lang/String;)V

    .line 451
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->stylus_ota_completed:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 452
    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetremoteVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 453
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->firmwareVersion:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetremoteVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 455
    :cond_1
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 456
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaDemands:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->stylus_ota_completed_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 457
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaRemoteVersion:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 459
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->cycleProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 430
    :pswitch_3
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 433
    sget-object v1, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetUPDATING_TEXT()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 434
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 436
    sget-object v1, Lcom/android/settings/stylus/StylusOtaFragment;->otaProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 437
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->cycleProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v1, 0x0

    goto :goto_0

    .line 439
    :cond_2
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetUPDATING_TEXT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 440
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 441
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->cycleProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 443
    :goto_0
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaDemands:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaRemoteVersion:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 423
    :pswitch_4
    iget-object v0, v1, Lcom/android/settings/stylus/StylusOtaFragment$OTAHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetDOWNLOADING_FAILED_TEXT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 424
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->stylus_ota_check_update:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 425
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 426
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaDemands:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaRemoteVersion:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v3, v16

    .line 397
    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfputfilePath(Ljava/lang/String;)V

    .line 398
    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetmServiceMessenger()Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "startUpdate"

    .line 399
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 401
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 402
    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetfilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc8

    .line 403
    iput v3, v0, Landroid/os/Message;->what:I

    .line 404
    invoke-virtual {v0, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 405
    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetmRelyMessenger()Landroid/os/Messenger;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :try_start_1
    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetmOobMessenger()Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 408
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->cycleProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 409
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    sget v3, Lcom/android/settings/R$string;->stylus_ota_updating:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    .line 411
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 412
    iget-object v0, v1, Lcom/android/settings/stylus/StylusOtaFragment$OTAHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetUPDATE_FAILED_TEXT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 413
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->stylus_ota_check_update:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 414
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 417
    :cond_3
    iget-object v0, v1, Lcom/android/settings/stylus/StylusOtaFragment$OTAHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetUPDATE_FAILED_TEXT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 418
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->stylus_ota_check_update:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 419
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 391
    :pswitch_6
    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetDOWNLOADING_TEXT()Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 393
    sget-object v3, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 394
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_4
    const-string v3, "checkResult"

    .line 513
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 514
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkResult "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xc8

    if-ne v3, v5, :cond_5

    const-string/jumbo v1, "remoteVersion"

    .line 516
    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfputremoteVersion(Ljava/lang/String;)V

    .line 517
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 518
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaRemoteVersion:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetHAVE_NEW_VERSION()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetremoteVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaRemoteVersion:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 520
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaDemands:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 521
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->stylus_ota_update:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_2

    :cond_5
    const/16 v0, 0xe6

    if-ne v3, v0, :cond_6

    .line 523
    iget-object v0, v1, Lcom/android/settings/stylus/StylusOtaFragment$OTAHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetUPDATE_FAILED_TEXT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 524
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_6
    const/16 v0, 0xd2

    if-ne v3, v0, :cond_7

    .line 526
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->stylus_ota_latest:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_2

    :cond_7
    const/16 v0, 0xf0

    if-ne v3, v0, :cond_a

    .line 528
    iget-object v0, v1, Lcom/android/settings/stylus/StylusOtaFragment$OTAHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetTIP_NET_ERROR()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 529
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 496
    :cond_8
    invoke-virtual {v4, v13, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfputpid(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v4, v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfputvid(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v4, v10, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfputbattery(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v4, v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfputlocalVersion(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v4, v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 502
    sget-object v1, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetUPDATING_TEXT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 503
    sget-object v1, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 504
    sget-object v1, Lcom/android/settings/stylus/StylusOtaFragment;->otaDemands:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    sget-object v1, Lcom/android/settings/stylus/StylusOtaFragment;->cycleProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 506
    sget-object v1, Lcom/android/settings/stylus/StylusOtaFragment;->otaRemoteVersion:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 508
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetpid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetvid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " battery "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetbattery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetlocalVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    sget-object v0, Lcom/android/settings/stylus/StylusOtaFragment;->firmwareVersion:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetlocalVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 534
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
