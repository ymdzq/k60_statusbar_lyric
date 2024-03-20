.class Lcom/qti/extphone/ExtTelephonyManager$ExtTelephonyServiceConnection;
.super Ljava/lang/Object;
.source "ExtTelephonyManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/extphone/ExtTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtTelephonyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/extphone/ExtTelephonyManager;


# direct methods
.method private constructor <init>(Lcom/qti/extphone/ExtTelephonyManager;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/qti/extphone/ExtTelephonyManager$ExtTelephonyServiceConnection;->this$0:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qti/extphone/ExtTelephonyManager;Lcom/qti/extphone/ExtTelephonyManager$ExtTelephonyServiceConnection-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/extphone/ExtTelephonyManager$ExtTelephonyServiceConnection;-><init>(Lcom/qti/extphone/ExtTelephonyManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 257
    iget-object p1, p0, Lcom/qti/extphone/ExtTelephonyManager$ExtTelephonyServiceConnection;->this$0:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-static {p2}, Lcom/qti/extphone/IExtPhone$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qti/extphone/IExtPhone;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/qti/extphone/ExtTelephonyManager;->-$$Nest$fputmExtTelephonyService(Lcom/qti/extphone/ExtTelephonyManager;Lcom/qti/extphone/IExtPhone;)V

    .line 258
    iget-object p1, p0, Lcom/qti/extphone/ExtTelephonyManager$ExtTelephonyServiceConnection;->this$0:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-static {p1}, Lcom/qti/extphone/ExtTelephonyManager;->-$$Nest$fgetmExtTelephonyService(Lcom/qti/extphone/ExtTelephonyManager;)Lcom/qti/extphone/IExtPhone;

    move-result-object p1

    if-nez p1, :cond_0

    .line 259
    iget-object p1, p0, Lcom/qti/extphone/ExtTelephonyManager$ExtTelephonyServiceConnection;->this$0:Lcom/qti/extphone/ExtTelephonyManager;

    const-string p2, "ExtTelephonyService Connect Failed (onServiceConnected)... "

    invoke-static {p1, p2}, Lcom/qti/extphone/ExtTelephonyManager;->-$$Nest$mlog(Lcom/qti/extphone/ExtTelephonyManager;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_0
    iget-object p1, p0, Lcom/qti/extphone/ExtTelephonyManager$ExtTelephonyServiceConnection;->this$0:Lcom/qti/extphone/ExtTelephonyManager;

    const-string p2, "ExtTelephonyService connected ... "

    invoke-static {p1, p2}, Lcom/qti/extphone/ExtTelephonyManager;->-$$Nest$mlog(Lcom/qti/extphone/ExtTelephonyManager;Ljava/lang/String;)V

    .line 263
    :goto_0
    iget-object p1, p0, Lcom/qti/extphone/ExtTelephonyManager$ExtTelephonyServiceConnection;->this$0:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-static {p1}, Lcom/qti/extphone/ExtTelephonyManager;->-$$Nest$fgetmServiceConnected(Lcom/qti/extphone/ExtTelephonyManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 264
    iget-object p0, p0, Lcom/qti/extphone/ExtTelephonyManager$ExtTelephonyServiceConnection;->this$0:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-static {p0}, Lcom/qti/extphone/ExtTelephonyManager;->-$$Nest$mnotifyConnected(Lcom/qti/extphone/ExtTelephonyManager;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 268
    iget-object p1, p0, Lcom/qti/extphone/ExtTelephonyManager$ExtTelephonyServiceConnection;->this$0:Lcom/qti/extphone/ExtTelephonyManager;

    const-string v0, "The connection to the service got disconnected!"

    invoke-static {p1, v0}, Lcom/qti/extphone/ExtTelephonyManager;->-$$Nest$mlog(Lcom/qti/extphone/ExtTelephonyManager;Ljava/lang/String;)V

    .line 269
    iget-object p1, p0, Lcom/qti/extphone/ExtTelephonyManager$ExtTelephonyServiceConnection;->this$0:Lcom/qti/extphone/ExtTelephonyManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qti/extphone/ExtTelephonyManager;->-$$Nest$fputmExtTelephonyService(Lcom/qti/extphone/ExtTelephonyManager;Lcom/qti/extphone/IExtPhone;)V

    .line 270
    iget-object p1, p0, Lcom/qti/extphone/ExtTelephonyManager$ExtTelephonyServiceConnection;->this$0:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-static {p1}, Lcom/qti/extphone/ExtTelephonyManager;->-$$Nest$fgetmServiceConnected(Lcom/qti/extphone/ExtTelephonyManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 271
    iget-object p0, p0, Lcom/qti/extphone/ExtTelephonyManager$ExtTelephonyServiceConnection;->this$0:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-static {p0}, Lcom/qti/extphone/ExtTelephonyManager;->-$$Nest$mnotifyDisconnected(Lcom/qti/extphone/ExtTelephonyManager;)V

    return-void
.end method
