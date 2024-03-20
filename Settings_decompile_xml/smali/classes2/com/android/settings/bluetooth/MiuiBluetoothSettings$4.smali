.class Lcom/android/settings/bluetooth/MiuiBluetoothSettings$4;
.super Ljava/lang/Object;
.source "MiuiBluetoothSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->setConnectHelpPreferenceVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

.field final synthetic val$isVisible:Z


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 656
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    iput-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$4;->val$isVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 660
    :try_start_0
    invoke-static {}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect help prefernce visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$4;->val$isVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    const-string v1, "bt_connect_help_flag"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 663
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$4;->val$isVisible:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 664
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$4;->val$isVisible:Z

    if-eqz v1, :cond_0

    .line 665
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$fgetmBtHelpClickListener(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Landroidx/preference/Preference$OnPreferenceClickListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 669
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
