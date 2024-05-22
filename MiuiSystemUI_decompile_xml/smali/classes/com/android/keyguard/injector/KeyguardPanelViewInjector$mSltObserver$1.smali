.class public final Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mSltObserver$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/injector/KeyguardPanelViewInjector;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mSltObserver$1;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

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
    sget-object p1, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mSltObserver$1;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 4
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mContext:Landroid/content/Context;

    .line 6
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object p1

    .line 16
    const-string/jumbo v2, "satellite_state"

    .line 17
    const/4 v3, -0x1

    .line 20
    invoke-static {p1, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 21
    move-result p1

    .line 24
    if-ne p1, v0, :cond_1

    .line 25
    move p1, v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    move p1, v1

    .line 29
    :goto_1
    const-string v2, "face_unlcok_apply_for_lock"

    .line 30
    const-string v3, "face_unlcok_apply_for_lock_backup"

    .line 32
    if-eqz p1, :cond_6

    .line 34
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mSltObserver$1;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 36
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mContext:Landroid/content/Context;

    .line 38
    if-nez p0, :cond_2

    .line 40
    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    move-result-object p1

    .line 46
    invoke-static {p1, v2, v1, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 47
    move-result p1

    .line 50
    if-eqz p1, :cond_3

    .line 51
    move p1, v0

    .line 53
    goto :goto_3

    .line 54
    :cond_3
    :goto_2
    move p1, v1

    .line 55
    :goto_3
    if-eqz p1, :cond_c

    .line 56
    if-nez p0, :cond_4

    .line 58
    goto :goto_4

    .line 60
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 61
    move-result-object p1

    .line 64
    invoke-static {p1, v3, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 65
    :goto_4
    if-nez p0, :cond_5

    .line 68
    goto :goto_8

    .line 70
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 71
    move-result-object p0

    .line 74
    invoke-static {p0, v2, v1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 75
    goto :goto_8

    .line 78
    :cond_6
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mSltObserver$1;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 79
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mContext:Landroid/content/Context;

    .line 81
    if-nez p0, :cond_7

    .line 83
    goto :goto_5

    .line 85
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 86
    move-result-object p1

    .line 89
    invoke-static {p1, v3, v1, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 90
    move-result p1

    .line 93
    if-ne p1, v0, :cond_8

    .line 94
    move p1, v0

    .line 96
    goto :goto_6

    .line 97
    :cond_8
    :goto_5
    move p1, v1

    .line 98
    :goto_6
    if-eqz p1, :cond_c

    .line 99
    invoke-static {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->hasEnrolledTemplates(Landroid/content/Context;)Z

    .line 101
    move-result p1

    .line 104
    if-eqz p1, :cond_a

    .line 105
    if-nez p0, :cond_9

    .line 107
    goto :goto_7

    .line 109
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 110
    move-result-object p1

    .line 113
    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 114
    :cond_a
    :goto_7
    if-nez p0, :cond_b

    .line 117
    goto :goto_8

    .line 119
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 120
    move-result-object p0

    .line 123
    invoke-static {p0, v3, v1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 124
    :cond_c
    :goto_8
    return-void
    .line 127
.end method
