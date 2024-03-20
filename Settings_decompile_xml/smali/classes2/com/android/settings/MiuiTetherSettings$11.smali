.class Lcom/android/settings/MiuiTetherSettings$11;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "MiuiTetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiTetherSettings;->startTethering(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiTetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiTetherSettings;)V
    .locals 0

    .line 1062
    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings$11;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 1

    .line 1070
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$11;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$System;->setRestartWifiApAfterConfigChange(Landroid/content/Context;Z)V

    return-void
.end method

.method public onTetheringStarted()V
    .locals 1

    .line 1065
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$11;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$System;->setRestartWifiApAfterConfigChange(Landroid/content/Context;Z)V

    return-void
.end method
