.class Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$4;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;


# direct methods
.method public static synthetic $r8$lambda$66AAqwnovPxJJCnL-7R_pj__l60(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$4;->lambda$onChange$0()V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$4;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;

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
    const-string v1, "enter superPower"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$4;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;

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
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$4;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;

    .line 5
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;)Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object p1

    .line 14
    const-string p2, "power_supersave_mode_open"

    .line 15
    const/4 v0, 0x0

    .line 17
    invoke-static {p1, p2, v0, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 18
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    const/4 v0, 0x1

    .line 24
    :cond_0
    if-eqz v0, :cond_1

    .line 25
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$4;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;

    .line 27
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->-$$Nest$fgetmMainHandler(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;)Landroid/os/Handler;

    .line 29
    move-result-object p1

    .line 32
    new-instance p2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$1$$ExternalSyntheticLambda0;

    .line 33
    const/4 v0, 0x2

    .line 35
    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$1$$ExternalSyntheticLambda0;-><init>(Landroid/database/ContentObserver;I)V

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 39
    :cond_1
    return-void
    .line 42
.end method
