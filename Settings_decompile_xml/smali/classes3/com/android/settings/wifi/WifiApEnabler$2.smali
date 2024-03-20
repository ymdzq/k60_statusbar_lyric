.class Lcom/android/settings/wifi/WifiApEnabler$2;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApEnabler;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler$2;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(II)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnabler$2;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-static {p0, p1, p2}, Lcom/android/settings/wifi/WifiApEnabler;->-$$Nest$mhandleWifiApStateChanged(Lcom/android/settings/wifi/WifiApEnabler;II)V

    return-void
.end method
