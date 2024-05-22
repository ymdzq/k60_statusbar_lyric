# classes5.dex

.class Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager$1;
.super Landroid/os/Handler;
.source "MiuiStatusBarLyricManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "arg0"  # Landroid/os/Looper;

    .line 70
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 73
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager$2;->$SwitchMap$com$android$systemui$statusbar$lyrics$HandlerEnum:[I

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->getHandlerEnum(I)Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    goto :goto_47

    .line 82
    :pswitch_12  #0x3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->systemStatusbarLyric:I

    .line 83
    sget v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->systemStatusbarLyric:I

    if-nez v0, :cond_47

    .line 84
    invoke-static {}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->hideLyric()V

    goto :goto_47

    .line 76
    :pswitch_24  #0x2
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->notificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    if-eqz v0, :cond_38

    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->notificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_38

    .line 77
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->notificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->appPackageName:Ljava/lang/String;

    .line 79
    :cond_38
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->appPackageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->-$$Nest$smsendToStatusbarLyric(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    goto :goto_47

    .line 74
    :pswitch_44  #0x1
    invoke-static {}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->handlerLyric()V

    .line 88
    :cond_47
    :goto_47
    return-void

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_44  #00000001
        :pswitch_24  #00000002
        :pswitch_12  #00000003
    .end packed-switch
.end method
