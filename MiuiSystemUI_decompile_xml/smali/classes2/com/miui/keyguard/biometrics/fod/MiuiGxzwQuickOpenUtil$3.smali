.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$time:J


# direct methods
.method public constructor <init>(JLandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil$3;->val$context:Landroid/content/Context;

    .line 2
    iput-wide p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil$3;->val$time:J

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil$3;->val$context:Landroid/content/Context;

    .line 2
    const-string v1, "quick_open"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    move-result-object v0

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 11
    move-result-object v0

    .line 14
    const-string/jumbo v1, "sp_fod_show_quick_open_slide_time"

    .line 15
    iget-wide v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil$3;->val$time:J

    .line 18
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 23
    return-void
    .line 26
.end method
