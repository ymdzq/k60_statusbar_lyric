.class Lcom/android/settings/stylus/StylusOtaFragment$3;
.super Ljava/lang/Object;
.source "StylusOtaFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/stylus/StylusOtaFragment;
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

    .line 354
    iput-object p1, p0, Lcom/android/settings/stylus/StylusOtaFragment$3;->this$0:Lcom/android/settings/stylus/StylusOtaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 357
    new-instance p0, Landroid/os/Messenger;

    invoke-direct {p0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p0}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfputmOobMessenger(Landroid/os/Messenger;)V

    .line 358
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "mBleOobConnection "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "mRelyMessenger "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetmRelyMessenger()Landroid/os/Messenger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StylusOtaFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance p0, Landroid/os/Message;

    invoke-direct {p0}, Landroid/os/Message;-><init>()V

    const/16 p1, 0x12c

    .line 360
    iput p1, p0, Landroid/os/Message;->what:I

    .line 361
    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetmRelyMessenger()Landroid/os/Messenger;

    move-result-object p1

    iput-object p1, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 363
    :try_start_0
    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetmOobMessenger()Landroid/os/Messenger;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 365
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 371
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "mBleOobDisconnected "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfgetmOobMessenger()Landroid/os/Messenger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StylusOtaFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 372
    invoke-static {p0}, Lcom/android/settings/stylus/StylusOtaFragment;->-$$Nest$sfputmOobMessenger(Landroid/os/Messenger;)V

    return-void
.end method
