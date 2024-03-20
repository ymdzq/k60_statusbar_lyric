.class Lcom/android/settings/development/FiveGVonrConfigFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "FiveGVonrConfigFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/FiveGVonrConfigFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/FiveGVonrConfigFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/development/FiveGVonrConfigFragment;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/settings/development/FiveGVonrConfigFragment$2;->this$0:Lcom/android/settings/development/FiveGVonrConfigFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "ss"

    .line 67
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ABSENT"

    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/telephony/TelephonyManager;->hasIccCard()Z

    move-result p1

    if-nez p1, :cond_0

    .line 71
    iget-object p0, p0, Lcom/android/settings/development/FiveGVonrConfigFragment$2;->this$0:Lcom/android/settings/development/FiveGVonrConfigFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method
