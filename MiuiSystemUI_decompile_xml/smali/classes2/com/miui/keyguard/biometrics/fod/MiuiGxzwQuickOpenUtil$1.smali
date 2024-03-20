.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil$1;->val$context:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil$1;->val$handler:Landroid/os/Handler;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil$1;->val$context:Landroid/content/Context;

    .line 2
    const-string v1, "quick_open"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    move-result-object v0

    .line 10
    const-string/jumbo v1, "sp_fod_show_quick_open_press_count"

    .line 11
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 14
    move-result v1

    .line 17
    const-string/jumbo v2, "sp_fod_show_quick_open_slide_time"

    .line 18
    const-wide/16 v3, 0x0

    .line 21
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 23
    move-result-wide v2

    .line 26
    const-string/jumbo v4, "sp_fod_show_quick_open_teach"

    .line 27
    const/4 v5, 0x1

    .line 30
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 31
    move-result v0

    .line 34
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil$1;->val$handler:Landroid/os/Handler;

    .line 35
    new-instance v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil$1$1;

    .line 37
    invoke-direct {v4, v1, v2, v3, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil$1$1;-><init>(IJI)V

    .line 39
    invoke-virtual {p0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    return-void
    .line 45
.end method
