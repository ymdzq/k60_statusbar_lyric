.class public final synthetic Lcom/android/systemui/statusbar/connectivity/MobileSignalController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/connectivity/MobileSignalController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mListening:Z

    .line 4
    if-nez v0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTag:Ljava/lang/String;

    .line 9
    const-string v1, "UpdateTelephony delay expired"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mDelayUpdateTelephony:Z

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->updateTelephony()V

    .line 19
    :goto_0
    return-void
    .line 22
.end method
