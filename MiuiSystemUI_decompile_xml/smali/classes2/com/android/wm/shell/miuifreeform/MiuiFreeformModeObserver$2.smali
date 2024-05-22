.class Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$2;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;


# direct methods
.method public static synthetic $r8$lambda$TG3pLt6wY1LaBPzvUqexqxwGWHE(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$2;->lambda$onChange$0()V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$2;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method

.method private synthetic lambda$onChange$0()V
    .locals 2

    .line 1
    const-string v0, "MiuiFreeformModeObserver"

    .line 2
    const-string v1, "close miui optimization"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$2;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;

    .line 9
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->-$$Nest$fgetmMiuiFreeformModeController(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 11
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->exitAllFreeform()V

    .line 15
    return-void
    .line 18
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 2
    const-string p1, "ro.miui.cts"

    .line 5
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 10
    const-string p2, "1"

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result p1

    .line 16
    const/4 p2, 0x1

    .line 17
    xor-int/2addr p1, p2

    .line 18
    const-string v0, "persist.sys.miui_optimization"

    .line 19
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 21
    move-result p1

    .line 24
    xor-int/2addr p1, p2

    .line 25
    if-eqz p1, :cond_0

    .line 26
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$2;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;

    .line 28
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->-$$Nest$fgetmMainHandler(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;)Landroid/os/Handler;

    .line 30
    move-result-object p1

    .line 33
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$1$$ExternalSyntheticLambda0;

    .line 34
    invoke-direct {v0, p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$1$$ExternalSyntheticLambda0;-><init>(Landroid/database/ContentObserver;I)V

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$2;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;

    .line 42
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;)Landroid/content/Context;

    .line 44
    move-result-object p0

    .line 47
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeStatus;->updateStatus(Landroid/content/Context;)V

    .line 48
    return-void
    .line 51
.end method
