.class final Lcom/android/settings/bluetooth/MiHeadsetService$MessageHandler;
.super Landroid/os/Handler;
.source "MiHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiHeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiHeadsetService;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/MiHeadsetService;Landroid/os/Looper;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiHeadsetService$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiHeadsetService;

    .line 204
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/MiHeadsetService;Landroid/os/Looper;Lcom/android/settings/bluetooth/MiHeadsetService$MessageHandler-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/MiHeadsetService$MessageHandler;-><init>(Lcom/android/settings/bluetooth/MiHeadsetService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string v0, "handl message "

    const-string v1, "MiHeadsetService"

    .line 210
    :try_start_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget v2, p1, Landroid/os/Message;->what:I

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    if-eq v2, v0, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 216
    check-cast p1, Landroid/content/Intent;

    .line 217
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiHeadsetService$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiHeadsetService;

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiHeadsetService;->-$$Nest$minitService(Lcom/android/settings/bluetooth/MiHeadsetService;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 227
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
