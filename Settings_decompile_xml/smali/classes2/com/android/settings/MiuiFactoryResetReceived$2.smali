.class Lcom/android/settings/MiuiFactoryResetReceived$2;
.super Ljava/lang/Object;
.source "MiuiFactoryResetReceived.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiFactoryResetReceived;->displayAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiFactoryResetReceived;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiFactoryResetReceived;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/settings/MiuiFactoryResetReceived$2;->this$0:Lcom/android/settings/MiuiFactoryResetReceived;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p2, "MiuiFactoryResetR"

    const-string v0, "MiuiFactoryResetReceived called RecoverySystem"

    .line 105
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object p2, p0, Lcom/android/settings/MiuiFactoryResetReceived$2;->this$0:Lcom/android/settings/MiuiFactoryResetReceived;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/MiuiFactoryResetReceived$2;->this$0:Lcom/android/settings/MiuiFactoryResetReceived;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v0}, Lcom/android/settings/MiuiFactoryResetReceived;->-$$Nest$fputmLockPatternUtils(Lcom/android/settings/MiuiFactoryResetReceived;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 107
    iget-object p2, p0, Lcom/android/settings/MiuiFactoryResetReceived$2;->this$0:Lcom/android/settings/MiuiFactoryResetReceived;

    invoke-static {p2}, Lcom/android/settings/MiuiFactoryResetReceived;->-$$Nest$fgetmLockPatternUtils(Lcom/android/settings/MiuiFactoryResetReceived;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 108
    iget-object p0, p0, Lcom/android/settings/MiuiFactoryResetReceived$2;->this$0:Lcom/android/settings/MiuiFactoryResetReceived;

    invoke-static {p0}, Lcom/android/settings/MiuiFactoryResetReceived;->-$$Nest$malertCloseLockPattern(Lcom/android/settings/MiuiFactoryResetReceived;)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MiuiFactoryResetReceived$2;->this$0:Lcom/android/settings/MiuiFactoryResetReceived;

    invoke-static {p0}, Lcom/android/settings/MiuiFactoryResetReceived;->-$$Nest$mrunFindDeviceCheckAndDoMasterClean(Lcom/android/settings/MiuiFactoryResetReceived;)V

    .line 112
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
