.class public final Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider$signalCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/connectivity/SignalCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider$signalCallback$1;->this$0:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final setSubs(Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider$signalCallback$1;->this$0:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->subscriptions:Ljava/util/Map;

    .line 4
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 6
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 24
    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 25
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->subscriptions:Ljava/util/Map;

    .line 27
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 29
    move-result v2

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v2

    .line 36
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    goto :goto_0

    .line 40
    :cond_0
    return-void
    .line 41
.end method
