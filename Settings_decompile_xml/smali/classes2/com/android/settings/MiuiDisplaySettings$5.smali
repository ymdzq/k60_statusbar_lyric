.class Lcom/android/settings/MiuiDisplaySettings$5;
.super Ljava/lang/Object;
.source "MiuiDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiDisplaySettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiDisplaySettings;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings$5;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/android/settings/MiuiDisplaySettings$5;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmContext(Lcom/android/settings/MiuiDisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/utils/SettingsFeatures;->checkGlobalFontSettingEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fputmIsFontSettingEnable(Lcom/android/settings/MiuiDisplaySettings;Z)V

    .line 391
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings$5;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {p0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$fgetmHandler(Lcom/android/settings/MiuiDisplaySettings;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
