.class Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "AutoDisableScreenButtonsAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$3;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$3;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {p0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$mloadPackages(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)V

    return-void
.end method
