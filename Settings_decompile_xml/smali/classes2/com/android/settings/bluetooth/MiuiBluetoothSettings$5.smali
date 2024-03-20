.class Lcom/android/settings/bluetooth/MiuiBluetoothSettings$5;
.super Ljava/lang/Object;
.source "MiuiBluetoothSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiBluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 777
    :try_start_0
    move-object p1, p2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$fgetmInfoHandler(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Lcom/android/settings/bluetooth/MiuiBluetoothSettings$HeadsetInfoHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 778
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    if-nez p1, :cond_0

    .line 779
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$fgetmInfoHandler(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Lcom/android/settings/bluetooth/MiuiBluetoothSettings$HeadsetInfoHandler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 782
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 785
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 786
    invoke-static {}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RecycleView is computing layout, SKIP!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$fgetmRunnable(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 788
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$fputmBtEnablePrefDelayTag(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Z)V

    .line 789
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$fgetmRunnable(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v2, 0x320

    invoke-virtual {p1, p0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return v1

    .line 793
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$fgetmBtEnablePrefDelayTag(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 794
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$fgetmRunnable(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 795
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {p1, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$fputmBtEnablePrefDelayTag(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Z)V

    .line 797
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->checkedChanged(Z)V

    .line 798
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$5;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {p0, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$mupdateDeviceNamePreferenceStatus(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Z)V

    return v0
.end method
