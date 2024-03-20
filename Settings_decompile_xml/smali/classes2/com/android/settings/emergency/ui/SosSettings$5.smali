.class Lcom/android/settings/emergency/ui/SosSettings$5;
.super Ljava/lang/Object;
.source "SosSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/ui/SosSettings;->showEmergencyContactsGuidingDialog()V
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

    .line 371
    iput-object p1, p0, Lcom/android/settings/emergency/ui/SosSettings$5;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 374
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/settings/emergency/ui/SosSettings$5;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    invoke-static {p2}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$fgetmContext(Lcom/android/settings/emergency/ui/SosSettings;)Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "first_open"

    const/4 v0, 0x1

    .line 375
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 376
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings$5;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
