.class Lcom/android/settings/bluetooth/BluetoothBlacklistFragment$1;
.super Ljava/lang/Object;
.source "BluetoothBlacklistFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$mSpf:Landroid/content/SharedPreferences;

.field final synthetic val$preference:Landroidx/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;Landroid/content/SharedPreferences;Ljava/lang/String;Landroidx/preference/Preference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment$1;->val$mSpf:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment$1;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment$1;->val$preference:Landroidx/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 112
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment$1;->val$mSpf:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 113
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment$1;->val$key:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 115
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mDeviceListGroup:Landroidx/preference/PreferenceGroup;

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment$1;->val$preference:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 116
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->mDeviceListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 117
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;->-$$Nest$mrefresh(Lcom/android/settings/bluetooth/BluetoothBlacklistFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    const-string p1, "BluetoothBlacklistFragment"

    const-string p2, "error when readyInfo"

    .line 121
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
