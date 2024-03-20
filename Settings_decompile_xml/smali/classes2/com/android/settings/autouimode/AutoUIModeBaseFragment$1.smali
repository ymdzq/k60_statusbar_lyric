.class Lcom/android/settings/autouimode/AutoUIModeBaseFragment$1;
.super Landroid/os/Handler;
.source "AutoUIModeBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/autouimode/AutoUIModeBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;Landroid/os/Looper;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$1;->this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "isChecked"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 72
    iget-object v1, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$1;->this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;

    invoke-virtual {v1}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->getAutoUIController()Lcom/android/settings/special/AutoUIModeGuideController;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/special/AutoUIModeGuideController;->setSystemAutoUIApps(Ljava/lang/String;Z)V

    .line 73
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$1;->this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;

    invoke-static {p0, v0, p1}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->-$$Nest$msetSearchModification(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;Ljava/lang/String;Z)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "is_install"

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "package_name"

    .line 78
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_2

    .line 80
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$1;->this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;

    invoke-static {p0, p1}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->-$$Nest$mrefreshAppListInstalled(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_2
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$1;->this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;

    invoke-static {p0, p1}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->-$$Nest$mrefreshAppListRemoved(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
