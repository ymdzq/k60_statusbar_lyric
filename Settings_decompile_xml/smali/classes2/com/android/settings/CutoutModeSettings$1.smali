.class Lcom/android/settings/CutoutModeSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CutoutModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CutoutModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CutoutModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CutoutModeSettings;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/settings/CutoutModeSettings$1;->this$0:Lcom/android/settings/CutoutModeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/settings/CutoutModeSettings$1;->this$0:Lcom/android/settings/CutoutModeSettings;

    invoke-static {p0}, Lcom/android/settings/CutoutModeSettings;->-$$Nest$mloadPackages(Lcom/android/settings/CutoutModeSettings;)V

    return-void
.end method
