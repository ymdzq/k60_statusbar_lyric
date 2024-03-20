.class Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator$NetworkConnectivityChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SouthKoreaOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkConnectivityChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator$NetworkConnectivityChangedReceiver;->this$0:Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator$NetworkConnectivityChangedReceiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator$NetworkConnectivityChangedReceiver;-><init>(Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "networkInfo"

    .line 197
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 199
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    .line 200
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    .line 201
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_1

    const/16 p1, 0x12

    if-ge p2, p1, :cond_1

    if-nez p2, :cond_0

    .line 202
    iget-object p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator$NetworkConnectivityChangedReceiver;->this$0:Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;

    invoke-static {p1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->-$$Nest$fgetlastType(Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 203
    iget-object p1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator$NetworkConnectivityChangedReceiver;->this$0:Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;

    invoke-static {p1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->-$$Nest$fgetmContext(Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;)Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->switchNetworkToast:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 204
    iget-object v1, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator$NetworkConnectivityChangedReceiver;->this$0:Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;

    invoke-static {v1}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->-$$Nest$fgetmContext(Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 206
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator$NetworkConnectivityChangedReceiver;->this$0:Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;

    invoke-static {p0, p2}, Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;->-$$Nest$fputlastType(Lcom/android/settings/wifi/operatorutils/operatorutilsimpl/SouthKoreaOperator;I)V

    :cond_1
    return-void
.end method
