.class Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment$1;
.super Ljava/lang/Object;
.source "WifiPrioritySettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->calculateInitPriority(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/net/wifi/WifiConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment$1;->this$0:Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment$1;->this$0:Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;

    invoke-static {p0, p1, p2}, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;->-$$Nest$mformerHasHigherPriority(Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 113
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    check-cast p2, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/WifiPrioritySettings$WifiPriorityFragment$1;->compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result p0

    return p0
.end method
