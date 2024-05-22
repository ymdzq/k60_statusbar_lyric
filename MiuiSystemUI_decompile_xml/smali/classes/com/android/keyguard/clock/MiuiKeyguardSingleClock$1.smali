.class public final Lcom/android/keyguard/clock/MiuiKeyguardSingleClock$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock$1;->this$0:Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock$1;->this$0:Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;

    .line 5
    iget-object v0, p1, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock$1;->this$0:Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;

    .line 13
    iget v1, v1, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mUserId:I

    .line 15
    const-string/jumbo v2, "show_lunar_calendar"

    .line 17
    const/4 v3, 0x0

    .line 20
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 21
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    move v3, v1

    .line 28
    :cond_0
    iput-boolean v3, p1, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mShowLunarCalendar:Z

    .line 29
    iget-object p0, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock$1;->this$0:Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;

    .line 31
    invoke-virtual {p0}, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->updateLunarCalendarInfo()V

    .line 33
    return-void
    .line 36
.end method
