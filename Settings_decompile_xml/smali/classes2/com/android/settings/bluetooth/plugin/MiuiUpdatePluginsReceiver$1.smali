.class Lcom/android/settings/bluetooth/plugin/MiuiUpdatePluginsReceiver$1;
.super Ljava/lang/Object;
.source "MiuiUpdatePluginsReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/plugin/MiuiUpdatePluginsReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/plugin/MiuiUpdatePluginsReceiver;

.field final synthetic val$_intent:Landroid/content/Intent;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/plugin/MiuiUpdatePluginsReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/android/settings/bluetooth/plugin/MiuiUpdatePluginsReceiver$1;->this$0:Lcom/android/settings/bluetooth/plugin/MiuiUpdatePluginsReceiver;

    iput-object p2, p0, Lcom/android/settings/bluetooth/plugin/MiuiUpdatePluginsReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/bluetooth/plugin/MiuiUpdatePluginsReceiver$1;->val$_intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/settings/bluetooth/plugin/MiuiUpdatePluginsReceiver$1;->this$0:Lcom/android/settings/bluetooth/plugin/MiuiUpdatePluginsReceiver;

    iget-object v1, p0, Lcom/android/settings/bluetooth/plugin/MiuiUpdatePluginsReceiver$1;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/bluetooth/plugin/MiuiUpdatePluginsReceiver$1;->val$_intent:Landroid/content/Intent;

    invoke-static {v0, v1, p0}, Lcom/android/settings/bluetooth/plugin/MiuiUpdatePluginsReceiver;->-$$Nest$mhandleUpdatePluginsBroadcast(Lcom/android/settings/bluetooth/plugin/MiuiUpdatePluginsReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
