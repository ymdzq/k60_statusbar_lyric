.class Lcom/android/settings/emergency/ui/SosSettings$7;
.super Ljava/lang/Object;
.source "SosSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/ui/SosSettings;->showCallingEnableDialog()V
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

    .line 393
    iput-object p1, p0, Lcom/android/settings/emergency/ui/SosSettings$7;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 396
    iget-object p1, p0, Lcom/android/settings/emergency/ui/SosSettings$7;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    invoke-static {p1}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$fgetmContext(Lcom/android/settings/emergency/ui/SosSettings;)Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/emergency/util/Config;->setSosCallingConfirmed(Landroid/content/Context;Z)V

    .line 397
    iget-object p1, p0, Lcom/android/settings/emergency/ui/SosSettings$7;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    invoke-static {p1}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$fgetmContext(Lcom/android/settings/emergency/ui/SosSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/settings/emergency/util/Config;->setSosCallingEnable(Landroid/content/Context;Z)V

    .line 398
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings$7;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    invoke-static {p0}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$fgetmSosCallingPref(Lcom/android/settings/emergency/ui/SosSettings;)Landroidx/preference/CheckBoxPreference;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
