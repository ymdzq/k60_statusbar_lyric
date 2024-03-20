.class Lcom/android/settings/emergency/ui/SosSettings$4;
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

    .line 379
    iput-object p1, p0, Lcom/android/settings/emergency/ui/SosSettings$4;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings$4;->this$0:Lcom/android/settings/emergency/ui/SosSettings;

    invoke-static {p0}, Lcom/android/settings/emergency/ui/SosSettings;->-$$Nest$fgetmSosEnablePref(Lcom/android/settings/emergency/ui/SosSettings;)Landroidx/preference/CheckBoxPreference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
