.class Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment$1;
.super Ljava/lang/Object;
.source "MiuiSecurityBluetoothSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 137
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment$1;->this$0:Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->-$$Nest$fgetmBuilder(Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    const/16 p2, 0x65

    invoke-virtual {p0, p2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->build()Lcom/android/settings/password/ChooseLockSettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launch()Z

    .line 139
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
