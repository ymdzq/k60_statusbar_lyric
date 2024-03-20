.class public final Lcom/android/keyguard/clock/DisplayExtClockContainerController$residentTimezoneObserver$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/clock/DisplayExtClockContainerController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/clock/DisplayExtClockContainerController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/clock/DisplayExtClockContainerController$residentTimezoneObserver$1;->this$0:Lcom/android/keyguard/clock/DisplayExtClockContainerController;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/clock/DisplayExtClockContainerController$residentTimezoneObserver$1;->this$0:Lcom/android/keyguard/clock/DisplayExtClockContainerController;

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object p1

    .line 14
    const-string/jumbo v0, "resident_timezone"

    .line 15
    iget v1, p0, Lcom/android/keyguard/clock/DisplayExtClockContainerController;->userId:I

    .line 18
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/android/keyguard/clock/DisplayExtClockContainerController;->residentTimezone:Ljava/lang/String;

    .line 24
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 26
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    iput-object p1, p0, Lcom/android/keyguard/clock/DisplayExtClockContainerController;->residentTimezone:Ljava/lang/String;

    .line 32
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 34
    check-cast p0, Lcom/android/keyguard/clock/DisplayExtClockContainer;

    .line 36
    if-eqz p0, :cond_0

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/DisplayExtClockContainer;->setResidentTimeZone(Ljava/lang/String;)V

    .line 40
    :cond_0
    return-void
    .line 43
.end method
