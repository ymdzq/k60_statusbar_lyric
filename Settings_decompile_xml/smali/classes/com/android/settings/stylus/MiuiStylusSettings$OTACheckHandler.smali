.class Lcom/android/settings/stylus/MiuiStylusSettings$OTACheckHandler;
.super Landroid/os/Handler;
.source "MiuiStylusSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/stylus/MiuiStylusSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OTACheckHandler"
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

    .line 235
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 236
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusSettings$OTACheckHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OTAHandler () "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusSettings$OTACheckHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiStylusSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 240
    iget p0, p1, Landroid/os/Message;->what:I

    .line 241
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiStylusSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xcc

    const-string v3, "battery"

    const-string/jumbo v4, "version"

    const-string/jumbo v5, "vid"

    const-string/jumbo v6, "pid"

    const-string v7, ""

    if-eq p0, v1, :cond_6

    const/16 v1, 0x12d

    const/4 v8, 0x0

    if-eq p0, v1, :cond_5

    const/16 p1, 0x191

    if-eq p0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    const-string p0, "checkResult"

    .line 272
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 273
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkResult "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xc8

    if-ne p0, p1, :cond_1

    .line 275
    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfgetfirmwareVersion()Lcom/android/settings/stylus/CustomColorTextPreference;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->stylus_ota_new_version:I

    invoke-virtual {p0, p1}, Lcom/android/settings/stylus/CustomColorTextPreference;->setValue(I)V

    .line 276
    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfgetfirmwareVersion()Lcom/android/settings/stylus/CustomColorTextPreference;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/stylus/CustomColorTextPreference;->setCustomEnable(Z)V

    .line 277
    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfgetfirmwareVersion()Lcom/android/settings/stylus/CustomColorTextPreference;

    move-result-object p0

    const-string p1, "#36AEF9"

    invoke-virtual {p0, p1}, Lcom/android/settings/stylus/CustomColorTextPreference;->setTextValueColor(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const/16 p1, 0xe6

    if-ne p0, p1, :cond_2

    .line 280
    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfgetfirmwareVersion()Lcom/android/settings/stylus/CustomColorTextPreference;

    move-result-object p0

    invoke-virtual {p0, v8}, Lcom/android/settings/stylus/CustomColorTextPreference;->setCustomEnable(Z)V

    .line 281
    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfgetfirmwareVersion()Lcom/android/settings/stylus/CustomColorTextPreference;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfgetlocalVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/stylus/CustomColorTextPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const/16 p1, 0xd2

    if-ne p0, p1, :cond_3

    .line 283
    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfgetfirmwareVersion()Lcom/android/settings/stylus/CustomColorTextPreference;

    move-result-object p0

    invoke-virtual {p0, v8}, Lcom/android/settings/stylus/CustomColorTextPreference;->setCustomEnable(Z)V

    .line 284
    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfgetfirmwareVersion()Lcom/android/settings/stylus/CustomColorTextPreference;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfgetLATEST_TEXT()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/stylus/CustomColorTextPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const/16 p1, 0xf0

    if-ne p0, p1, :cond_4

    .line 286
    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfgetfirmwareVersion()Lcom/android/settings/stylus/CustomColorTextPreference;

    move-result-object p0

    invoke-virtual {p0, v8}, Lcom/android/settings/stylus/CustomColorTextPreference;->setCustomEnable(Z)V

    goto/16 :goto_1

    .line 288
    :cond_4
    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfgetfirmwareVersion()Lcom/android/settings/stylus/CustomColorTextPreference;

    move-result-object p0

    invoke-virtual {p0, v8}, Lcom/android/settings/stylus/CustomColorTextPreference;->setCustomEnable(Z)V

    goto/16 :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_0

    .line 246
    :cond_5
    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfputpid(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfputvid(Ljava/lang/String;)V

    const-string p0, "%"

    .line 248
    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfputbattery(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfputlocalVersion(Ljava/lang/String;)V

    .line 250
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfgetpid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfgetvid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " battery "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfgetbattery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfgetlocalVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfgetfirmwareVersion()Lcom/android/settings/stylus/CustomColorTextPreference;

    move-result-object p0

    invoke-virtual {p0, v8}, Lcom/android/settings/stylus/CustomColorTextPreference;->setCustomEnable(Z)V

    .line 252
    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfgetfirmwareVersion()Lcom/android/settings/stylus/CustomColorTextPreference;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfgetlocalVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/stylus/CustomColorTextPreference;->setValue(Ljava/lang/String;)V

    .line 254
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p0

    .line 255
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "CHECK_UPDATE"

    .line 256
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x190

    .line 257
    iput v0, p0, Landroid/os/Message;->what:I

    .line 258
    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfgetvid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfgetpid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfgetlocalVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 262
    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfgetmRelyMessenger()Landroid/os/Messenger;

    move-result-object p1

    iput-object p1, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 263
    invoke-static {}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfgetmServiceMessenger()Landroid/os/Messenger;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_1

    .line 266
    :cond_6
    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfputpid(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfputvid(Ljava/lang/String;)V

    const-string p0, "0"

    .line 268
    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfputbattery(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/stylus/MiuiStylusSettings;->-$$Nest$sfputlocalVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 293
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
