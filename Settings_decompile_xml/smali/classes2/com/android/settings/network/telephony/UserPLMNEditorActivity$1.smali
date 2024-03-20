.class Lcom/android/settings/network/telephony/UserPLMNEditorActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "UserPLMNEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/UserPLMNEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/UserPLMNEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/UserPLMNEditorActivity;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity$1;->this$0:Lcom/android/settings/network/telephony/UserPLMNEditorActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity$1;->this$0:Lcom/android/settings/network/telephony/UserPLMNEditorActivity;

    const-string/jumbo v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->-$$Nest$fputmAirplaneModeOn(Lcom/android/settings/network/telephony/UserPLMNEditorActivity;Z)V

    .line 111
    iget-object p0, p0, Lcom/android/settings/network/telephony/UserPLMNEditorActivity$1;->this$0:Lcom/android/settings/network/telephony/UserPLMNEditorActivity;

    invoke-static {p0}, Lcom/android/settings/network/telephony/UserPLMNEditorActivity;->-$$Nest$msetScreenEnabled(Lcom/android/settings/network/telephony/UserPLMNEditorActivity;)V

    :cond_0
    return-void
.end method
