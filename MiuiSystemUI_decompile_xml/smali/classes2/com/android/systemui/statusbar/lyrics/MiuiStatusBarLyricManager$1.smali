# classes.dex

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

    .line 70
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 73
    sget-object p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager$2;->$SwitchMap$com$android$systemui$statusbar$lyrics$HandlerEnum:[I

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->getHandlerEnum(I)Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_18

    goto :goto_4d

    .line 82
    :cond_18
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sput p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->systemStatusbarLyric:I

    .line 83
    sget p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->systemStatusbarLyric:I

    if-nez p0, :cond_4d

    .line 84
    invoke-static {}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->hideLyric()V

    goto :goto_4d

    .line 76
    :cond_2a
    sget-object p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->notificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    if-eqz p0, :cond_3e

    sget-object p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->notificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p0, :cond_3e

    .line 77
    sget-object p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->notificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->appPackageName:Ljava/lang/String;

    .line 79
    :cond_3e
    sget-object p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->appPackageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->-$$Nest$smsendToStatusbarLyric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    .line 74
    :cond_4a
    invoke-static {}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->handlerLyric()V

    :cond_4d
    :goto_4d
    return-void
.end method
