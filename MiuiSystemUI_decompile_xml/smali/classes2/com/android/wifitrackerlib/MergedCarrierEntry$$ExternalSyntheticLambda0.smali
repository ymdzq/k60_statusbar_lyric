.class public final synthetic Lcom/android/wifitrackerlib/MergedCarrierEntry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/MergedCarrierEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/MergedCarrierEntry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wifitrackerlib/MergedCarrierEntry$$ExternalSyntheticLambda0;->f$0:Lcom/android/wifitrackerlib/MergedCarrierEntry;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wifitrackerlib/MergedCarrierEntry$$ExternalSyntheticLambda0;->f$0:Lcom/android/wifitrackerlib/MergedCarrierEntry;

    .line 2
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 8
    invoke-interface {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;->onConnectResult(I)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method
