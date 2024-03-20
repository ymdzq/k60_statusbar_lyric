.class Lcom/android/settings/emergency/ui/SosExitAlertActivity$9;
.super Ljava/lang/Object;
.source "SosExitAlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/ui/SosExitAlertActivity;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/emergency/ui/SosExitAlertActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/emergency/ui/SosExitAlertActivity;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$9;->this$0:Lcom/android/settings/emergency/ui/SosExitAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 189
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.miui.securitycenter"

    const-string v1, "com.miui.earthquakewarning.ui.EarthquakeWarningEmergencyActivity"

    .line 190
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10008000

    .line 191
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 192
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity$9;->this$0:Lcom/android/settings/emergency/ui/SosExitAlertActivity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
