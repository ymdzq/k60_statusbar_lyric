.class Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$ScanClick;
.super Ljava/lang/Object;
.source "MiuiAuracastQcomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScanClick"
.end annotation


# instance fields
.field mFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)V
    .locals 1

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 743
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$ScanClick;->mFragment:Ljava/lang/ref/WeakReference;

    .line 745
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$ScanClick;->mFragment:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "MiuiAuracastQcomFragment"

    .line 751
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refresh icon clicked and restart start scanning! mIsScanning = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$ScanClick;->mFragment:Ljava/lang/ref/WeakReference;

    .line 752
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetmIsScanning(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 751
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$ScanClick;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetmIsScanning(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 754
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$ScanClick;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetbcProfile(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Lcom/android/settingslib/bluetooth/BCProfile;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$ScanClick;->mFragment:Ljava/lang/ref/WeakReference;

    .line 755
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetbcProfile(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Lcom/android/settingslib/bluetooth/BCProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/BCProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "No connected bass devices"

    .line 756
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$ScanClick;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Landroid/app/Activity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->auracast_scan_not_support:I

    invoke-static {p0, p1, v1}, Lcom/android/settings/bluetooth/ToastUtil;->show(Landroid/content/Context;II)V

    return-void

    .line 761
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$ScanClick;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p1, v1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fputmIsScanning(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Z)V

    .line 762
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$ScanClick;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetmFoundBleAudioSourceCategory(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Landroidx/preference/PreferenceGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 763
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$ScanClick;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetmDevicePreferenceMap(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 764
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$ScanClick;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$fgetmDeviceScanResultMap(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 765
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$ScanClick;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$menableScanning(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)V

    goto :goto_0

    .line 767
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$ScanClick;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->-$$Nest$mdisableScanning(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 770
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
