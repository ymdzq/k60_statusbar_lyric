.class Lcom/android/settings/network/ProxySubscriptionManager$1;
.super Lcom/android/settings/network/ActiveSubscriptionsListener;
.source "ProxySubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/ProxySubscriptionManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/ProxySubscriptionManager;


# direct methods
.method constructor <init>(Lcom/android/settings/network/ProxySubscriptionManager;Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/settings/network/ProxySubscriptionManager$1;->this$0:Lcom/android/settings/network/ProxySubscriptionManager;

    invoke-direct {p0, p2, p3}, Lcom/android/settings/network/ActiveSubscriptionsListener;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager$1;->this$0:Lcom/android/settings/network/ProxySubscriptionManager;

    invoke-virtual {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->notifySubscriptionInfoMightChanged()V

    return-void
.end method
