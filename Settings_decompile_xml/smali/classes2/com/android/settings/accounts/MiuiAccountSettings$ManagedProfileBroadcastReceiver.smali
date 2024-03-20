.class Lcom/android/settings/accounts/MiuiAccountSettings$ManagedProfileBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiAccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/MiuiAccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagedProfileBroadcastReceiver"
.end annotation


# instance fields
.field private listeningToManagedProfileEvents:Z

.field final synthetic this$0:Lcom/android/settings/accounts/MiuiAccountSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/accounts/MiuiAccountSettings;)V
    .locals 0

    .line 1136
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiAccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/MiuiAccountSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/accounts/MiuiAccountSettings;Lcom/android/settings/accounts/MiuiAccountSettings$ManagedProfileBroadcastReceiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/MiuiAccountSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings/accounts/MiuiAccountSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1141
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received broadcast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 1143
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 1144
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1159
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot handle received broadcast: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1146
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/accounts/MiuiAccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/MiuiAccountSettings;

    invoke-static {p1}, Lcom/android/settings/accounts/MiuiAccountSettings;->-$$Nest$mstopListeningToAccountUpdates(Lcom/android/settings/accounts/MiuiAccountSettings;)V

    .line 1147
    iget-object p1, p0, Lcom/android/settings/accounts/MiuiAccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/MiuiAccountSettings;

    invoke-static {p1}, Lcom/android/settings/accounts/MiuiAccountSettings;->-$$Nest$mcleanUpPreferences(Lcom/android/settings/accounts/MiuiAccountSettings;)V

    .line 1149
    iget-object p1, p0, Lcom/android/settings/accounts/MiuiAccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/MiuiAccountSettings;

    invoke-virtual {p1}, Lcom/android/settings/accounts/MiuiAccountSettings;->updateUi()V

    .line 1150
    iget-object p1, p0, Lcom/android/settings/accounts/MiuiAccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/MiuiAccountSettings;

    invoke-static {p1}, Lcom/android/settings/accounts/MiuiAccountSettings;->-$$Nest$mlistenToAccountUpdates(Lcom/android/settings/accounts/MiuiAccountSettings;)V

    .line 1154
    iget-object p1, p0, Lcom/android/settings/accounts/MiuiAccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/MiuiAccountSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1155
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiAccountSettings$ManagedProfileBroadcastReceiver;->this$0:Lcom/android/settings/accounts/MiuiAccountSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_2
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2

    .line 1163
    iget-boolean v0, p0, Lcom/android/settings/accounts/MiuiAccountSettings$ManagedProfileBroadcastReceiver;->listeningToManagedProfileEvents:Z

    if-nez v0, :cond_0

    .line 1164
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 1165
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 1166
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 1167
    invoke-virtual {p1, p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 1168
    iput-boolean p1, p0, Lcom/android/settings/accounts/MiuiAccountSettings$ManagedProfileBroadcastReceiver;->listeningToManagedProfileEvents:Z

    :cond_0
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1

    .line 1173
    iget-boolean v0, p0, Lcom/android/settings/accounts/MiuiAccountSettings$ManagedProfileBroadcastReceiver;->listeningToManagedProfileEvents:Z

    if-eqz v0, :cond_0

    .line 1174
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 1175
    iput-boolean p1, p0, Lcom/android/settings/accounts/MiuiAccountSettings$ManagedProfileBroadcastReceiver;->listeningToManagedProfileEvents:Z

    :cond_0
    return-void
.end method
