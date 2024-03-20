.class Lcom/android/wm/shell/onehanded/OneHandedController$4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/onehanded/OneHandedController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$4;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onStartFinished(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$4;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 2
    invoke-static {p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmState(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedState;

    .line 4
    move-result-object p1

    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/onehanded/OneHandedState;->setState(I)V

    .line 9
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$4;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 12
    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->isOneHandedEnabled()Z

    .line 14
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$4;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 20
    invoke-static {p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmOneHandedSettingsUtil(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    .line 22
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$4;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 26
    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmContext(Lcom/android/wm/shell/onehanded/OneHandedController;)Landroid/content/Context;

    .line 28
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    move-result-object v0

    .line 35
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$4;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 36
    invoke-static {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmUserId(Lcom/android/wm/shell/onehanded/OneHandedController;)I

    .line 38
    move-result p0

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->setOneHandedModeEnabled(Landroid/content/ContentResolver;II)Z

    .line 43
    return-void

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$4;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 47
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->notifyShortcutStateChanged(I)V

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 52
    const-string v0, "onStartFinished: mState = "

    .line 54
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$4;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 59
    invoke-static {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmState(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedState;

    .line 61
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedState;->getState()I

    .line 65
    move-result p0

    .line 68
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 75
    const-string p1, "OneHandedController"

    .line 76
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
    .line 81
.end method

.method public onStopFinished(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$4;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 2
    invoke-static {p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmState(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedState;

    .line 4
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/onehanded/OneHandedState;->setState(I)V

    .line 9
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$4;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->notifyShortcutStateChanged(I)V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    const-string v0, "onStopFinished: mState = "

    .line 19
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$4;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 24
    invoke-static {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmState(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedState;

    .line 26
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedState;->getState()I

    .line 30
    move-result p0

    .line 33
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 40
    const-string p1, "OneHandedController"

    .line 41
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
    .line 46
.end method
