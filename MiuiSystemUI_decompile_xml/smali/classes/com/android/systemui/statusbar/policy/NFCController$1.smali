.class public final Lcom/android/systemui/statusbar/policy/NFCController$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/NFCController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NFCController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NFCController$1;->this$0:Lcom/android/systemui/statusbar/policy/NFCController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NFCController$1;->this$0:Lcom/android/systemui/statusbar/policy/NFCController;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NFCController;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 4
    if-nez v1, :cond_0

    .line 6
    :try_start_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NFCController;->mContext:Landroid/content/Context;

    .line 8
    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    .line 10
    move-result-object v1

    .line 13
    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/NFCController;->mAdapter:Landroid/nfc/NfcAdapter;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 16
    :catch_0
    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/NFCController;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 18
    :cond_0
    :goto_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NFCController;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 20
    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 24
    move-result v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NFCController$1;->this$0:Lcom/android/systemui/statusbar/policy/NFCController;

    .line 30
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NFCController;->mMainHandler:Landroid/os/Handler;

    .line 32
    new-instance v2, Lcom/android/systemui/statusbar/policy/NFCController$1$1;

    .line 34
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/policy/NFCController$1$1;-><init>(Lcom/android/systemui/statusbar/policy/NFCController$1;Z)V

    .line 36
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    return-void
    .line 42
.end method
