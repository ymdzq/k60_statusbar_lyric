.class final Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$configCellularSharedSupport$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$configCellularSharedSupport$2;->this$0:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$configCellularSharedSupport$2;->this$0:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->context:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$configCellularSharedSupport$2;->this$0:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->context:Landroid/content/Context;

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object p0

    .line 17
    const-string v1, "config_celluar_shared_support"

    .line 18
    const-string v2, "bool"

    .line 20
    const-string v3, "android.miui"

    .line 22
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    move-result p0

    .line 27
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 28
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    const/4 p0, 0x0

    .line 33
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    move-result-object p0

    .line 37
    return-object p0
    .line 38
.end method
