.class Lcom/android/wm/shell/onehanded/OneHandedController$2;
.super Landroid/view/IDisplayFoldListener$Stub;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/onehanded/OneHandedController;


# direct methods
.method public static synthetic $r8$lambda$xRym_7x3taRyzCrb3oFBdVf7Cqc(Lcom/android/wm/shell/onehanded/OneHandedController$2;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedController$2;->lambda$onDisplayFoldChanged$0(Z)V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$2;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 2
    invoke-direct {p0}, Landroid/view/IDisplayFoldListener$Stub;-><init>()V

    .line 4
    return-void
    .line 7
.end method

.method private synthetic lambda$onDisplayFoldChanged$0(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$2;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$misInitialized(Lcom/android/wm/shell/onehanded/OneHandedController;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$2;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 11
    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmOneHandedSettingsUtil(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    .line 13
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$2;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 17
    invoke-static {v1}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmContext(Lcom/android/wm/shell/onehanded/OneHandedController;)Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController$2;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 27
    invoke-static {v2}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmUserId(Lcom/android/wm/shell/onehanded/OneHandedController;)I

    .line 29
    move-result v2

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;I)Z

    .line 33
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$2;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 39
    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmOneHandedSettingsUtil(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    .line 41
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$2;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 45
    invoke-static {v1}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmContext(Lcom/android/wm/shell/onehanded/OneHandedController;)Landroid/content/Context;

    .line 47
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 51
    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedController$2;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 55
    invoke-static {v2}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmUserId(Lcom/android/wm/shell/onehanded/OneHandedController;)I

    .line 57
    move-result v2

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsSwipeToNotificationEnabled(Landroid/content/ContentResolver;I)Z

    .line 61
    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$2;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 68
    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmState(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedState;

    .line 70
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/android/wm/shell/onehanded/OneHandedState;->getState()I

    .line 74
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    if-nez p1, :cond_2

    .line 80
    const-string p1, "OneHandedController"

    .line 82
    const-string v0, "onDisplayFoldChanged device is unfold"

    .line 84
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$2;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 89
    invoke-static {p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmDisplayAreaOrganizer(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    .line 91
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->onDisplayFoldChanged()V

    .line 95
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$2;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 98
    invoke-static {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmOneHandedUiEventLogger(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;

    .line 100
    move-result-object p0

    .line 103
    const/16 p1, 0x17

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedUiEventLogger;->writeEvent(I)V

    .line 106
    :cond_2
    :goto_0
    return-void
    .line 109
.end method


# virtual methods
.method public onDisplayFoldChanged(IZ)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$2;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 2
    invoke-static {p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmMainHandler(Lcom/android/wm/shell/onehanded/OneHandedController;)Landroid/os/Handler;

    .line 4
    move-result-object p1

    .line 7
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedController$2$$ExternalSyntheticLambda0;

    .line 8
    invoke-direct {v0, p0, p2}, Lcom/android/wm/shell/onehanded/OneHandedController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/onehanded/OneHandedController$2;Z)V

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
    .line 16
.end method
