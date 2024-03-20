.class Lcom/android/settings/emergency/ui/SosLaunchingActivity$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SosLaunchingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/emergency/ui/SosLaunchingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isCancelled:Z

.field final synthetic this$0:Lcom/android/settings/emergency/ui/SosLaunchingActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/emergency/ui/SosLaunchingActivity;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity$5;->this$0:Lcom/android/settings/emergency/ui/SosLaunchingActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 144
    iput-boolean p1, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity$5;->isCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 149
    iget-boolean p1, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity$5;->isCancelled:Z

    if-eqz p1, :cond_0

    return-void

    .line 152
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "action_enter_sos_mode"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity$5;->this$0:Lcom/android/settings/emergency/ui/SosLaunchingActivity;

    const-class v1, Lcom/android/settings/emergency/service/LocationService;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 154
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity$5;->this$0:Lcom/android/settings/emergency/ui/SosLaunchingActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 156
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 157
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity$5;->this$0:Lcom/android/settings/emergency/ui/SosLaunchingActivity;

    const-class v1, Lcom/android/settings/emergency/ui/SosExitAlertActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 158
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity$5;->this$0:Lcom/android/settings/emergency/ui/SosLaunchingActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 160
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosLaunchingActivity$5;->this$0:Lcom/android/settings/emergency/ui/SosLaunchingActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
