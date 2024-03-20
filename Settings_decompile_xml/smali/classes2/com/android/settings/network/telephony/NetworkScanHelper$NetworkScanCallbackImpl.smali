.class final Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallbackImpl;
.super Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
.source "NetworkScanHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/NetworkScanHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetworkScanCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/NetworkScanHelper;


# direct methods
.method private constructor <init>(Lcom/android/settings/network/telephony/NetworkScanHelper;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallbackImpl;->this$0:Lcom/android/settings/network/telephony/NetworkScanHelper;

    invoke-direct {p0}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/network/telephony/NetworkScanHelper;Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallbackImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallbackImpl;-><init>(Lcom/android/settings/network/telephony/NetworkScanHelper;)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    const-string v0, "NetworkScanHelper"

    const-string v1, "async scan onComplete()"

    .line 313
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallbackImpl;->this$0:Lcom/android/settings/network/telephony/NetworkScanHelper;

    invoke-static {p0}, Lcom/android/settings/network/telephony/NetworkScanHelper;->-$$Nest$monComplete(Lcom/android/settings/network/telephony/NetworkScanHelper;)V

    return-void
.end method

.method public onError(I)V
    .locals 2

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "async scan onError() errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkScanHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallbackImpl;->this$0:Lcom/android/settings/network/telephony/NetworkScanHelper;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/NetworkScanHelper;->-$$Nest$monError(Lcom/android/settings/network/telephony/NetworkScanHelper;I)V

    return-void
.end method

.method public onResults(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Async scan onResults() results = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-static {p1}, Lcom/android/settings/network/telephony/CellInfoUtil;->cellInfoListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkScanHelper"

    .line 307
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallbackImpl;->this$0:Lcom/android/settings/network/telephony/NetworkScanHelper;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/NetworkScanHelper;->-$$Nest$monResults(Lcom/android/settings/network/telephony/NetworkScanHelper;Ljava/util/List;)V

    return-void
.end method
