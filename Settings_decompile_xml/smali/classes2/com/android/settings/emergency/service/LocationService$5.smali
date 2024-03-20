.class Lcom/android/settings/emergency/service/LocationService$5;
.super Landroid/os/Handler;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/service/LocationService;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/emergency/service/LocationService;

.field final synthetic val$locationUploadUrl:Ljava/lang/String;

.field final synthetic val$sosMessageFetchUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/emergency/service/LocationService;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    iput-object p3, p0, Lcom/android/settings/emergency/service/LocationService$5;->val$locationUploadUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/emergency/service/LocationService$5;->val$sosMessageFetchUrl:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 465
    iget p1, p1, Landroid/os/Message;->what:I

    const-string/jumbo v0, "mkzt5239-a34f-3ty9-eb73-75456745ns5c"

    const-string/jumbo v1, "reportId"

    const/4 v2, 0x1

    const-string v3, "SOS-LocationService"

    if-eq p1, v2, :cond_9

    const/4 v4, 0x2

    if-eq p1, v4, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto/16 :goto_2

    .line 493
    :cond_0
    iget-object p1, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {p1}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmVoicePath(Lcom/android/settings/emergency/service/LocationService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "handleMessage: the mVoicePath is isEmpty !"

    .line 494
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p1, "handleMessage: start send voice "

    .line 497
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {p0}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmVoicePath(Lcom/android/settings/emergency/service/LocationService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$msendSOSBitmapOrVoice(Lcom/android/settings/emergency/service/LocationService;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 479
    :cond_2
    iget-object p1, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {p1}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmBitmapPath(Lcom/android/settings/emergency/service/LocationService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, "handleMessage: SEND BITMAP mBitmapPath is null !"

    .line 480
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 483
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage start send bitmap mCameraDirection\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v0}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmCameraDirection(Lcom/android/settings/emergency/service/LocationService;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object p1, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {p1}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmBitmapPath(Lcom/android/settings/emergency/service/LocationService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$msendSOSBitmapOrVoice(Lcom/android/settings/emergency/service/LocationService;Ljava/lang/String;I)V

    .line 485
    iget-object p1, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {p1}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmCameraDirection(Lcom/android/settings/emergency/service/LocationService;)I

    move-result p1

    if-nez p1, :cond_a

    .line 486
    iget-object p1, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {p1, v2}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fputmCameraDirection(Lcom/android/settings/emergency/service/LocationService;I)V

    .line 488
    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {p0}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$msendSosAroundPhoto(Lcom/android/settings/emergency/service/LocationService;)V

    goto/16 :goto_2

    .line 534
    :cond_4
    iget-object p1, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {p1}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmCallActionExecuted(Lcom/android/settings/emergency/service/LocationService;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_2

    .line 537
    :cond_5
    iget-object p1, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {p1, v2}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fputmCallActionExecuted(Lcom/android/settings/emergency/service/LocationService;Z)V

    const-string/jumbo p1, "start sos call !"

    .line 539
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object p1, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {p1}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmContacts(Lcom/android/settings/emergency/service/LocationService;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v1}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmContactsCallIndex(Lcom/android/settings/emergency/service/LocationService;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v1, v3}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fputmContactsCallIndex(Lcom/android/settings/emergency/service/LocationService;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {p0}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmCurrentSubInfo(Lcom/android/settings/emergency/service/LocationService;)Lmiui/telephony/SubscriptionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result p0

    invoke-virtual {p1, p1, v0, p0}, Lcom/android/settings/emergency/service/LocationService;->startCallIntent(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_6
    const-string/jumbo p1, "send message"

    .line 502
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 506
    iget-object v2, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v2}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmReportId(Lcom/android/settings/emergency/service/LocationService;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "area"

    .line 507
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v1, p0, Lcom/android/settings/emergency/service/LocationService$5;->val$sosMessageFetchUrl:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/android/settings/emergency/util/NetworkUtils;->doGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 510
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 511
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    .line 514
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 515
    new-instance v0, Landroid/content/Intent;

    const-string v1, "DELIVERED_SMS_ACTION_IN_SOS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    iget-object v1, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    const/high16 v2, 0xc000000

    const/4 v4, 0x0

    invoke-static {v1, v4, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 519
    :goto_1
    iget-object v1, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v1}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmContacts(Lcom/android/settings/emergency/service/LocationService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_a

    .line 521
    iget-object v1, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v1}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmContacts(Lcom/android/settings/emergency/service/LocationService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v2}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmCurrentSubInfo(Lcom/android/settings/emergency/service/LocationService;)Lmiui/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2

    invoke-static {v1, p1, v0, v2}, Lcom/android/settings/emergency/util/CommonUtils;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 524
    iget-object v1, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v1}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmSosCallLogEnable(Lcom/android/settings/emergency/service/LocationService;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 525
    iget-object v1, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v1}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmContacts(Lcom/android/settings/emergency/service/LocationService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v2}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$mgetRecentCallLogs(Lcom/android/settings/emergency/service/LocationService;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v5}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmCurrentSubInfo(Lcom/android/settings/emergency/service/LocationService;)Lmiui/telephony/SubscriptionInfo;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v5

    invoke-static {v1, v2, v0, v5}, Lcom/android/settings/emergency/util/CommonUtils;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Exception when sending sos message: "

    .line 530
    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_9
    const-string/jumbo p1, "report location"

    .line 467
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 469
    iget-object v2, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v2}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmReportId(Lcom/android/settings/emergency/service/LocationService;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iget-object v1, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v1}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmLongitude(Lcom/android/settings/emergency/service/LocationService;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lgt"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v1, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v1}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmLatitude(Lcom/android/settings/emergency/service/LocationService;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ltt"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v1, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v1}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$mgetBatteryLeft(Lcom/android/settings/emergency/service/LocationService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "battery"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    iget-object v1, p0, Lcom/android/settings/emergency/service/LocationService$5;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v1}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmSignalStrength(Lcom/android/settings/emergency/service/LocationService;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "signal"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "timeStamp"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService$5;->val$locationUploadUrl:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/android/settings/emergency/util/NetworkUtils;->doPost(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    :cond_a
    :goto_2
    return-void
.end method
