.class Lcom/android/settings/SettingsFragment$SearchHandler$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsFragment$SearchHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SettingsFragment$SearchHandler;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsFragment$SearchHandler;)V
    .locals 0

    .line 1114
    iput-object p1, p0, Lcom/android/settings/SettingsFragment$SearchHandler$1;->this$1:Lcom/android/settings/SettingsFragment$SearchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1117
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchHandler$1;->this$1:Lcom/android/settings/SettingsFragment$SearchHandler;

    iget-object v0, v0, Lcom/android/settings/SettingsFragment$SearchHandler;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmIsInActionMode(Lcom/android/settings/SettingsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1118
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$SearchHandler$1;->this$1:Lcom/android/settings/SettingsFragment$SearchHandler;

    iget-object p0, p0, Lcom/android/settings/SettingsFragment$SearchHandler;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchLoadingView(Lcom/android/settings/SettingsFragment;)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
