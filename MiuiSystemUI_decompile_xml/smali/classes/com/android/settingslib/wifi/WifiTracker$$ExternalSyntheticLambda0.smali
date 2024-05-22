.class public final synthetic Lcom/android/settingslib/wifi/WifiTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/wifi/AccessPoint;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/wifi/AccessPoint;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/wifi/AccessPoint;

    .line 2
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method
