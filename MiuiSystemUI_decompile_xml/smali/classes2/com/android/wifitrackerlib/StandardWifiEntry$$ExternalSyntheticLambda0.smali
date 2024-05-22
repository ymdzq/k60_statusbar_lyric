.class public final synthetic Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda0;->f$0:I

    .line 5
    iput p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda0;->f$0:I

    .line 2
    iget p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    check-cast p1, Landroid/net/wifi/ScanResult;

    .line 6
    iget p1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    .line 8
    if-lt p1, v0, :cond_0

    .line 10
    if-gt p1, p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method
