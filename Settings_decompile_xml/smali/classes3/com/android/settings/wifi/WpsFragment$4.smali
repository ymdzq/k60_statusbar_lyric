.class Lcom/android/settings/wifi/WpsFragment$4;
.super Landroid/content/BroadcastReceiver;
.source "WpsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WpsFragment;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WpsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsFragment;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/android/settings/wifi/WpsFragment$4;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/settings/wifi/WpsFragment$4;->this$0:Lcom/android/settings/wifi/WpsFragment;

    invoke-static {p0, p1, p2}, Lcom/android/settings/wifi/WpsFragment;->-$$Nest$mhandleEvent(Lcom/android/settings/wifi/WpsFragment;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
