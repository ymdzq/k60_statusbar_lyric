.class public final Lcom/android/systemui/controlcenter/policy/SecurityDialog$VpnSpan;
.super Landroid/text/style/ClickableSpan;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/SecurityDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/SecurityDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/SecurityDialog$VpnSpan;->this$0:Lcom/android/systemui/controlcenter/policy/SecurityDialog;

    .line 2
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/android/systemui/controlcenter/policy/SecurityDialog$VpnSpan;

    .line 2
    return p0
    .line 4
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    const p0, 0x12b9b099

    .line 2
    return p0
    .line 5
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    const-string v0, "android.settings.VPN_SETTINGS"

    .line 4
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/SecurityDialog$VpnSpan;->this$0:Lcom/android/systemui/controlcenter/policy/SecurityDialog;

    .line 9
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->dialog:Lmiuix/appcompat/app/AlertDialog;

    .line 11
    if-nez v0, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 15
    :cond_0
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 16
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/SecurityDialog$VpnSpan;->this$0:Lcom/android/systemui/controlcenter/policy/SecurityDialog;

    .line 19
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->activityStarter:Ldagger/Lazy;

    .line 21
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 26
    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 27
    const/4 v0, 0x0

    .line 29
    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 30
    return-void
    .line 33
.end method
