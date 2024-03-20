.class Lcom/android/settings/display/PaperModeSetAppsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "PaperModeSetAppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/PaperModeSetAppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/PaperModeSetAppsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/PaperModeSetAppsFragment;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/settings/display/PaperModeSetAppsFragment$1;->this$0:Lcom/android/settings/display/PaperModeSetAppsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment$1;->this$0:Lcom/android/settings/display/PaperModeSetAppsFragment;

    invoke-static {p0}, Lcom/android/settings/display/PaperModeSetAppsFragment;->-$$Nest$mloadPackages(Lcom/android/settings/display/PaperModeSetAppsFragment;)V

    return-void
.end method
