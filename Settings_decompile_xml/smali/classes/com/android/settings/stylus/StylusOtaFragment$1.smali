.class Lcom/android/settings/stylus/StylusOtaFragment$1;
.super Ljava/lang/Object;
.source "StylusOtaFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/stylus/StylusOtaFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/stylus/StylusOtaFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/stylus/StylusOtaFragment;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/android/settings/stylus/StylusOtaFragment$1;->this$0:Lcom/android/settings/stylus/StylusOtaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string/jumbo p1, "otaUpdate onClick"

    const-string v0, "StylusOtaFragment"

    .line 291
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetmServiceMessenger()Landroid/os/Messenger;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 293
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 294
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 295
    sget-object v2, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetUPDATE_TEXT()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string p0, "START_DOWNLOAD"

    .line 296
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x64

    .line 297
    iput p0, p1, Landroid/os/Message;->what:I

    .line 298
    sget-object p0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    sget v0, Lcom/android/settings/R$string;->stylus_ota_downloading_firmware:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    .line 299
    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetmRelyMessenger()Landroid/os/Messenger;

    move-result-object p0

    iput-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 301
    :try_start_0
    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetmServiceMessenger()Landroid/os/Messenger;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 303
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 305
    :goto_0
    sget-object p0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_0
    const-string v2, "CHECK_UPDATE"

    .line 307
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetvid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetpid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 311
    :cond_1
    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetbattery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x14

    if-ge v0, v4, :cond_2

    .line 312
    iget-object p0, p0, Lcom/android/settings/stylus/StylusOtaFragment$1;->this$0:Lcom/android/settings/stylus/StylusOtaFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetSTYLUS_OTA_CHECK_FAILED_BATTERY_TEXT()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_3

    :cond_2
    const/16 p0, 0x190

    .line 315
    iput p0, p1, Landroid/os/Message;->what:I

    const-string/jumbo p0, "vid"

    .line 316
    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetvid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "pid"

    .line 317
    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetpid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "version"

    .line 318
    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetlocalVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 321
    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetmRelyMessenger()Landroid/os/Messenger;

    move-result-object p0

    iput-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 323
    :try_start_1
    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetmServiceMessenger()Landroid/os/Messenger;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 325
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 327
    :goto_1
    sget-object p0, Lcom/android/settings/stylus/StylusOtaFragment;->otaUpdate:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 309
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/settings/stylus/StylusOtaFragment$1;->this$0:Lcom/android/settings/stylus/StylusOtaFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetSTYLUS_OTA_CHECK_FAILED_INFO_TEXT()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_3

    :cond_4
    const-string p0, "MessageService null"

    .line 331
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method
