.class Lcom/android/settings/datetime/DateTimeSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datetime/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/datetime/DateTimeSettings;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/android/settings/datetime/DateTimeSettings$1;->this$0:Lcom/android/settings/datetime/DateTimeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 207
    iget-object p1, p0, Lcom/android/settings/datetime/DateTimeSettings$1;->this$0:Lcom/android/settings/datetime/DateTimeSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 209
    iget-object p0, p0, Lcom/android/settings/datetime/DateTimeSettings$1;->this$0:Lcom/android/settings/datetime/DateTimeSettings;

    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
