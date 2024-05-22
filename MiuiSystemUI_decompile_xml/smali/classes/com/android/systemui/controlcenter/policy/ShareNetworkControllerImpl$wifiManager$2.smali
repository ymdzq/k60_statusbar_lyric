.class final Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$wifiManager$2;
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
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$wifiManager$2;->this$0:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

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
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$wifiManager$2;->this$0:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->context:Landroid/content/Context;

    .line 4
    const-string/jumbo v0, "wifi"

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 12
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 13
    return-object p0
    .line 15
.end method
