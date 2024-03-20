.class Lcom/android/settings/emergency/ui/SosSettings$11;
.super Ljava/lang/Object;
.source "SosSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/ui/SosSettings;->showSosCloseDialog()V
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

    .line 437
    iput-object p1, p0, Lcom/android/settings/emergency/ui/SosSettings$11;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 440
    iget-object p1, p0, Lcom/android/settings/emergency/ui/SosSettings$11;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    invoke-static {p1}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$fgetmContext(Lcom/android/settings/emergency/ui/SosSettings;)Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/emergency/util/Config;->setSosEnable(Landroid/content/Context;Z)V

    .line 441
    iget-object p1, p0, Lcom/android/settings/emergency/ui/SosSettings$11;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    invoke-static {p1}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$fgetmSosEnablePref(Lcom/android/settings/emergency/ui/SosSettings;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 442
    iget-object p1, p0, Lcom/android/settings/emergency/ui/SosSettings$11;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    invoke-static {p1}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$fgetmContext(Lcom/android/settings/emergency/ui/SosSettings;)Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings$11;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    invoke-static {p0}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$fgetmContext(Lcom/android/settings/emergency/ui/SosSettings;)Landroid/content/Context;

    move-result-object p0

    const-class v0, Lcom/android/settings/emergency/service/LocationService;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method
