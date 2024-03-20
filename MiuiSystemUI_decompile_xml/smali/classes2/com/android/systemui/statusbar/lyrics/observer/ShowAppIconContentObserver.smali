# classes.dex

.class public Lcom/android/systemui/statusbar/lyrics/observer/ShowAppIconContentObserver;
.super Landroid/database/ContentObserver;
.source "ShowAppIconContentObserver.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    .line 18
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/statusbar/lyrics/observer/ShowAppIconContentObserver;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/android/systemui/statusbar/lyrics/observer/ShowAppIconContentObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    .line 30
    iget-object p1, p0, Lcom/android/systemui/statusbar/lyrics/observer/ShowAppIconContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "system_statusbar_lyric_app_icon"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/lyrics/observer/ShowAppIconContentObserver;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "APP图标"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1d

    const-string/jumbo v3, "开启"

    goto :goto_20

    :cond_1d
    const-string/jumbo v3, "关闭"

    :goto_20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "酷安@白羊唐黎明"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/lyrics/observer/ShowAppIconContentObserver;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->SWTICH_SYSTEM_STATUSBAR_SHOW_APP_ICON:Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->getWhat()I

    move-result v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
