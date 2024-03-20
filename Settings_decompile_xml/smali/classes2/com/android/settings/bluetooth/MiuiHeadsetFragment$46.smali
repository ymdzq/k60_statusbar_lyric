.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$46;
.super Landroid/os/AsyncTask;
.source "MiuiHeadsetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->waitAndShowFutureResult(Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TV;>;"
    }
.end annotation


# instance fields
.field e:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

.field final synthetic val$future:Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

.field final synthetic val$startOtaFlag:I


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;I)V
    .locals 0

    .line 5377
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$46;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$46;->val$future:Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    iput p3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$46;->val$startOtaFlag:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private setAccountForbid()V
    .locals 2

    .line 5402
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$46;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.xiaomi.bluetooth.headset.account"

    const-string v1, "forbid"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setAccount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiHeadsetFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5377
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$46;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TV;"
        }
    .end annotation

    .line 5388
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$46;->val$future:Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    invoke-interface {p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;->getResult()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/account/openauth/XMAuthericationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 5395
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$46;->e:Ljava/lang/Exception;

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5392
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$46;->e:Ljava/lang/Exception;

    .line 5393
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$46;->setAccountForbid()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 5390
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$46;->e:Ljava/lang/Exception;

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 5412
    instance-of v0, p1, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    if-eqz v0, :cond_0

    .line 5413
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$46;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    check-cast p1, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    invoke-static {v0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fputmAccountResult(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Lcom/xiaomi/account/openauth/XiaomiOAuthResults;)V

    .line 5415
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$46;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.xiaomi.bluetooth.headset.account"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "MiuiHeadsetFragment"

    const-string v0, "clean account set"

    .line 5418
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5422
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$46;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmWorkHandler(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$46;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmWorkHandler(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$46;->val$startOtaFlag:I

    const/4 v1, 0x0

    const/16 v2, 0x64

    .line 5423
    invoke-virtual {v0, v2, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 5422
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 0
    return-void
.end method
