.class Lcom/android/settings/emergency/ui/SosSettings$15;
.super Ljava/lang/Object;
.source "SosSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/ui/SosSettings;->showPrivacyRevockeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/emergency/ui/SosSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/emergency/ui/SosSettings;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/android/settings/emergency/ui/SosSettings$15;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 525
    iget-object p1, p0, Lcom/android/settings/emergency/ui/SosSettings$15;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    invoke-static {p1}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$fgetmCountdownTimer(Lcom/android/settings/emergency/ui/SosSettings;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 526
    iget-object p1, p0, Lcom/android/settings/emergency/ui/SosSettings$15;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    invoke-static {p1}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$fgetmCountdownTimer(Lcom/android/settings/emergency/ui/SosSettings;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 527
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings$15;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$fputmCountdownTimer(Lcom/android/settings/emergency/ui/SosSettings;Landroid/os/CountDownTimer;)V

    :cond_0
    return-void
.end method
