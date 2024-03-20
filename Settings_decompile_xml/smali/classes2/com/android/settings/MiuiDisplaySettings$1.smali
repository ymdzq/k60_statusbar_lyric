.class Lcom/android/settings/MiuiDisplaySettings$1;
.super Landroid/database/ContentObserver;
.source "MiuiDisplaySettings.java"


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
.method constructor <init>(Lcom/android/settings/MiuiDisplaySettings;Landroid/os/Handler;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/android/settings/MiuiDisplaySettings$1;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/android/settings/MiuiDisplaySettings$1;->this$0:Lcom/android/settings/MiuiDisplaySettings;

    invoke-static {p0}, Lcom/android/settings/MiuiDisplaySettings;->-$$Nest$mupdateMonochromeMode(Lcom/android/settings/MiuiDisplaySettings;)V

    return-void
.end method
