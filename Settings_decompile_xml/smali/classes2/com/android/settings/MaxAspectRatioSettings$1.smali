.class Lcom/android/settings/MaxAspectRatioSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "MaxAspectRatioSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MaxAspectRatioSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MaxAspectRatioSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MaxAspectRatioSettings;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/settings/MaxAspectRatioSettings$1;->this$0:Lcom/android/settings/MaxAspectRatioSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/settings/MaxAspectRatioSettings$1;->this$0:Lcom/android/settings/MaxAspectRatioSettings;

    invoke-static {p0}, Lcom/android/settings/MaxAspectRatioSettings;->-$$Nest$mloadPackages(Lcom/android/settings/MaxAspectRatioSettings;)V

    return-void
.end method
