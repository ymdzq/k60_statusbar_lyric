.class final Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$sharenetwork$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$sharenetwork$2;->this$0:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

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
    .locals 2

    .line 1
    new-instance v0, Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$sharenetwork$2;->this$0:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->context:Landroid/content/Context;

    .line 6
    invoke-direct {v0, v1, p0}, Lcom/android/bluetooth/ble/app/ShareNetwork;-><init>(Landroid/content/Context;Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;)V

    .line 8
    return-object v0
    .line 11
.end method
