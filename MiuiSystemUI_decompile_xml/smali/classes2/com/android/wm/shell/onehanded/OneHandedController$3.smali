.class Lcom/android/wm/shell/onehanded/OneHandedController$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/onehanded/OneHandedController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$3;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$3;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

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
    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$3;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 13
    invoke-static {p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmOneHandedSettingsUtil(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    .line 15
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$3;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 19
    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmContext(Lcom/android/wm/shell/onehanded/OneHandedController;)Landroid/content/Context;

    .line 21
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$3;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 29
    invoke-static {v1}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmUserId(Lcom/android/wm/shell/onehanded/OneHandedController;)I

    .line 31
    move-result v1

    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeTimeout(Landroid/content/ContentResolver;I)I

    .line 35
    move-result p1

    .line 38
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$3;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 39
    invoke-static {v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmAccessibilityManager(Lcom/android/wm/shell/onehanded/OneHandedController;)Landroid/view/accessibility/AccessibilityManager;

    .line 41
    move-result-object v0

    .line 44
    mul-int/lit16 p1, p1, 0x3e8

    .line 45
    const/4 v1, 0x4

    .line 47
    invoke-virtual {v0, p1, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    .line 48
    move-result p1

    .line 51
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$3;->this$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 52
    invoke-static {p0}, Lcom/android/wm/shell/onehanded/OneHandedController;->-$$Nest$fgetmTimeoutHandler(Lcom/android/wm/shell/onehanded/OneHandedController;)Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    .line 54
    move-result-object p0

    .line 57
    div-int/lit16 p1, p1, 0x3e8

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->setTimeout(I)V

    .line 60
    :cond_1
    return-void
    .line 63
.end method
