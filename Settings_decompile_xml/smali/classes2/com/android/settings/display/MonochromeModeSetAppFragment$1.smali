.class Lcom/android/settings/display/MonochromeModeSetAppFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "MonochromeModeSetAppFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/MonochromeModeSetAppFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/MonochromeModeSetAppFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/MonochromeModeSetAppFragment;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/settings/display/MonochromeModeSetAppFragment$1;->this$0:Lcom/android/settings/display/MonochromeModeSetAppFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/display/MonochromeModeSetAppFragment$1;->this$0:Lcom/android/settings/display/MonochromeModeSetAppFragment;

    invoke-static {p0}, Lcom/android/settings/display/MonochromeModeSetAppFragment;->-$$Nest$mloadPackages(Lcom/android/settings/display/MonochromeModeSetAppFragment;)V

    return-void
.end method
