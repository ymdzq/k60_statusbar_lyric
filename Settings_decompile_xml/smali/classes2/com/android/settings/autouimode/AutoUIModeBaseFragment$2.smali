.class Lcom/android/settings/autouimode/AutoUIModeBaseFragment$2;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$2;->this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_3

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 101
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 102
    iget-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$2;->this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;

    invoke-static {v0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 103
    iput v1, v0, Landroid/os/Message;->what:I

    .line 104
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "package_name"

    .line 105
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v3, "is_install"

    if-eqz p1, :cond_2

    .line 108
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    iget-object p1, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$2;->this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;

    invoke-static {p1}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 112
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$2;->this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;

    invoke-static {p0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_0
    return-void
.end method
