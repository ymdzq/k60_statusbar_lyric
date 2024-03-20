.class Lcom/android/settings/development/NrcaMDBSwitchView$1;
.super Ljava/lang/Object;
.source "NrcaMDBSwitchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/NrcaMDBSwitchView;->updateNrcaButtonUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/NrcaMDBSwitchView;


# direct methods
.method constructor <init>(Lcom/android/settings/development/NrcaMDBSwitchView;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/settings/development/NrcaMDBSwitchView$1;->this$0:Lcom/android/settings/development/NrcaMDBSwitchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 87
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/settings/development/NrcaMDBSwitchView$1;->this$0:Lcom/android/settings/development/NrcaMDBSwitchView;

    invoke-static {v1, v0}, Lcom/android/settings/development/NrcaMDBSwitchView;->-$$Nest$mshouldEnableNrcaSwitch(Lcom/android/settings/development/NrcaMDBSwitchView;I)Z

    move-result v1

    .line 90
    iget-object v2, p0, Lcom/android/settings/development/NrcaMDBSwitchView$1;->this$0:Lcom/android/settings/development/NrcaMDBSwitchView;

    invoke-static {v2, v0}, Lcom/android/settings/development/NrcaMDBSwitchView;->-$$Nest$misNrCAEnabled(Lcom/android/settings/development/NrcaMDBSwitchView;I)Z

    move-result v0

    .line 91
    iget-object v2, p0, Lcom/android/settings/development/NrcaMDBSwitchView$1;->this$0:Lcom/android/settings/development/NrcaMDBSwitchView;

    invoke-static {v2}, Lcom/android/settings/development/NrcaMDBSwitchView;->-$$Nest$fgetmHandler(Lcom/android/settings/development/NrcaMDBSwitchView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/settings/development/NrcaMDBSwitchView$1$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/settings/development/NrcaMDBSwitchView$1$1;-><init>(Lcom/android/settings/development/NrcaMDBSwitchView$1;ZZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
